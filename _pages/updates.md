---
layout: single
title: "Updates"
permalink: /updates/
author_profile: false
related: false
toc: false
classes: wide
---

{% assign update_years = site.data.updates.items | group_by: "year" %}

<div class="page-flow">

<span class="data-verification">Updated {{ site.data.updates.last_verified | date: "%B %Y" }}</span>

{% for year in update_years %}
<section class="updates-year" id="updates-{{ year.name }}">
  <h2>{{ year.name }}</h2>
  <div class="updates-feed timeline-list">
    {% for update in year.items %}
    {% assign kind_class = update.kind | downcase | replace: " ", "-" %}
    {% assign date_parts = update.date | split: " " %}
    <article class="update-card update-card--{{ kind_class }} timeline-item">
      <div class="update-card__meta timeline-item__marker">
        <time class="date-marker date-marker--timeline">
          <span class="date-marker__primary">{{ date_parts | first }}</span>
          {% if date_parts.size > 1 %}<span class="date-marker__secondary">{{ date_parts | last }}</span>{% endif %}
        </time>
      </div>
      <div class="update-card__body timeline-item__content">
        <span class="update-card__kind record-badge">{{ update.kind }}</span>
        <h3>{{ update.title }}</h3>
        <p>{{ update.summary }}</p>
        {% if update.bullets %}
        <ul>{% for bullet in update.bullets %}<li>{{ bullet }}</li>{% endfor %}</ul>
        {% endif %}
        {% if update.links %}
        <div class="project-links">{% for link in update.links %}<a href="{{ link.url }}">{{ link.label }}</a>{% endfor %}</div>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>
</section>
{% endfor %}

</div>
