---
layout: single
title: "Research Themes"
permalink: /research/
author_profile: false
related: false
toc: false
classes: wide
---

<div class="page-flow">

<h2 id="safety" data-section-label="01">Safety</h2>

<p class="theme-brief">A model that behaves safely in evaluation can stop behaving safely once it is fine-tuned, narrowed to one job, or pushed by an adversary. We study whether safety survives those conditions: whether a task-specific agent refuses what falls outside its remit, whether alignment persists after adaptation, and how it can be restored or steered at test time without giving up capability.</p>

<div class="theme-works">
  <article class="theme-work">
    <span class="theme-work__meta">Operational safety</span>
    <div class="theme-work__copy">
      <h3>OffTopicEval</h3>
      <p>An evaluation suite measuring whether LLM agents accept valid in-domain requests and refuse out-of-domain ones.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2509.26495">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Alignment</span>
    <div class="theme-work__copy">
      <h3>Safety Arithmetic</h3>
      <p>A test-time framework for steering language models toward safer behavior through parameters and activations.</p>
      <div class="project-links"><a href="https://aclanthology.org/2024.emnlp-main.1212/">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Re-alignment</span>
    <div class="theme-work__copy">
      <h3>RESTA</h3>
      <p>Restoring safety in fine-tuned language models through task arithmetic while retaining downstream capability.</p>
      <div class="project-links"><a href="https://aclanthology.org/2024.acl-long.762">Paper</a><a href="https://github.com/declare-lab/resta">Code</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Red-teaming</span>
    <div class="theme-work__copy">
      <h3>Chain of Utterances</h3>
      <p>RED-EVAL and Chain-of-Utterances prompting for probing harmful behavior and studying safety alignment.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2308.09662">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Bias analysis</span>
    <div class="theme-work__copy">
      <h3>Gender Bias in BERT</h3>
      <p>A highly cited analysis of gender bias encoded in contextualized language representations.</p>
      <div class="project-links"><a href="https://doi.org/10.1007/s12559-021-09881-2">Paper</a></div>
    </div>
  </article>
</div>

<h2 id="trustworthiness" data-section-label="02">Trustworthiness</h2>

<p class="theme-brief">A fluent answer and a trustworthy one are not the same thing. We work on systems that ground what they say in retrieved evidence, attribute it honestly, decline when the evidence will not support an answer, and — where several agents cooperate — calibrate how much they should rely on one another.</p>

<div class="theme-works">
  <article class="theme-work">
    <span class="theme-work__meta">Retrieval-augmented generation</span>
    <div class="theme-work__copy">
      <h3>Trust-Score and Trust-Align</h3>
      <p>Trust-Score evaluates RAG trustworthiness; Trust-Align improves grounded attribution, refusal, and citation quality.</p>
      <div class="project-links"><a href="https://proceedings.iclr.cc/paper_files/paper/2025/hash/4c88827decab6c046b881a2c3a99c76f-Abstract-Conference.html">Paper</a><a href="https://github.com/declare-lab/trust-align">Code</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Grounded generation</span>
    <div class="theme-work__copy">
      <h3>Chain-of-Knowledge</h3>
      <p>A highly cited framework for grounding generation through dynamic knowledge adaptation over heterogeneous sources.</p>
      <div class="project-links"><a href="https://proceedings.iclr.cc/paper_files/paper/2024/hash/285ba60a67a66d2efeeb7cb25c5067fe-Abstract-Conference.html">Paper</a><a href="https://openreview.net/pdf?id=cPgh4gWZlz">PDF</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Multi-agent trust</span>
    <div class="theme-work__copy">
      <h3>Epistemic Context Learning</h3>
      <p>Trust formation and calibrated reliance in LLM-based multi-agent systems.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2601.21742">Paper</a></div>
    </div>
  </article>
</div>

<h2 id="multimodality" data-section-label="03">Multimodality</h2>

<p class="theme-brief">Meaning arrives through words, voice, face, and scene at once, and a model that reads only one channel misses most of it. We study how to fuse those channels — separating what they share from what belongs to each — and how to generate in them, from emotion in multi-party conversation to text-to-audio synthesis.</p>

<div class="theme-works">
  <article class="theme-work">
    <span class="theme-work__meta">Conversational AI</span>
    <div class="theme-work__copy">
      <h3>MELD and DialogueRNN</h3>
      <p>Highly cited resources and models for multimodal, multi-party emotion recognition in conversations.</p>
      <div class="project-links"><a href="https://aclanthology.org/P19-1050/">MELD</a><a href="https://ojs.aaai.org/index.php/AAAI/article/view/4657">DialogueRNN</a><a href="https://github.com/declare-lab/MELD">Dataset</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Representation and fusion</span>
    <div class="theme-work__copy">
      <h3>TFN, MISA, and Multimodal-Infomax</h3>
      <p>Foundational work on modality interaction, invariant and specific representations, and robust multimodal sentiment analysis.</p>
      <div class="project-links"><a href="https://aclanthology.org/D17-1115/">TFN</a><a href="https://dl.acm.org/doi/10.1145/3394171.3413678">MISA</a><a href="https://aclanthology.org/2021.emnlp-main.723/">Multimodal-Infomax</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Audio generation</span>
    <div class="theme-work__copy">
      <h3>Tango and TangoFlux</h3>
      <p>Text-to-audio generation spanning diffusion-based synthesis and fast preference-optimized flow matching.</p>
      <div class="project-links"><a href="https://doi.org/10.1145/3581783.3612348">Tango</a><a href="https://arxiv.org/abs/2412.21037">TangoFlux</a></div>
    </div>
  </article>
</div>

<h2 id="ai-for-science" data-section-label="04">AI for Science</h2>

<p class="theme-brief">We ask whether language models can do more than summarize the literature — whether they can propose hypotheses a scientist would think worth testing. Measuring that claim honestly is half the problem, so we build benchmarks that check whether a model rediscovers findings deliberately held out of its training data.</p>

<div class="theme-works">
  <article class="theme-work">
    <span class="theme-work__meta">Scientific discovery</span>
    <div class="theme-work__copy">
      <h3>MOOSE-Chem</h3>
      <p>A benchmark and framework testing whether LLMs can rediscover valid chemistry hypotheses from background literature.</p>
      <div class="project-links"><a href="https://proceedings.iclr.cc/paper_files/paper/2025/hash/51fd9a7d1706023cb9f8210cc6ac357c-Abstract-Conference.html">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Hypothesis discovery</span>
    <div class="theme-work__copy">
      <h3>Open-Domain Scientific Hypotheses</h3>
      <p>Methods for automated scientific hypothesis discovery across broad literature collections.</p>
      <div class="project-links"><a href="https://aclanthology.org/2024.findings-acl.804/">Paper</a></div>
    </div>
  </article>
</div>

<h2 id="efficiency" data-section-label="05">Efficiency</h2>

<p class="theme-brief">Capability that is too expensive to train, serve, or remember does not reach anyone. We work on getting more from a fixed budget: compact online memory instead of ever-longer context, learned data selection instead of simply more data, merging instead of retraining, and exact linear-time attention for long inputs.</p>

<div class="theme-works">
  <article class="theme-work">
    <span class="theme-work__meta">Online memory</span>
    <div class="theme-work__copy">
      <h3>δ-mem</h3>
      <p>A lightweight online memory that compresses history into a compact state and uses it to modulate a frozen model.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2605.12357">Paper</a><a href="https://github.com/declare-lab/delta-Mem">Code</a><a href="/lab-notes/delta-mem/">Lab note</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Data selection</span>
    <div class="theme-work__copy">
      <h3>Data Agent</h3>
      <p>End-to-end dynamic data selection that learns sample-wise policies to accelerate training while preserving accuracy.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2603.07433">Paper</a><a href="https://github.com/Jackbrocp/Data-Agent">Code</a><a href="/lab-notes/data-centric-training-part-i/">Lab note</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Model merging</span>
    <div class="theme-work__copy">
      <h3>DELLA-Merging</h3>
      <p>Magnitude-based sampling to reduce interference when merging task-specialized language models.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2406.11617">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Linear attention</span>
    <div class="theme-work__copy">
      <h3>EFLA</h3>
      <p>Error-Free Linear Attention derives an exact continuous-time solution for robust long-context computation.</p>
      <div class="project-links"><a href="https://arxiv.org/abs/2512.12602">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Efficient adaptation</span>
    <div class="theme-work__copy">
      <h3>PromptDistill, LLM-Adapters, UDApter</h3>
      <p>Efficient inference, parameter-efficient fine-tuning, and adapter-based transfer for language and speech models.</p>
      <div class="project-links"><a href="/publications/?q=PromptDistill">PromptDistill</a><a href="/publications/?q=LLM-Adapters">LLM-Adapters</a><a href="/publications/?q=UDApter">UDApter</a></div>
    </div>
  </article>
</div>

<h2 id="embodied-ai" data-section-label="06">Embodied AI</h2>

<p class="theme-brief">Language and vision only matter to a robot if they end in the right action. We build compact vision-language-action models that ground perception in behavior, and evaluations that test the whole path — from what the agent sees, through what it decides, to what it actually does.</p>

<div class="theme-works">
  <article class="theme-work">
    <span class="theme-work__meta">Vision-language-action</span>
    <div class="theme-work__copy">
      <h3>NORA and NORA 1.5</h3>
      <p>Small generalist vision-language-action models for efficient action grounding and dependable embodied behavior.</p>
      <div class="project-links"><a href="/nora/">Project</a><a href="/nora-1.5/">NORA 1.5</a><a href="https://arxiv.org/abs/2504.19854">Paper</a></div>
    </div>
  </article>
  <article class="theme-work">
    <span class="theme-work__meta">Interactive evaluation</span>
    <div class="theme-work__copy">
      <h3>Emma-X and Perception-to-Action</h3>
      <p>Embodied foundation models and benchmarks evaluating how agents move from visual reasoning to action.</p>
      <div class="project-links"><a href="https://aclanthology.org/2025.acl-long.695/">Emma-X</a><a href="https://arxiv.org/abs/2602.21015">Benchmark</a></div>
    </div>
  </article>
</div>

</div>
