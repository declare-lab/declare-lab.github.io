---
layout: single
title: "Publications"
permalink: /publications/
author_profile: false
related: false
toc: false
classes: wide
---

{% assign lab_pubs = site.data.publications | where_exp: "pub", "pub.year >= 2019" %}
{% assign sorted_pubs = lab_pubs | sort: "year" | reverse %}
{% assign grouped = sorted_pubs | group_by: "year" %}

<section class="page-lead page-lead--compact">
  <p>Search DeCLaRe publications from 2019 onward by title, author, topic, citation status, or PDF availability. Publication links remain visible while abstracts expand in place.</p>
  <span class="data-verification">Citation metadata is periodically verified against Google Scholar</span>
</section>

<div class="pub-layout">
  <div class="pub-layout__main">
    <section class="pub-toolbar" aria-label="Publication filters">
      <input type="text" class="pub-search" id="pubSearch" placeholder="Search by title, author, venue, category, or abstract">
      <div class="pub-toolbar__row">
        <div class="pub-filter-row">
          <button class="pub-filter active" type="button" data-filter="all" onclick="setPubFilter('all', this)">All</button>
          <button class="pub-filter" type="button" data-filter="hot" onclick="setPubFilter('hot', this)">Highly cited ★</button>
          <button class="pub-filter" type="button" data-filter="pdf" onclick="setPubFilter('pdf', this)">Has PDF</button>
        </div>
        <span id="pubCount" class="pub-count-display">{{ lab_pubs | size }} papers since 2019</span>
      </div>
      <div class="pub-cat-row" id="categoryButtons"></div>
    </section>

    {% for group in grouped %}
    <h2 class="pub-year-heading" id="pub-year-{{ group.name }}" data-section-label="YEAR">{{ group.name }}</h2>

    {% for pub in group.items %}
    {% assign category_string = pub.categories | join: "," %}
    {% assign searchable = pub.title | append: " " | append: pub.authors | append: " " | append: pub.venue | append: " " | append: pub.year | append: " " | append: pub.abstract | append: " " | append: category_string | downcase %}
    <article class="pub-card" data-year="{{ pub.year }}" data-categories="{{ category_string | escape }}" data-has-pdf="{% if pub.pdf %}true{% else %}false{% endif %}" data-hot="{% if pub.citation_count and pub.citation_count > 50 %}true{% else %}false{% endif %}" data-searchable="{{ searchable | escape }}">
      <div class="pub-card__top">
        <div>
          <div class="pub-title-line">
            <h3 class="pub-title">{{ pub.title }}</h3>
            {% if pub.citation_count and pub.citation_count > 50 %}
            <span class="pub-hot-star" title="{{ pub.citation_count }} Google Scholar citations" aria-label="Highly cited, {{ pub.citation_count }} Google Scholar citations">★</span>
            {% endif %}
          </div>
          <p class="pub-authors">
            {% assign author_list = pub.authors | split: ", " %}
            {% for author in author_list %}
              {% assign author_lower = author | downcase %}
              {% if author_lower contains "poria" %}
              <strong>{{ author }}</strong>{% unless forloop.last %}, {% endunless %}
              {% else %}
              {{ author }}{% unless forloop.last %}, {% endunless %}
              {% endif %}
            {% endfor %}
          </p>
        </div>
        <div class="pub-links" aria-label="Publication links">
          {% if pub.abstract %}
          <button class="pub-abstract-toggle" type="button" onclick="toggleAbstract('abs-{{ group.name }}-{{ forloop.index }}')">Abstract</button>
          {% endif %}
          {% if pub.pdf %}<a href="{{ pub.pdf }}" target="_blank" rel="noopener">PDF</a>{% endif %}
          {% if pub.publication_url %}<a class="pub-link-primary" href="{{ pub.publication_url }}" target="_blank" rel="noopener">Publication</a>{% endif %}
          {% if pub.code %}<a href="{{ pub.code }}" target="_blank" rel="noopener">Code</a>{% endif %}
          {% if pub.project %}<a href="{{ pub.project }}" target="_blank" rel="noopener">Project</a>{% endif %}
          {% if pub.scholar_url %}
          <a href="{{ pub.scholar_url }}" target="_blank" rel="noopener">Scholar</a>
          {% else %}
          <a href="https://scholar.google.com/scholar?q={{ pub.title | url_encode }}" target="_blank" rel="noopener">Scholar</a>
          {% endif %}
        </div>
      </div>
      <div class="pub-meta">
        {% if pub.venue %}<span class="pub-venue">{{ pub.venue }}</span>{% endif %}
        <span class="pub-year-tag">{{ pub.year }}</span>
        {% if pub.citation_count and pub.citation_count > 50 %}<span class="pub-citation-badge">{{ pub.citation_count }} citations</span>{% endif %}
        {% if pub.award %}<span class="pub-award">{{ pub.award }}</span>{% endif %}
      </div>
      {% if pub.categories %}
      <div class="pub-cats">
        {% for category in pub.categories %}
        <button class="pub-cat-badge" type="button" onclick="toggleCatFilter('{{ category | escape }}')">{{ category }}</button>
        {% endfor %}
      </div>
      {% endif %}
      {% if pub.abstract %}
      <div class="pub-abstract" id="abs-{{ group.name }}-{{ forloop.index }}">
        {{ pub.abstract }}
      </div>
      {% endif %}
    </article>
    {% endfor %}
    {% endfor %}
  </div>

  <aside class="pub-year-nav" aria-label="Publication years">
    <span>Years</span>
    <div>
      {% for group in grouped %}
      <a href="#pub-year-{{ group.name }}">{{ group.name }}</a>
      {% endfor %}
    </div>
  </aside>
</div>

<script>
  var activeCategories = new Set();

  function toggleAbstract(id) {
    var el = document.getElementById(id);
    if (el) el.classList.toggle("show");
  }

  function normalize(value) {
    return (value || "").toLowerCase();
  }

  function filterPubs() {
    var search = document.getElementById("pubSearch");
    var query = normalize(search ? search.value : "");
    var filter = document.body.getAttribute("data-pub-filter") || "all";
    var cards = Array.prototype.slice.call(document.querySelectorAll(".pub-card"));
    var headings = Array.prototype.slice.call(document.querySelectorAll(".pub-year-heading"));
    var visibleCount = 0;

    cards.forEach(function (card) {
      var matchesQuery = !query || normalize(card.getAttribute("data-searchable")).indexOf(query) !== -1;
      var matchesFilter = filter === "all";

      if (filter === "pdf") {
        matchesFilter = card.getAttribute("data-has-pdf") === "true";
      }

      if (filter === "hot") {
        matchesFilter = card.getAttribute("data-hot") === "true";
      }

      if (activeCategories.size > 0) {
        var cardCategories = (card.getAttribute("data-categories") || "").split(",").map(function (cat) {
          return normalize(cat.trim());
        });
        matchesFilter = true;
        activeCategories.forEach(function (activeCategory) {
          if (cardCategories.indexOf(normalize(activeCategory)) === -1) matchesFilter = false;
        });
      }

      var shouldShow = matchesQuery && matchesFilter;
      card.hidden = !shouldShow;
      if (shouldShow) visibleCount += 1;
    });

    headings.forEach(function (heading) {
      var next = heading.nextElementSibling;
      var hasVisiblePaper = false;
      while (next && !next.classList.contains("pub-year-heading")) {
        if (next.classList && next.classList.contains("pub-card") && !next.hidden) hasVisiblePaper = true;
        next = next.nextElementSibling;
      }
      heading.hidden = !hasVisiblePaper;
    });

    var count = document.getElementById("pubCount");
    if (count) count.textContent = visibleCount + " papers";
  }

  function setPubFilter(filter, button) {
    document.body.setAttribute("data-pub-filter", filter);
    activeCategories.clear();
    document.querySelectorAll(".pub-cat-btn").forEach(function (catButton) {
      catButton.classList.remove("active");
    });
    document.querySelectorAll(".pub-filter").forEach(function (filterButton) {
      filterButton.classList.remove("active");
    });
    button.classList.add("active");
    filterPubs();
  }

  function toggleCatFilter(category) {
    if (activeCategories.has(category)) {
      activeCategories.delete(category);
    } else {
      activeCategories.add(category);
    }

    if (activeCategories.size > 0) {
      document.body.setAttribute("data-pub-filter", "cat");
      document.querySelectorAll(".pub-filter").forEach(function (filterButton) {
        filterButton.classList.remove("active");
      });
    } else {
      document.body.setAttribute("data-pub-filter", "all");
      var allButton = document.querySelector(".pub-filter[data-filter='all']");
      if (allButton) allButton.classList.add("active");
    }

    document.querySelectorAll(".pub-cat-btn").forEach(function (button) {
      button.classList.toggle("active", activeCategories.has(button.getAttribute("data-cat")));
    });

    filterPubs();
  }

  document.addEventListener("DOMContentLoaded", function () {
    var search = document.getElementById("pubSearch");
    var params = new URLSearchParams(window.location.search);
    if (search && params.get("q")) search.value = params.get("q");
    if (search) search.addEventListener("input", filterPubs);

    var categoryCounts = {};
    document.querySelectorAll(".pub-card").forEach(function (card) {
      (card.getAttribute("data-categories") || "").split(",").map(function (cat) {
        return cat.trim();
      }).filter(Boolean).forEach(function (category) {
        categoryCounts[category] = (categoryCounts[category] || 0) + 1;
      });
    });

    var categoryContainer = document.getElementById("categoryButtons");
    Object.keys(categoryCounts).sort(function (a, b) {
      return categoryCounts[b] - categoryCounts[a] || a.localeCompare(b);
    }).forEach(function (category) {
      var button = document.createElement("button");
      button.className = "pub-cat-btn";
      button.type = "button";
      button.setAttribute("data-cat", category);
      button.innerHTML = category + " <span>" + categoryCounts[category] + "</span>";
      button.onclick = function () { toggleCatFilter(category); };
      categoryContainer.appendChild(button);
    });

    if (params.get("topic")) toggleCatFilter(params.get("topic"));
    filterPubs();
  });
</script>
