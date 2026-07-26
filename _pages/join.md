---
layout: single
title: "Join DeCLaRe Lab"
permalink: /join/
author_profile: false
related: false
toc: false
classes: wide
---

<div class="page-flow">

<section class="join-section">
<h2 id="working-here" data-section-label="01">Working Here</h2>

<p>You will develop models, evaluations, and open artifacts around a clearly stated question, and build toward a direction of your own within the lab's agenda. If a theme on the <a href="/research/">research page</a> raises a question you would want to spend years on, that is the right reason to write.</p>
</section>

<section class="join-section collaboration-section" id="collaboration-structure">
<h2 data-section-label="02">How Work Gets Done Here</h2>

<p>Almost nothing here is written alone. A paper carries 5.6 authors on average — a median of five — and typically one or two are DeCLaRe members, with the rest from elsewhere. Reading the lab's 167 papers since 2019 as a set of collaboration types gives the shape of it; pick a relationship to trace it through the map.</p>

<div class="collab" id="collabMap">
  <ol class="collab-legend">
    {% for edge in site.data.collaboration.edges %}
    <li>
      <button type="button" class="collab-legend__row{% if forloop.first %} is-active{% endif %}" data-rel="{{ edge.id }}" aria-pressed="{% if forloop.first %}true{% else %}false{% endif %}">
        <span class="collab-legend__pct">{{ edge.percent }}</span>
        <span class="collab-legend__label">{{ edge.label }}</span>
        <span class="collab-legend__count">{{ edge.count }}</span>
        <span class="collab-legend__detail">{{ edge.detail }}</span>
      </button>
    </li>
    {% endfor %}
  </ol>

  <div class="collab-graph">
    <svg viewBox="0 0 760 520" role="img" aria-labelledby="collabTitle collabDesc">
      <title id="collabTitle">DeCLaRe collaboration network</title>
      <desc id="collabDesc">The publication archive at the centre, connected to internal collaboration, work initiated in the lab, external collaborators, research themes, and academic and industry partners. The same figures are listed beside the map.</desc>

      <g class="collab-edges">
        <g class="collab-edge" data-rel="intra"><path d="M308 218 C270 188, 250 173, 238 175"></path><text x="256" y="177">49.1%</text></g>
        <g class="collab-edge" data-rel="pi"><path d="M350 170 C332 134, 318 106, 304 82"></path><text x="342" y="122">84.4%</text></g>
        <g class="collab-edge" data-rel="external"><path d="M434 222 C478 184, 518 176, 548 182"></path><text x="486" y="166">89.8%</text></g>
        <g class="collab-edge" data-rel="theme"><path d="M330 300 C292 340, 262 360, 238 364"></path><text x="265" y="348">70.1%</text></g>
        <g class="collab-edge" data-rel="academic"><path d="M584 232 C588 296, 558 344, 520 366"></path><text x="548" y="310">98.0%</text></g>
        <g class="collab-edge" data-rel="industry"><path d="M606 234 C646 286, 662 330, 656 366"></path><text x="650" y="308">21.3%</text></g>
      </g>

      <g class="collab-node collab-node--hub" data-node="archive" transform="translate(370 240)">
        <circle r="72"></circle>
        <text text-anchor="middle"><tspan x="0" y="-6">Publication</tspan><tspan x="0" y="14">archive</tspan></text>
      </g>
      <g class="collab-node" data-node="internal" transform="translate(185 175)">
        <circle r="62"></circle>
        <text text-anchor="middle"><tspan x="0" y="-12">Internal</tspan><tspan x="0" y="7">DeCLaRe</tspan><tspan x="0" y="26">collaboration</tspan></text>
      </g>
      <g class="collab-node" data-node="pi" transform="translate(300 64)">
        <circle r="52"></circle>
        <text text-anchor="middle"><tspan x="0" y="-2">Initiated</tspan><tspan x="0" y="16">in DeCLaRe</tspan></text>
      </g>
      <g class="collab-node" data-node="external" transform="translate(600 190)">
        <circle r="62"></circle>
        <text text-anchor="middle"><tspan x="0" y="-8">External</tspan><tspan x="0" y="11">collaborators</tspan></text>
      </g>
      <g class="collab-node" data-node="theme" transform="translate(190 365)">
        <circle r="52"></circle>
        <text text-anchor="middle"><tspan x="0" y="-2">Multi-theme</tspan><tspan x="0" y="16">papers</tspan></text>
      </g>
      <g class="collab-node collab-node--small" data-node="academic" transform="translate(500 400)">
        <circle r="42"></circle>
        <text text-anchor="middle"><tspan x="0" y="-2">Academic</tspan><tspan x="0" y="15">partners</tspan></text>
      </g>
      <g class="collab-node collab-node--small" data-node="industry" transform="translate(655 400)">
        <circle r="42"></circle>
        <text text-anchor="middle"><tspan x="0" y="-2">Industry</tspan><tspan x="0" y="15">partners</tspan></text>
      </g>
    </svg>
  </div>
</div>

<p class="collaboration-takeaway">{{ site.data.collaboration.method_note }}</p>
</section>

<script>
  (function () {
    var root = document.getElementById("collabMap");
    if (!root) return;

    var rows = Array.prototype.slice.call(root.querySelectorAll(".collab-legend__row"));
    var edges = Array.prototype.slice.call(root.querySelectorAll(".collab-edge"));
    var nodes = Array.prototype.slice.call(root.querySelectorAll(".collab-node"));

    // The two circles each relationship connects, read off the same data that
    // generated the legend so the map and the list stay in step.
    var linked = {
      {% for edge in site.data.collaboration.edges %}"{{ edge.id }}": "{{ edge.nodes }}".split(" "){% unless forloop.last %},{% endunless %}
      {% endfor %}
    };

    function activate(rel) {
      if (!rel) return;
      root.setAttribute("data-active", rel);
      rows.forEach(function (row) {
        var on = row.getAttribute("data-rel") === rel;
        row.classList.toggle("is-active", on);
        row.setAttribute("aria-pressed", String(on));
      });
      edges.forEach(function (edge) {
        edge.classList.toggle("is-active", edge.getAttribute("data-rel") === rel);
      });
      var lit = linked[rel] || [];
      nodes.forEach(function (node) {
        node.classList.toggle("is-active", lit.indexOf(node.getAttribute("data-node")) !== -1);
      });
    }

    rows.forEach(function (row) {
      var rel = row.getAttribute("data-rel");
      row.addEventListener("mouseenter", function () { activate(rel); });
      row.addEventListener("focus", function () { activate(rel); });
      row.addEventListener("click", function () { activate(rel); });
    });

    // Hovering the map drives the list too, so the two halves never disagree
    // about what is selected.
    edges.forEach(function (edge) {
      var rel = edge.getAttribute("data-rel");
      edge.addEventListener("mouseenter", function () { activate(rel); });
      edge.addEventListener("click", function () { activate(rel); });
    });

    activate(rows.length ? rows[0].getAttribute("data-rel") : null);
  }());
</script>

<section class="join-section">
<h2 id="open-positions" data-section-label="03">Open Positions</h2>

<div class="opening-list">
  <article>
    <h3>PhD Students</h3>
    <p>For applicants drawn to one of the six themes — safety, trustworthiness, multimodality, AI for Science, efficiency, or embodied AI. Publications help but are not required; engineering ability, research judgment, and persistence matter as much.</p>
  </article>
  <article>
    <h3>Postdoctoral Researchers</h3>
    <p>For researchers with a strong publication record and a clear agenda that connects to the lab's themes. Proposing a new direction is welcome when it links to that agenda.</p>
  </article>
  <article>
    <h3>Research Interns and Visiting Researchers</h3>
    <p>For students and collaborators who can contribute to a focused study, benchmark, research tool, or open-source release.</p>
  </article>
</div>

<p class="opening-note">Backgrounds we commonly draw on: machine learning, natural language processing, computer vision, audio and speech, robotics, efficient learning, and AI safety and alignment.</p>
</section>

<section class="join-section">
<h2 id="how-to-apply" data-section-label="04">How to Apply</h2>

<p>Read the <a href="https://drive.google.com/file/d/10lmu5YGDzr2Yw6kBFWwe7ifZ9Ec9WCl1/view?usp=sharing">research slides</a> and browse recent <a href="/publications/">publications</a> first, then email <code>soujanya [dot] poria [at] ntu [dot] edu [dot] sg</code> with your CV, a transcript if applicable, representative work, and a short note naming the theme or paper your interests connect to.</p>

<p>Keep it short and specific — a concrete note about one paper says more than a general statement of interest.</p>
</section>

</div>
