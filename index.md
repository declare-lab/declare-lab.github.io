---
layout: single
classes: wide
permalink: /
author_profile: false
related: false
title: ""
---

<section class="home-hero declare-hero">
  <div class="declare-hero__copy">
    <p class="declare-kicker">Deep Cognition and Language Research Lab</p>
    <h1>Research across Six Themes in <em>AI</em></h1>
    <p class="declare-hero__subhead">DeCLaRe is a research group at NTU working across Safety, Trustworthiness, Multimodality, AI for Science, Efficiency, and Embodied AI. Recent notable work includes online memory for LLMs, dynamic data selection for efficient ML training, vision-language-action models, text-to-audio generation, trustworthy RAG, and operational AI safety.</p>
    <div class="hero-actions hero-actions--lab">
      <a class="btn-primary btn--compact" href="/research/"><i class="fa-solid fa-compass" aria-hidden="true"></i><span>Research Themes</span></a>
      <a class="btn-secondary btn--compact" href="/publications/"><i class="fa-solid fa-book-open" aria-hidden="true"></i><span>Publications</span></a>
      <a class="btn-secondary btn--compact" href="https://github.com/declare-lab" target="_blank" rel="noopener"><i class="fa-brands fa-github" aria-hidden="true"></i><span>GitHub</span></a>
      <a class="btn-secondary btn--compact" href="https://drive.google.com/file/d/10lmu5YGDzr2Yw6kBFWwe7ifZ9Ec9WCl1/view?usp=sharing" target="_blank" rel="noopener"><i class="fa-solid fa-file-powerpoint" aria-hidden="true"></i><span>Research Slides</span></a>
    </div>
  </div>
  <div class="declare-hero__visual" aria-label="Interactive map of DeCLaRe research themes">
    <div class="research-map" id="researchMap">
      <div class="research-map__field">
        <!-- Compass geometry, in a 100x76 field centred on (50,38).
             Hub r 13, inner ring r 17, bearing ring r 20.5. Each connector runs
             radially from the hub edge out to the bearing ring, then turns to
             approach its box square-on. North and south need no visible turn:
             vertical is already perpendicular to those boxes' edges. -->
        <svg class="research-map__grid" viewBox="0 0 100 76" preserveAspectRatio="none" aria-hidden="true" focusable="false">
          <circle class="research-map__ring" cx="50" cy="38" r="20.5"></circle>
          <circle class="research-map__ring" cx="50" cy="38" r="17"></circle>
          <path class="research-map__spoke" data-spoke="safety" d="M50 25 V13.55"></path>
          <path class="research-map__spoke" data-spoke="embodied-ai" d="M50 51 V62.45"></path>
          <path class="research-map__spoke" data-spoke="trustworthiness" d="M38.742 31.5 L32.247 27.75 H32"></path>
          <path class="research-map__spoke" data-spoke="multimodality" d="M61.258 31.5 L67.753 27.75 H68"></path>
          <path class="research-map__spoke" data-spoke="ai-for-science" d="M38.742 44.5 L32.247 48.25 H32"></path>
          <path class="research-map__spoke" data-spoke="efficiency" d="M61.258 44.5 L67.753 48.25 H68"></path>
          <circle class="research-map__hub" cx="50" cy="38" r="13"></circle>
        </svg>
        <img class="research-map__logo research-map__logo--light" src="/assets/images/logos/declare-icon-light.png" alt="DeCLaRe Lab robot icon">
        <img class="research-map__logo research-map__logo--dark" src="/assets/images/logos/declare-icon-dark.png" alt="DeCLaRe Lab robot icon">
        {% for theme in site.data.home.themes %}
        <a class="research-node research-node--{{ theme.id }}" data-theme="{{ theme.id }}" href="/research/#{{ theme.id }}">{% if theme.id == "trustworthiness" %}Trust<wbr>worthiness{% elsif theme.id == "multimodality" %}Multi<wbr>modality{% else %}{{ theme.name }}{% endif %}</a>
        {% endfor %}
      </div>
    </div>
  </div>
</section>

<div class="side-layout side-layout--home">
<div class="side-layout__main">

<section class="declare-intro lab-overview" id="about">
  <div>
    <h2 data-section-label="01">About DeCLaRe</h2>
  </div>
  <div class="lab-overview__body">
    <div class="lab-overview__copy">
      <p>DeCLaRe, short for Deep Cognition and Language Research, was founded by Soujanya Poria at the Singapore University of Technology and Design in 2019 with Navonil Majumder, Devamanyu Hazarika, and Deepanway Ghosal. The lab moved to Nanyang Technological University in 2025.</p>
      <div class="identity-summary">
        <span>Lab's identity</span>
        <p>The robot recalls early computing while forming 宣 (<em>xuān</em>), “to declare”: an intelligent social agent connecting computing’s history with collaborative AI.</p>
      </div>
    </div>
    <a class="identity-figure identity-figure--light" href="/assets/images/resources/logo-explanation-light.svg" aria-label="Open the DeCLaRe logo explanation">
      <img src="/assets/images/resources/logo-explanation-light.svg" alt="Visual explanation of the DeCLaRe Lab identity" loading="lazy">
    </a>
    <a class="identity-figure identity-figure--dark" href="/assets/images/resources/logo-explanation-dark.svg" aria-label="Open the DeCLaRe logo explanation">
      <img src="/assets/images/resources/logo-explanation-dark.svg" alt="Visual explanation of the DeCLaRe Lab identity" loading="lazy">
    </a>
  </div>
</section>

<section class="declare-section declare-featured" id="research-areas">
  <div class="declare-section__header">
    <div>
      <h2 data-section-label="02">Research Themes</h2>
    </div>
    <a class="btn-secondary" href="/research/">All research</a>
  </div>
  <div class="representative-grid">
    {% for theme in site.data.home.themes %}
    <article class="representative-card representative-card--{{ theme.id }}" data-theme="{{ theme.id }}">
      <div class="representative-card__head">
        <span class="project-tag">{{ theme.number }}</span>
        <h3>{{ theme.name }}</h3>
        <p>{{ theme.summary }}</p>
      </div>
      <div class="representative-list">
        {% for work in theme.works limit: 2 %}
        <a href="{{ work.url }}"><strong>{{ work.title }}</strong><span>{{ work.meta }}</span></a>
        {% endfor %}
        <a href="/research/#{{ theme.id }}"><strong>All {{ theme.name | downcase }} work</strong><span>Research</span></a>
      </div>
    </article>
    {% endfor %}
  </div>
</section>

<section class="declare-section hot-papers" id="hot-papers">
  <div class="declare-section__header">
    <div>
      <h2 data-section-label="03">Hot Papers 🔥</h2>
    </div>
    <a class="btn-secondary" href="/publications/">Publication archive</a>
  </div>
  <div class="hot-paper-list">
    {% for paper in site.data.home.hot_papers %}
    <article>
      <span>{{ paper.venue }}</span>
      <h3>{{ paper.title }}</h3>
      <p>{{ paper.summary }}</p>
      <div class="project-links">
        {% for link in paper.links %}<a href="{{ link.url }}">{{ link.label }}</a>{% endfor %}
      </div>
    </article>
    {% endfor %}
  </div>
</section>

<section class="declare-section research-support" id="research-support">
  <div class="declare-section__header">
    <div>
      <h2 data-section-label="04">Funded Research Directions</h2>
    </div>
  </div>
  <div class="research-support__gateway">
    <p>Active and completed research support.</p>
    <div>
      <a class="btn-primary" href="/funded-projects/">Funded projects</a>
      <a class="btn-secondary" href="/join/">Research opportunities</a>
    </div>
  </div>
</section>

</div>

<aside class="section-menu section-menu--rail section-nav" data-section-menu aria-label="Homepage sections">
  <span class="section-menu__label">Sections</span>
  <div class="section-menu__items" data-section-menu-scroll>
    <a href="#about">About</a>
    <a href="#research-areas">Research Themes</a>
    <a href="#hot-papers">Hot Papers 🔥</a>
    <a href="#research-support">Research Support</a>
  </div>
</aside>
</div>

<script>
  (function () {
    var map = document.getElementById("researchMap");
    if (!map) return;

    var nodes = Array.prototype.slice.call(map.querySelectorAll("[data-theme]"));
    var related = Array.prototype.slice.call(document.querySelectorAll(".representative-card[data-theme]"));

    function setTheme(theme) {
      map.setAttribute("data-active-theme", theme);
      nodes.forEach(function (node) {
        node.classList.toggle("is-active", node.getAttribute("data-theme") === theme);
      });
      related.forEach(function (item) {
        item.classList.toggle("is-linked", item.getAttribute("data-theme") === theme);
      });
    }

    function clearTheme() {
      map.removeAttribute("data-active-theme");
      nodes.concat(related).forEach(function (item) { item.classList.remove("is-active", "is-linked"); });
    }

    nodes.forEach(function (node) {
      node.addEventListener("mouseenter", function () { setTheme(node.getAttribute("data-theme")); });
      node.addEventListener("focus", function () { setTheme(node.getAttribute("data-theme")); });
      node.addEventListener("mouseleave", clearTheme);
      node.addEventListener("blur", clearTheme);
    });
  }());
</script>
