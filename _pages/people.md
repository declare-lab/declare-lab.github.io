---
layout: single
title: "People at DeCLaRe Lab"
permalink: /people/
author_profile: false
related: false
toc: false
classes: wide
---

<section class="page-lead page-lead--compact">
  <p>DeCLaRe brings together researchers working across language, multimodality, reasoning, efficient learning, trustworthy AI, and embodied intelligence.</p>
  <span class="data-verification">Roster verified {{ site.data.people.last_verified | date: "%B %Y" }}</span>
</section>

<div class="side-layout">
<div class="side-layout__main">

<img class="team-photo" src="/assets/images/resources/team.jpg" alt="Members of DeCLaRe Lab" loading="eager">

{% for section in site.data.people.sections %}
<h2 id="{{ section.id }}">{{ section.title }}</h2>

<div class="people-grid{% if section.id == 'faculty' %} people-grid--featured{% endif %}">
  {% for person in section.people %}
  <article class="person-card">
    {% if person.image %}
    <img src="{{ person.image }}" alt="{{ person.name }}" loading="lazy">
    {% else %}
    <div class="person-avatar" aria-hidden="true">{{ person.avatar }}</div>
    {% endif %}
    <div>
      <h3>{{ person.name }}</h3>
      <p>{{ person.description }}</p>
      {% if person.links %}
      <div class="person-links">
        {% for link in person.links %}<a href="{{ link.url }}">{{ link.label }}</a>{% endfor %}
      </div>
      {% endif %}
    </div>
  </article>
  {% endfor %}
</div>
{% endfor %}

</div>

<aside class="section-nav" aria-label="People sections">
  <span>People</span>
  <div>
    {% for section in site.data.people.sections %}<a href="#{{ section.id }}">{{ section.title }}</a>{% endfor %}
  </div>
</aside>
</div>
