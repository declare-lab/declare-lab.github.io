---
layout: single
classes: wide
permalink: /
author_profile: false
related: false
title: ""
---

<div class="page-meta-strip" aria-label="Institutional affiliation">
  <span>DeCLaRe Lab · Nanyang Technological University, Singapore</span>
</div>

<section class="home-hero declare-hero">
  <div class="declare-hero__copy">
    <h1>Research across Six Themes in <em>AI</em></h1>
    <p class="declare-hero__subhead">DeCLaRe is a research group at NTU working across Safety, Trustworthiness, Multimodality, AI for Science, Efficiency, and Embodied AI.</p>
    <div class="hero-actions hero-actions--lab">
      <a class="btn-primary btn--compact" href="/research/"><i class="fa-solid fa-compass" aria-hidden="true"></i><span>Themes</span></a>
      <a class="btn-secondary btn--compact" href="/publications/"><i class="fa-solid fa-book-open" aria-hidden="true"></i><span>Papers</span></a>
      <a class="btn-secondary btn--compact" href="https://github.com/declare-lab" target="_blank" rel="noopener"><i class="fa-brands fa-github" aria-hidden="true"></i><span>GitHub</span></a>
      <a class="btn-secondary btn--compact" href="https://drive.google.com/file/d/10lmu5YGDzr2Yw6kBFWwe7ifZ9Ec9WCl1/view?usp=sharing" target="_blank" rel="noopener"><i class="fa-solid fa-file-powerpoint" aria-hidden="true"></i><span>Slides</span></a>
    </div>
  </div>
  <div class="declare-hero__visual" aria-label="Interactive map of DeCLaRe research themes">
    <div class="research-map" id="researchMap">
      <div class="research-map__field">
        <!-- Compass geometry in a 100x92 field centred on (50,46).
             Hub r 13, inner ring r 17, bearing ring r 20.5.

             Every theme box presents its near edge at radius 24, so all six
             sit the same distance from the centre: the vertical pair by their
             horizontal edge (y 22 and y 70), the four diagonals by the midpoint
             of their vertical edge, at (±21.7, ∓10.25) from the centre —
             sqrt(21.7² + 10.25²) = 24. Each connector runs radially to the
             bearing ring and then turns to meet its box square-on. -->
        <svg class="research-map__grid" viewBox="0 0 100 92" preserveAspectRatio="none" aria-hidden="true" focusable="false">
          <circle class="research-map__ring research-map__ring--outer" cx="50" cy="46" r="20.5"></circle>
          <circle class="research-map__ring" cx="50" cy="46" r="17"></circle>
          <!-- Graduations at the six bearings between the spokes (0, 60, 120,
               180, 240, 300 degrees), drawn in the annulus between the rings.
               They sit where nothing else does, and give the figure the
               character of an instrument rather than boxes near a circle. -->
          <g class="research-map__ticks">
            <path d="M67 46 H69.5"></path>
            <path d="M58.5 31.278 L59.75 29.113"></path>
            <path d="M41.5 31.278 L40.25 29.113"></path>
            <path d="M33 46 H30.5"></path>
            <path d="M41.5 60.722 L40.25 62.887"></path>
            <path d="M58.5 60.722 L59.75 62.887"></path>
          </g>
          <path class="research-map__spoke" data-spoke="safety" d="M50 33 V22"></path>
          <path class="research-map__spoke" data-spoke="embodied-ai" d="M50 59 V70"></path>
          <path class="research-map__spoke" data-spoke="trustworthiness" d="M38.742 39.5 L32.247 35.75 H28.3"></path>
          <path class="research-map__spoke" data-spoke="multimodality" d="M61.258 39.5 L67.753 35.75 H71.7"></path>
          <path class="research-map__spoke" data-spoke="ai-for-science" d="M38.742 52.5 L32.247 56.25 H28.3"></path>
          <path class="research-map__spoke" data-spoke="efficiency" d="M61.258 52.5 L67.753 56.25 H71.7"></path>
          <circle class="research-map__hub" cx="50" cy="46" r="13"></circle>
        </svg>
        <img class="research-map__logo research-map__logo--light" src="/assets/declare-core/brand/logos/declare-icon-light.svg" alt="DeCLaRe Lab robot icon">
        <img class="research-map__logo research-map__logo--dark" src="/assets/declare-core/brand/logos/declare-icon-dark.svg" alt="DeCLaRe Lab robot icon">
        {% for theme in site.data.home.themes %}
        <a class="research-node research-node--{{ theme.id }}" data-theme="{{ theme.id }}" href="/research/#{{ theme.id }}">{{ theme.name }}</a>
        {% endfor %}
      </div>
    </div>
  </div>
</section>

<section class="declare-intro lab-overview" id="about">
  <div>
    <h2>About DeCLaRe</h2>
  </div>
  <div class="lab-overview__body">
    <div class="lab-overview__copy">
      <p>DeCLaRe, short for <strong>Deep Cognition and Language Research</strong>, was founded by Soujanya Poria at the Singapore University of Technology and Design in 2019 with Navonil Majumder, Devamanyu Hazarika, and Deepanway Ghosal. The lab moved to Nanyang Technological University in 2025.</p>
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

<script>
  (function () {
    var map = document.getElementById("researchMap");
    if (!map) return;

    var nodes = Array.prototype.slice.call(map.querySelectorAll("[data-theme]"));

    function setTheme(theme) {
      map.setAttribute("data-active-theme", theme);
      nodes.forEach(function (node) {
        node.classList.toggle("is-active", node.getAttribute("data-theme") === theme);
      });
    }

    function clearTheme() {
      map.removeAttribute("data-active-theme");
      nodes.forEach(function (item) { item.classList.remove("is-active"); });
    }

    nodes.forEach(function (node) {
      node.addEventListener("mouseenter", function () { setTheme(node.getAttribute("data-theme")); });
      node.addEventListener("focus", function () { setTheme(node.getAttribute("data-theme")); });
      node.addEventListener("mouseleave", clearTheme);
      node.addEventListener("blur", clearTheme);
    });
  }());
</script>
