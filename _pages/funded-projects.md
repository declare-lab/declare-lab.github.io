---
layout: single
title: "Funded Projects"
permalink: /funded-projects/
author_profile: false
related: false
toc: false
classes: wide
---

<div class="page-flow">

<span class="data-verification">Funding record verified {{ site.data.funded_projects.last_verified | date: "%B %Y" }}</span>

{% for section in site.data.funded_projects.sections %}
<h2 id="{{ section.id }}" data-section-label="{{ forloop.index | prepend: '0' | slice: -2, 2 }}">{{ section.title }}</h2>

<div class="funding-list funding-list--page funding-list--records{% if section.id == 'completed-support' %} funding-list--compact{% endif %}">
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

<section class="join-band join-band--quiet funded-page-cta" id="join-lab">
  <div>
    <h2 data-section-label="{{ site.data.funded_projects.sections | size | plus: 1 | prepend: '0' | slice: -2, 2 }}">Work With DeCLaRe</h2>
    <p>Current projects offer opportunities for students and collaborators.</p>
  </div>
  <a class="btn-primary" href="/join/">Open positions</a>
</section>
