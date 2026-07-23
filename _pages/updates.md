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

<section class="page-lead page-lead--compact">
  <p>Research releases, grants, awards, student milestones, and changes in the life of the lab.</p>
  <span class="data-verification">Updated {{ site.data.updates.last_verified | date: "%B %Y" }}</span>
</section>

<div class="side-layout">
<div class="side-layout__main">

{% for year in update_years %}
<section class="updates-year" id="updates-{{ year.name }}">
  <h2 data-section-label="YEAR">{{ year.name }}</h2>
  <div class="updates-feed">
    {% for update in year.items %}
    {% assign kind_class = update.kind | downcase | replace: " ", "-" %}
    <article class="update-card update-card--{{ kind_class }}">
      <div class="update-card__meta">
        <span>{{ update.kind }}</span>
        <time>{{ update.date }}</time>
      </div>
      <div class="update-card__body">
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

<aside class="section-nav" aria-label="Update years">
  <span>Years</span>
  <div>{% for year in update_years %}<a href="#updates-{{ year.name }}">{{ year.name }}</a>{% endfor %}</div>
</aside>
</div>
