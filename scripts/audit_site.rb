#!/usr/bin/env ruby

require "bundler/setup"
require "nokogiri"
require "pathname"
require "uri"
require "yaml"

site_root = Pathname(ARGV.fetch(0, "_site")).expand_path
source_root = Pathname(__dir__).parent.expand_path
errors = []
external_links = 0
checked_links = 0
checked_images = 0

abort "Built site not found: #{site_root}" unless site_root.directory?

def load_data(source_root, name)
  YAML.safe_load_file(source_root.join("_data", name), aliases: true)
end

def local_target(site_root, html_file, raw_path)
  path = URI::DEFAULT_PARSER.unescape(raw_path.to_s.split(/[?#]/, 2).first)
  return nil if path.empty?

  candidate = if path.start_with?("/")
                site_root.join(path.delete_prefix("/"))
              else
                html_file.dirname.join(path)
              end

  candidates = [candidate]
  candidates << candidate.join("index.html") if path.end_with?("/") || candidate.extname.empty?
  candidates << Pathname("#{candidate}.html") if candidate.extname.empty?
  candidates.find(&:file?)
end

def local_reference?(value)
  return false if value.nil? || value.empty? || value.start_with?("//")

  scheme = URI.parse(value).scheme
  scheme.nil?
rescue URI::InvalidURIError
  true
end

html_files = site_root.glob("**/*.html")

html_files.each do |html_file|
  document = Nokogiri::HTML5(html_file.read)
  page_name = html_file.relative_path_from(site_root).to_s

  ids = document.css("[id]").map { |node| node["id"] }.reject(&:empty?)
  ids.tally.each do |id, count|
    errors << "#{page_name}: duplicate id ##{id}" if count > 1
  end

  document.css("img").each do |image|
    checked_images += 1
    alt = image["alt"]
    decorative = image["aria-hidden"] == "true" || image["role"] == "presentation"
    errors << "#{page_name}: image is missing meaningful alt text (#{image['src']})" if !decorative && (alt.nil? || alt.strip.empty?)

    src = image["src"]
    next unless local_reference?(src)

    errors << "#{page_name}: missing image #{src}" unless local_target(site_root, html_file, src)
  end

  document.css("a[href]").each do |link|
    href = link["href"]
    if !local_reference?(href)
      external_links += 1
      next
    end

    checked_links += 1
    path, fragment = href.split("#", 2)
    target_file = path.nil? || path.empty? ? html_file : local_target(site_root, html_file, path)

    unless target_file
      errors << "#{page_name}: missing local link #{href}"
      next
    end

    next if fragment.nil? || fragment.empty? || target_file.extname.downcase != ".html"

    target_document = target_file == html_file ? document : Nokogiri::HTML5(target_file.read)
    decoded_fragment = URI::DEFAULT_PARSER.unescape(fragment)
    unless target_document.css("[id]").any? { |node| node["id"] == decoded_fragment }
      errors << "#{page_name}: missing anchor #{href}"
    end
  end
end

people = load_data(source_root, "people.yml")
funding = load_data(source_root, "funded_projects.yml")
updates = load_data(source_root, "updates.yml")
home = load_data(source_root, "home.yml")

{
  "people.yml" => people,
  "funded_projects.yml" => funding,
  "updates.yml" => updates,
  "home.yml" => home
}.each do |name, data|
  errors << "_data/#{name}: last_verified is required" if data["last_verified"].to_s.empty?
end

people.fetch("sections", []).each do |section|
  errors << "people.yml: section id/title is required" if section["id"].to_s.empty? || section["title"].to_s.empty?
  section.fetch("people", []).each do |person|
    profile_fields = %w[role affiliation interests description]
    profile_has_detail = profile_fields.any? { |field| !person[field].to_s.empty? }
    errors << "people.yml: name and profile detail are required" if person["name"].to_s.empty? || !profile_has_detail

    person.fetch("links", []).each do |link|
      errors << "people.yml: link label and url are required for #{person['name']}" if link["label"].to_s.empty? || link["url"].to_s.empty?
    end
    next if person["image"].to_s.empty?

    image_path = source_root.join(person["image"].delete_prefix("/"))
    errors << "people.yml: missing portrait #{person['image']}" unless image_path.file?
  end
end

funding.fetch("sections", []).each do |section|
  section.fetch("projects", []).each do |project|
    %w[meta title summary].each do |field|
      errors << "funded_projects.yml: #{field} is required for #{project['title'] || 'project'}" if project[field].to_s.empty?
    end
  end
end

updates.fetch("items", []).each do |item|
  %w[year kind date title summary].each do |field|
    errors << "updates.yml: #{field} is required for #{item['title'] || 'update'}" if item[field].to_s.empty?
  end
end

home.fetch("themes", []).each do |theme|
  %w[id number name summary].each do |field|
    errors << "home.yml: #{field} is required for #{theme['name'] || 'theme'}" if theme[field].to_s.empty?
  end
end

puts "Audited #{html_files.length} HTML pages, #{checked_images} images, #{checked_links} local links, and #{external_links} external links."

if errors.any?
  warn "Site audit found #{errors.length} issue#{errors.length == 1 ? '' : 's'}:"
  errors.each { |error| warn "  - #{error}" }
  exit 1
end

puts "Site audit passed."
