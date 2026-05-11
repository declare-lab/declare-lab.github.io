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
    <p class="eyebrow">Deep Cognition and Language Research Lab</p>
    <h1>Research in Safe, Trustworthy, Multimodal AI</h1>
    <p class="declare-hero__subhead">DeCLaRe Lab studies language, multimodal, and interactive AI systems across six themes: Safety, Trustworthiness, Multimodality, AI for Science, Efficiency, and Embodied AI.</p>
    <div class="hero-actions">
      <a class="btn-primary" href="/research/">Research Themes</a>
      <a class="btn-secondary" href="/publications/">Publications</a>
      <a class="btn-secondary" href="https://github.com/declare-lab" target="_blank" rel="noopener">GitHub</a>
      <a class="btn-secondary" href="https://drive.google.com/file/d/10lmu5YGDzr2Yw6kBFWwe7ifZ9Ec9WCl1/view?usp=sharing" target="_blank" rel="noopener">Research Slides</a>
    </div>
  </div>
  <div class="declare-hero__visual" aria-label="DeCLaRe Lab research map">
    <div class="research-map">
      <img class="research-map__logo research-map__logo--light" src="/assets/images/logos/square-light.png" alt="DeCLaRe Lab logo">
      <img class="research-map__logo research-map__logo--dark" src="/assets/images/logos/square-dark.png" alt="DeCLaRe Lab logo">
      <a class="research-node research-node--safety" href="/research/#safety">Safety</a>
      <a class="research-node research-node--trustworthiness" href="/research/#trustworthiness">Trustworthiness</a>
      <a class="research-node research-node--multimodality" href="/research/#multimodality">Multimodality</a>
      <a class="research-node research-node--science" href="/research/#ai-for-science">AI for Science</a>
      <a class="research-node research-node--efficiency" href="/research/#efficiency">Efficiency</a>
      <a class="research-node research-node--embodied" href="/research/#embodied-ai">Embodied AI</a>
    </div>
  </div>
</section>

<nav class="home-index" aria-label="Homepage sections">
  <div class="home-index__links">
    <a href="#about">About</a>
    <a href="#logo">Logo</a>
    <a href="#research-areas">Research Areas</a>
    <a href="#representative-work">Representative Work</a>
    <a href="#hot-papers">Hot Papers 🔥</a>
    <a href="#funded-projects">Funded Projects</a>
  </div>
</nav>

<section class="declare-intro" id="about">
  <div>
    <p class="eyebrow">About DeCLaRe Lab</p>
    <h2>Deep Cognition and Language Research</h2>
  </div>
  <div>
    <p>DeCLaRe stands for Deep Cognition and Language Research. The lab was established at the Singapore University of Technology and Design in 2019 by Soujanya Poria, with Navonil Majumder, Devamanyu Hazarika, and Deepanway Ghosal as founding members. In 2025, DeCLaRe Lab moved to Nanyang Technological University.</p>
    <p>Today the lab works on methods, benchmarks, and open research artifacts for language, vision, audio, video, knowledge, and action, with the goal of building AI systems that are capable, grounded, interpretable, and robust in settings that require more than benchmark accuracy.</p>
  </div>
</section>

<section class="logo-story" id="logo">
  <div>
    <p class="work-kicker">Lab identity</p>
    <h2>The meaning behind the DeCLaRe logo</h2>
    <p>The robot-like structure recalls an old computer and illustrates DeCLaRe in Mandarin. The colored eyes point to the lab's interest in machines that understand affect: the logo frames cognition and language as ways to infuse machines with richer emotional and social understanding.</p>
  </div>
  <a href="/assets/images/resources/logo-explanation.png" aria-label="Open DeCLaRe logo explanation">
    <img src="/assets/images/resources/logo-explanation.png" alt="Explanation of the DeCLaRe Lab logo">
  </a>
</section>

<section class="declare-section declare-section--compact" id="research-areas">
  <div class="declare-section__header">
    <div>
      <p class="work-kicker">Research themes</p>
      <h2>Research Areas</h2>
      <p class="section-note">Six connected themes that organize the lab's current work.</p>
    </div>
  </div>
  <div class="pillar-grid pillar-grid--compact">
    <a class="pillar-card" href="/research/#safety">
      <span>01</span>
      <h3>Safety</h3>
      <p>Operational safety, red-teaming, refusal behavior, and alignment interventions.</p>
    </a>
    <a class="pillar-card" href="/research/#trustworthiness">
      <span>02</span>
      <h3>Trustworthiness</h3>
      <p>Grounded attribution, reliable RAG, uncertainty, and citation-aware responses.</p>
    </a>
    <a class="pillar-card" href="/research/#multimodality">
      <span>03</span>
      <h3>Multimodality</h3>
      <p>Language, vision, audio, and video models for reasoning and interaction.</p>
    </a>
    <a class="pillar-card" href="/research/#ai-for-science">
      <span>04</span>
      <h3>AI for Science</h3>
      <p>Scientific hypothesis discovery, chemistry, and literature-grounded reasoning.</p>
    </a>
    <a class="pillar-card" href="/research/#efficiency">
      <span>05</span>
      <h3>Efficiency</h3>
      <p>Data selection, adapters, token pruning, and compact model training.</p>
    </a>
    <a class="pillar-card" href="/research/#embodied-ai">
      <span>06</span>
      <h3>Embodied AI</h3>
      <p>Vision-language-action systems, action grounding, and interactive evaluation.</p>
    </a>
  </div>
</section>

<section class="declare-section declare-featured" id="representative-work">
  <div class="declare-section__header">
    <div>
      <p class="work-kicker">Projects</p>
      <h2>Representative Work</h2>
      <p class="section-note">Recent work and long-running research lines across the lab's themes.</p>
    </div>
    <a class="btn-secondary" href="/research/">All research</a>
  </div>
  <div class="project-grid project-grid--featured">
    <article class="project-card project-card--large">
      <img src="/assets/images/logos/jailbreakprompt_main_paper.png" alt="Safety evaluation visual">
      <div class="project-card__body">
        <span class="project-tag">Safety</span>
        <h3>OffTopicEval and Safety Arithmetic</h3>
        <p>Evaluation and intervention methods for task-boundary violations, refusal behavior, and test-time safety alignment in language models.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2509.26495">OffTopicEval</a>
          <a href="https://aclanthology.org/2024.emnlp-main.1212/">Safety Arithmetic</a>
        </div>
      </div>
    </article>
    <article class="project-card project-card--large">
      <img src="/assets/images/research/qa2.png" alt="Trustworthy RAG visual">
      <div class="project-card__body">
        <span class="project-tag">Trustworthiness</span>
        <h3>Trust-Score and Trust-Align</h3>
        <p>Metrics and alignment methods for grounded attribution, citation quality, and refusal in retrieval-augmented generation.</p>
        <div class="project-links">
          <a href="https://proceedings.iclr.cc/paper_files/paper/2025/hash/4c88827decab6c046b881a2c3a99c76f-Abstract-Conference.html">Paper</a>
          <a href="https://github.com/declare-lab/trust-align">Code</a>
        </div>
      </div>
    </article>
    <article class="project-card">
      <img src="/assets/images/resources/meld.png" alt="Multimodal dataset visual">
      <div class="project-card__body">
        <span class="project-tag">Multimodality</span>
        <h3>MELD, TFN, MISA, DialogueRNN</h3>
        <p>Foundational datasets and models for multimodal emotion, sentiment, fusion, and conversational understanding.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/P19-1050/">MELD</a>
          <a href="https://aclanthology.org/D17-1115/">TFN</a>
        </div>
      </div>
    </article>
    <article class="project-card">
      <img src="/assets/images/research/moose-chem.png" alt="MOOSE-Chem visual">
      <div class="project-card__body">
        <span class="project-tag">AI for Science</span>
        <h3>MOOSE-Chem</h3>
        <p>A benchmark and framework for studying LLM-based rediscovery of chemistry hypotheses from scientific literature.</p>
        <div class="project-links">
          <a href="https://proceedings.iclr.cc/paper_files/paper/2025/hash/51fd9a7d1706023cb9f8210cc6ac357c-Abstract-Conference.html">Paper</a>
        </div>
      </div>
    </article>
    <article class="project-card">
      <img src="/assets/images/research/data-agent.png" alt="Data Agent visual">
      <div class="project-card__body">
        <span class="project-tag">Efficiency</span>
        <h3>Data Agent</h3>
        <p>End-to-end dynamic data selection for learning sample-wise policies that improve training efficiency.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2603.07433">Paper</a>
          <a href="/publications/?q=efficient">Related work</a>
        </div>
      </div>
    </article>
    <article class="project-card">
      <img src="/assets/images/nora-1.5-arxiv-teaser.png" alt="NORA embodied AI teaser">
      <div class="project-card__body">
        <span class="project-tag">Embodied AI</span>
        <h3>NORA and NORA 1.5</h3>
        <p>Compact vision-language-action models and reward-guided post-training for embodied tasks.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2504.19854">Paper</a>
          <a href="/nora.html">Project</a>
          <a href="/nora-1.5.html">NORA 1.5</a>
        </div>
      </div>
    </article>
  </div>
</section>

<section class="declare-section hot-papers" id="hot-papers">
  <div class="declare-section__header">
    <div>
      <p class="work-kicker">Publications</p>
      <h2>Hot Papers 🔥</h2>
      <p class="section-note">Selected recent and highly cited papers.</p>
    </div>
    <a class="btn-secondary" href="/publications/">Publication archive</a>
  </div>
  <div class="hot-paper-list">
    <article>
      <span>ICLR 2026</span>
      <h3>OffTopicEval: When Large Language Models Enter the Wrong Chat, Almost Always!</h3>
      <p>Operational safety and task-boundary evaluation for LLM agents.</p>
    </article>
    <article>
      <span>ICLR 2025</span>
      <h3>Measuring and Enhancing Trustworthiness of LLMs in RAG</h3>
      <p>Trust-Score, Trust-Align, grounded attributions, citations, and refusal.</p>
    </article>
    <article>
      <span>ICLR 2025</span>
      <h3>MOOSE-Chem: LLMs for Rediscovering Chemistry Scientific Hypotheses</h3>
      <p>AI for Science through literature-grounded chemistry hypothesis rediscovery.</p>
    </article>
    <article>
      <span>ICML 2026</span>
      <h3>Data Agent: Learning to Select Data via End-to-End Dynamic Optimization</h3>
      <p>Efficient training through dynamic data selection.</p>
    </article>
    <article>
      <span>2025</span>
      <h3>NORA: A Small Open-Sourced Generalist Vision Language Action Model</h3>
      <p>Efficient embodied AI and action grounding.</p>
    </article>
    <article>
      <span>ACL / EMNLP / AAAI / ACM MM</span>
      <h3>MELD, Tensor Fusion Network, DialogueRNN, and MISA</h3>
      <p>Established multimodal and conversational AI foundations.</p>
    </article>
  </div>
</section>

<section class="declare-section funded-projects" id="funded-projects">
  <div class="declare-section__header">
    <div>
      <p class="work-kicker">Research support</p>
      <h2>Funded Projects</h2>
      <p class="section-note">Current and recent research support.</p>
    </div>
    <a class="btn-secondary" href="/join/">Join the lab</a>
  </div>
  <div class="funding-list">
    <article>
      <span>CNRS@CREATE / NRF · 2026-2029</span>
      <h3>Embodied Foundational Models</h3>
      <p>Total S$10M; awarded S$3.33M. Research on embodied foundation models and generalist interactive AI.</p>
    </article>
    <article>
      <span>KLASS · 2026-2028</span>
      <h3>Toward Generalist Vision Language Action Models</h3>
      <p>S$1.5M support for vision-language-action models, action grounding, and embodied evaluation.</p>
    </article>
    <article>
      <span>Google DeepMind · 2026</span>
      <h3>Google DeepMind GCP Grant</h3>
      <p>S$100K compute support for large-scale language, multimodal, and agentic AI research.</p>
    </article>
    <article>
      <span>Meta · 2025</span>
      <h3>Meta Audiobox Research Grant</h3>
      <p>S$70K support for audio generation and multimodal generative modeling research.</p>
    </article>
    <article>
      <span>DSO · 2023-2026</span>
      <h3>Prevent Hallucination in LLMs</h3>
      <p>S$800K support for grounded, reliable, and trustworthy language model generation.</p>
    </article>
    <article>
      <span>AI Singapore · 2024-2026</span>
      <h3>AI Governance Grant</h3>
      <p>S$500K support for responsible AI, governance, and evaluation of deployed AI systems.</p>
    </article>
  </div>
</section>
