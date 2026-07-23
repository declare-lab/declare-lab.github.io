---
layout: single
title: "People"
permalink: /people/
author_profile: false
related: false
toc: false
classes: wide
---

<section class="page-lead page-lead--compact">
  <p>DeCLaRe is a research group at NTU working across Safety, Trustworthiness, Multimodality, AI for Science, Efficiency, and Embodied AI.</p>
  <span class="data-verification">Roster updated {{ site.data.people.last_verified | date: "%B %Y" }}</span>
</section>

<div class="side-layout people-layout">
<div class="side-layout__main">

<figure class="team-portrait">
  <img class="team-photo" src="/assets/images/resources/team.jpg" alt="Members of DeCLaRe Lab in 2021" loading="eager">
  <figcaption>Members of DeCLaRe in 2021</figcaption>
</figure>

{% for section in site.data.people.sections %}
<section class="people-section people-section--{{ section.id }}" id="{{ section.id }}">
<div class="people-section__header">
  <h2 data-section-label="0{{ forloop.index }}">{{ section.title }}</h2>
  <span class="people-section__count">{{ section.people | size }} {% if section.people.size == 1 %}member{% else %}members{% endif %}</span>
</div>

<div class="people-grid people-grid--{{ section.id }}">
  {% for person in section.people %}
  {% assign primary_link = person.links | first %}
  <article class="person-card">
    <div class="person-card__portrait" style="--portrait-position: {{ person.image_position | default: '50% 50%' }}; --portrait-scale: {{ person.image_scale | default: 1 }}; --portrait-origin: {{ person.image_origin | default: '50% 50%' }};">
    {% if person.image %}
      <img src="{{ person.image }}" alt="{{ person.name }}" loading="lazy">
    {% else %}
      <div class="person-avatar" aria-hidden="true">{{ person.avatar }}</div>
    {% endif %}
    </div>
    <div class="person-card__body">
      {% if person.role %}<p class="person-card__role">{{ person.role }}</p>{% endif %}
      <h3>{% if primary_link %}<a class="person-card__primary" href="{{ primary_link.url }}"{% unless primary_link.url contains 'mailto:' %} target="_blank" rel="noopener"{% endunless %}>{{ person.name }}</a>{% else %}{{ person.name }}{% endif %}</h3>
      {% if person.affiliation %}<p class="person-card__affiliation">{{ person.affiliation }}</p>{% endif %}
      {% if person.interests %}<p class="person-card__interests">{{ person.interests }}</p>{% endif %}
      {% if person.note %}<p class="person-card__note">{{ person.note }}</p>{% endif %}
      {% if person.links %}
      <div class="person-links" aria-label="Links for {{ person.name }}">
        {% for link in person.links %}
        {% assign link_label = link.label | downcase %}
        <a class="person-action" href="{{ link.url }}" aria-label="{{ link.label }} for {{ person.name }}" data-tooltip="{{ link.label }}"{% unless link.url contains 'mailto:' %} target="_blank" rel="noopener"{% endunless %}>
          {% if link.url contains 'github.com' %}
          <i class="fa-brands fa-github" aria-hidden="true"></i>
          {% elsif link.url contains 'mailto:' %}
          <i class="fa-solid fa-envelope" aria-hidden="true"></i>
          {% elsif link_label contains 'scholar' or link_label contains 'publication' %}
          <i class="fa-solid fa-graduation-cap" aria-hidden="true"></i>
          {% elsif link_label contains 'paper' %}
          <i class="fa-solid fa-file-lines" aria-hidden="true"></i>
          {% elsif link_label contains 'project' %}
          <i class="fa-solid fa-code" aria-hidden="true"></i>
          {% else %}
          <i class="fa-solid fa-globe" aria-hidden="true"></i>
          {% endif %}
        </a>
        {% endfor %}
      </div>
      {% endif %}
    </div>
  </article>
  {% endfor %}
</div>
</section>
{% endfor %}

</div>

<aside class="section-nav" aria-label="People sections">
  <span>People</span>
  <div>
    {% for section in site.data.people.sections %}<a href="#{{ section.id }}">{{ section.title }}</a>{% endfor %}
  </div>
</aside>
</div>
