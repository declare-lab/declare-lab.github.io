---
layout: single
title: "Funded Projects"
permalink: /funded-projects/
author_profile: false
related: false
toc: false
classes: wide
---

<section class="page-lead page-lead--compact">
  <p>External grants and research support underpin DeCLaRe's work on embodied models, trustworthy generation, efficient architectures, scientific AI, and multimodal learning.</p>
  <span class="data-verification">Funding record verified {{ site.data.funded_projects.last_verified | date: "%B %Y" }}</span>
</section>

<div class="side-layout">
<div class="side-layout__main">

{% for section in site.data.funded_projects.sections %}
<h2 id="{{ section.id }}">{{ section.title }}</h2>

<div class="funding-list funding-list--page{% unless section.id == 'active-projects' %} funding-list--records{% endunless %}{% if section.id == 'completed-support' %} funding-list--compact{% endif %}">
  {% for project in section.projects %}
  <article>
    <span>{{ project.meta }}</span>
    <h3>{{ project.title }}</h3>
    <p>{{ project.summary }}</p>
  </article>
  {% endfor %}
</div>
{% endfor %}

</div>

<aside class="section-nav" aria-label="Funded project sections">
  <span>Sections</span>
  <div>
    {% for section in site.data.funded_projects.sections %}<a href="#{{ section.id }}">{{ section.title | replace: "Corporate and In-Kind ", "" }}</a>{% endfor %}
    <a href="/join/">Join the Lab</a>
  </div>
</aside>
</div>

<section class="join-band join-band--quiet">
  <div>
    <p class="work-kicker">Research opportunities</p>
    <h2>Work With DeCLaRe</h2>
    <p>Current funded directions create opportunities for students and collaborators whose research aligns with the lab.</p>
  </div>
  <a class="btn-primary" href="/join/">Open positions</a>
</section>
