---
layout: single
title: "Join DeCLaRe Lab"
permalink: /join/
author_profile: false
related: false
toc: false
classes: wide
---

<section class="page-lead page-lead--compact">
  <p>DeCLaRe is a collaborative academic community for researchers who value careful scientific questions, ambitious technical work, and sustained exchange across disciplines and institutions.</p>
</section>

<div class="side-layout">
<div class="side-layout__main">

<h2 id="why-join-declare-lab">Why Join DeCLaRe Lab?</h2>

<div class="opportunity-grid">
  <article>
    <h3>Research with evidence</h3>
    <p>Develop models, evaluations, and open research artifacts around clearly stated scientific questions.</p>
  </article>
  <article>
    <h3>Collaborative culture</h3>
    <p>Work closely with lab members, academic collaborators, and industry researchers while retaining intellectual ownership of your direction.</p>
  </article>
  <article>
    <h3>Room to define a direction</h3>
    <p>Build from the lab's research agenda while developing questions that reflect your own technical strengths and scientific interests.</p>
  </article>
</div>

<section class="collaboration-section" id="collaboration-structure">
  <div class="declare-section__header">
    <div>
      <p class="work-kicker">Collaboration structure</p>
      <h2>How Students Collaborate in DeCLaRe</h2>
      <p class="section-note">Coauthorship patterns in the lab's publication archive show how internal, academic, and industry collaborations intersect.</p>
    </div>
  </div>

  <div class="collaboration-layout">
    <div class="collaboration-metrics">
      {% for metric in site.data.collaboration.metrics %}
      <article>
        <span>{{ metric.label }}</span>
        <strong>{{ metric.value }}</strong>
        <p>{{ metric.detail }}</p>
      </article>
      {% endfor %}
    </div>

    <div class="collaboration-map" aria-label="Interactive type-level collaboration network">
      <svg viewBox="0 0 760 520" role="img" aria-labelledby="collab-map-title collab-map-desc">
        <title id="collab-map-title">DeCLaRe type-level collaboration network</title>
        <desc id="collab-map-desc">A star-schema view of the publication archive, with papers at the center and author, collaborator, partner, and research-theme dimensions around it.</desc>
        <defs>
          <!-- Single brand gradient used for the active edge. All other defs alias to it
               so per-relationship "rainbow" stroke colors collapse into one accent. -->
          <linearGradient id="collabEdgeIntra" x1="0" y1="0" x2="1" y2="0.8">
            <stop class="collab-stop--rose" offset="0"></stop>
            <stop class="collab-stop--blue" offset="0.55"></stop>
            <stop class="collab-stop--teal" offset="1"></stop>
          </linearGradient>
          <linearGradient id="collabEdgeExternal" href="#collabEdgeIntra"></linearGradient>
          <linearGradient id="collabEdgeAcademic" href="#collabEdgeIntra"></linearGradient>
          <linearGradient id="collabEdgeIndustry" href="#collabEdgeIntra"></linearGradient>
          <linearGradient id="collabEdgeTheme" href="#collabEdgeIntra"></linearGradient>
          <linearGradient id="collabEdgePI" href="#collabEdgeIntra"></linearGradient>
          <!-- Center anchor node fill -->
          <radialGradient id="collabNodeCenter" cx="0.3" cy="0.3" r="0.9">
            <stop class="collab-stop--blue-soft" offset="0"></stop>
            <stop class="collab-stop--blue" offset="0.6"></stop>
            <stop class="collab-stop--blue-deep" offset="1"></stop>
          </radialGradient>
        </defs>
        <g class="collab-links">
          <g class="collab-link collab-link--intra is-active" tabindex="0" data-title="Internal collaboration at DeCLaRe" data-percent="49.1%" data-count="82 of 167 papers" data-detail="At least two non-PI DeCLaRe members appear on the same paper. Current members and alumni are both counted as DeCLaRe members.">
            <path d="M308 218 C270 188, 250 173, 238 175"></path>
            <text x="256" y="177">49.1%</text>
          </g>
          <g class="collab-link collab-link--pi" tabindex="0" data-title="Initiated in DeCLaRe" data-percent="84.4%" data-count="141 of 167 papers" data-detail="Counted when the first author is a DeCLaRe member or the PI is first, second, or last author.">
            <path d="M350 170 C332 134, 318 106, 304 82"></path>
            <text x="342" y="122">84.4%</text>
          </g>
          <g class="collab-link collab-link--external" tabindex="0" data-title="DeCLaRe members with external collaborators" data-percent="89.8%" data-count="150 of 167 papers" data-detail="Most papers connect DeCLaRe members to broader research networks.">
            <path d="M434 222 C478 184, 518 176, 548 182"></path>
            <text x="486" y="166">89.8%</text>
          </g>
          <g class="collab-link collab-link--academic" tabindex="0" data-title="Academic partner papers" data-percent="98.0%" data-count="147 of 150 externally collaborative papers" data-detail="Externally collaborative papers with academic partners or public-academic collaborators.">
            <path d="M584 232 C588 296, 558 344, 520 366"></path>
            <text x="548" y="310">98.0%</text>
          </g>
          <g class="collab-link collab-link--industry" tabindex="0" data-title="Industry partner papers" data-percent="21.3%" data-count="32 of 150 externally collaborative papers" data-detail="Externally collaborative papers with industry partners. Mixed academic-industry papers are counted here.">
            <path d="M606 234 C646 286, 662 330, 656 366"></path>
            <text x="650" y="308">21.3%</text>
          </g>
          <g class="collab-link collab-link--theme" tabindex="0" data-title="Multi-theme papers" data-percent="70.1%" data-count="117 of 167 papers" data-detail="Most papers connect more than one DeCLaRe research theme.">
            <path d="M330 300 C292 340, 262 360, 238 364"></path>
            <text x="265" y="348">70.1%</text>
          </g>
        </g>

        <g class="collab-node collab-node--archive" transform="translate(370 240)">
          <circle class="collab-node__halo" r="90"></circle>
          <circle r="72"></circle>
          <text text-anchor="middle"><tspan x="0" y="-8">Publication</tspan><tspan x="0" y="12">archive</tspan></text>
        </g>
        <g class="collab-node collab-node--current" transform="translate(185 175)">
          <circle class="collab-node__halo" r="62"></circle>
          <circle r="50"></circle>
          <text text-anchor="middle"><tspan x="0" y="-12">Internal</tspan><tspan x="0" y="7">DeCLaRe</tspan><tspan x="0" y="25">collaboration</tspan></text>
        </g>
        <g class="collab-node collab-node--pi" transform="translate(300 64)">
          <circle class="collab-node__halo" r="58"></circle>
          <circle r="48"></circle>
          <text text-anchor="middle"><tspan x="0" y="-2">Initiated</tspan><tspan x="0" y="15">in DeCLaRe</tspan></text>
        </g>
        <g class="collab-node collab-node--external" transform="translate(600 190)">
          <circle class="collab-node__halo" r="72"></circle>
          <circle r="58"></circle>
          <text text-anchor="middle"><tspan x="0" y="-10">External</tspan><tspan x="0" y="10">collaborators</tspan></text>
        </g>
        <g class="collab-node collab-node--small collab-node--academic" transform="translate(500 400)">
          <circle class="collab-node__halo" r="44"></circle>
          <circle r="36"></circle>
          <text text-anchor="middle"><tspan x="0" y="-2">Academic</tspan><tspan x="0" y="15">partners</tspan></text>
        </g>
        <g class="collab-node collab-node--small collab-node--industry" transform="translate(655 400)">
          <circle class="collab-node__halo" r="44"></circle>
          <circle r="36"></circle>
          <text text-anchor="middle"><tspan x="0" y="-2">Industry</tspan><tspan x="0" y="15">partners</tspan></text>
        </g>
        <g class="collab-node collab-node--theme" transform="translate(190 365)">
          <circle class="collab-node__halo" r="58"></circle>
          <circle r="48"></circle>
          <text text-anchor="middle"><tspan x="0" y="-2">Multi-theme</tspan><tspan x="0" y="15">papers</tspan></text>
        </g>
      </svg>

      <aside class="collab-inspector" aria-live="polite">
        <span>Selected relationship</span>
        <h3 id="collabInsightTitle">Internal collaboration at DeCLaRe</h3>
        <strong id="collabInsightPercent">49.1%</strong>
        <p id="collabInsightCount">82 of 167 papers</p>
        <p id="collabInsightDetail">At least two non-PI DeCLaRe members appear on the same paper. Current members and alumni are both counted as DeCLaRe members.</p>
      </aside>
    </div>
  </div>

  <p class="collaboration-takeaway"><strong>For students:</strong> projects often cross research themes and connect DeCLaRe-affiliated authors with academic and industry partners. The graph describes collaboration types, not individual rankings.</p>
</section>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    var map = document.querySelector(".collaboration-map");
    if (!map) return;

    var links = Array.prototype.slice.call(map.querySelectorAll(".collab-link"));
    var title = document.getElementById("collabInsightTitle");
    var percent = document.getElementById("collabInsightPercent");
    var count = document.getElementById("collabInsightCount");
    var detail = document.getElementById("collabInsightDetail");

    function selectLink(link) {
      links.forEach(function (item) {
        item.classList.remove("is-active");
      });
      link.classList.add("is-active");
      title.textContent = link.getAttribute("data-title");
      percent.textContent = link.getAttribute("data-percent");
      count.textContent = link.getAttribute("data-count");
      detail.textContent = link.getAttribute("data-detail");
    }

    links.forEach(function (link) {
      link.addEventListener("mouseenter", function () { selectLink(link); });
      link.addEventListener("focus", function () { selectLink(link); });
      link.addEventListener("click", function () { selectLink(link); });
    });
  });
</script>

<h2 id="current-openings">Current Openings</h2>

<div class="opening-list">
  <article>
    <h3>PhD Students</h3>
    <p>For applicants interested in safety, trustworthy AI, multimodal systems, AI for Science, efficient learning, or embodied AI.</p>
  </article>
  <article>
    <h3>Postdoctoral Researchers</h3>
    <p>For researchers with a strong publication record and a clear agenda connected to the lab's themes.</p>
  </article>
  <article>
    <h3>Research Interns and Visiting Researchers</h3>
    <p>For students and collaborators who can contribute to focused projects, benchmarks, demos, or open-source releases.</p>
  </article>
</div>

<h2 id="expected-backgrounds">Expected Backgrounds</h2>

<p>Strong candidates often have experience in one or more of the following:</p>

<div class="name-list">
  <span>Machine learning</span>
  <span>Natural language processing</span>
  <span>Computer vision</span>
  <span>Audio and speech</span>
  <span>Robotics or embodied AI</span>
  <span>AI for Science</span>
  <span>Efficient learning</span>
  <span>Human-computer interaction</span>
  <span>AI safety and alignment</span>
  <span>Open-source engineering</span>
</div>

<h2 id="how-to-apply">How to Apply</h2>

<p>Please review the lab's <a href="https://drive.google.com/file/d/10lmu5YGDzr2Yw6kBFWwe7ifZ9Ec9WCl1/view?usp=sharing">research slides</a>, browse recent <a href="/publications/">publications</a>, and identify the research directions that genuinely connect with your interests.</p>

<p>Send a concise email to <code>soujanya [dot] poria [at] ntu [dot] edu [dot] sg</code> with your CV, transcript if applicable, representative work, and a short note on the projects you would like to pursue.</p>

<h2 id="faq">FAQ</h2>

<div class="faq-list">
  <article>
    <h3>Should I email before applying formally?</h3>
    <p>Yes, a short, specific email is helpful. Mention the lab theme or paper that connects to your interests.</p>
  </article>
  <article>
    <h3>Do I need prior publications?</h3>
    <p>Publications help, but strong engineering ability, research taste, and evidence of persistence also matter.</p>
  </article>
  <article>
    <h3>Can I propose a new direction?</h3>
    <p>Yes. The best proposals still connect clearly to DeCLaRe Lab's core agenda.</p>
  </article>
</div>

</div>

<aside class="section-nav" aria-label="Join page sections">
  <span>Sections</span>
  <div>
    <a href="#why-join-declare-lab">Why Join</a>
    <a href="#collaboration-structure">Collaboration</a>
    <a href="#current-openings">Openings</a>
    <a href="#expected-backgrounds">Backgrounds</a>
    <a href="#how-to-apply">How to Apply</a>
    <a href="#faq">FAQ</a>
  </div>
</aside>
</div>
