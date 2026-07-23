---
layout: single
title: "Research Themes"
permalink: /research/
author_profile: false
related: false
toc: false
classes: wide
---

<section class="page-lead page-lead--compact">
  <p>DeCLaRe works across six research themes: Safety, Trustworthiness, Multimodality, AI for Science, Efficiency, and Embodied AI. Recent notable work includes online memory for LLMs, dynamic data selection for efficient ML training, vision-language-action models, text-to-audio generation, trustworthy RAG, and operational AI safety.</p>
</section>

<div class="side-layout">
<div class="side-layout__main">

<h2 id="safety" data-section-label="THEME 01">Safety</h2>

<div class="research-theme">
  <div>
    <p>We study whether AI systems behave safely inside the situations they are built for, especially when LLM agents face off-topic, adversarial, or underspecified requests.</p>
    <ul class="clean-list">
      <li>Operational safety for task-specific LLM agents</li>
      <li>Red-teaming, jailbreak analysis, and refusal behavior</li>
      <li>Test-time alignment and model steering for safer responses</li>
    </ul>
  </div>
  <div class="project-grid">
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/research/offtopiceval.png" alt="OffTopicEval operational safety evaluation visual">
      <div class="project-card__body">
        <span class="project-tag">Operational Safety</span>
        <h3>OffTopicEval</h3>
        <p>An evaluation suite for measuring whether LLM agents accept valid in-domain requests and refuse out-of-domain ones.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2509.26495">Paper</a>
        </div>
        <p class="project-team">Team: Jingdi Lei, Varun Gumma, Rishabh Bhardwaj, Seok Min Lim, Chuan Li, Amir Zadeh, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/safety-arithmetic.png" alt="Safety Arithmetic test-time steering visual">
      <div class="project-card__body">
        <span class="project-tag">Alignment</span>
        <h3>Safety Arithmetic</h3>
        <p>A test-time framework for steering language models toward safer behavior through parameters and activations.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/2024.emnlp-main.1212/">Paper</a>
        </div>
        <p class="project-team">Team: Safety and alignment group</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/resta.png" alt="RESTA safety realignment figure">
      <div class="project-card__body">
        <span class="project-tag">Safety Re-Alignment</span>
        <h3>RESTA</h3>
        <p>Restoring safety in fine-tuned language models through task arithmetic while retaining downstream task capability.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/2024.acl-long.762">Paper</a>
          <a href="https://github.com/declare-lab/resta">Code</a>
        </div>
        <p class="project-team">Team: Rishabh Bhardwaj, Do Duc Anh, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/chain-utterances.png" alt="Chain of Utterances red-teaming figure">
      <div class="project-card__body">
        <span class="project-tag">Red-Teaming</span>
        <h3>Chain of Utterances</h3>
        <p>RED-EVAL and Chain-of-Utterances prompting for probing harmful behavior and studying safety alignment in LLMs.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2308.09662">Paper</a>
        </div>
        <p class="project-team">Team: Safety and dialogue systems group</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/gender-bias-bert.png" alt="Gender bias probing figure for BERT">
      <div class="project-card__body">
        <span class="project-tag">Bias Analysis</span>
        <h3>Gender Bias in BERT</h3>
        <p>A highly cited analysis of gender bias encoded in contextualized language representations.</p>
        <div class="project-links">
          <a href="https://doi.org/10.1007/s12559-021-09881-2">Paper</a>
        </div>
        <p class="project-team">Team: Bias and responsible AI collaborators</p>
      </div>
    </article>
  </div>
</div>

<h2 id="trustworthiness" data-section-label="THEME 02">Trustworthiness</h2>

<div class="research-theme">
  <div>
    <p>We develop methods for AI systems that know when to answer, when to cite, when to refuse, and how to communicate uncertainty in grounded settings.</p>
    <ul class="clean-list">
      <li>Trustworthy retrieval-augmented generation</li>
      <li>Grounded attribution and citation-aware generation</li>
      <li>Trust calibration in multi-agent and human-facing systems</li>
    </ul>
  </div>
  <div class="project-grid">
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/research/trust-align.png" alt="Trust-Score and Trust-Align retrieval augmented generation visual">
      <div class="project-card__body">
        <span class="project-tag">RAG</span>
        <h3>Trust-Score and Trust-Align</h3>
        <p>Trust-Score evaluates RAG trustworthiness, while Trust-Align improves grounded attribution, refusal, and citation quality.</p>
        <div class="project-links">
          <a href="https://proceedings.iclr.cc/paper_files/paper/2025/hash/4c88827decab6c046b881a2c3a99c76f-Abstract-Conference.html">Paper</a>
          <a href="https://github.com/declare-lab/trust-align">Code</a>
        </div>
        <p class="project-team">Team: Maojia Song, Shang Hong Sim, Rishabh Bhardwaj, Hai Leong Chieu, Navonil Majumder, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/chain-knowledge.png" alt="Chain-of-Knowledge framework figure">
      <div class="project-card__body">
        <span class="project-tag">Grounded Generation</span>
        <h3>Chain-of-Knowledge</h3>
        <p>A highly cited framework for grounding LLM generation through dynamic knowledge adaptation over heterogeneous sources.</p>
        <div class="project-links">
          <a href="https://proceedings.iclr.cc/paper_files/paper/2024/hash/285ba60a67a66d2efeeb7cb25c5067fe-Abstract-Conference.html">Paper</a>
          <a href="https://openreview.net/pdf?id=cPgh4gWZlz">PDF</a>
        </div>
        <p class="project-team">Team: Xiang Lisa Li, Ruochen Zhao, Yew Ken Chia, Bosheng Ding, Shafiq Joty, Soujanya Poria, Lidong Bing</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/ECL.png" alt="Epistemic Context Learning visual">
      <div class="project-card__body">
        <span class="project-tag">Multi-Agent Trust</span>
        <h3>Epistemic Context Learning</h3>
        <p>Studying trust formation and calibrated reliance in LLM-based multi-agent systems.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2601.21742">Paper</a>
        </div>
        <p class="project-team">Team: Trustworthy and interactive AI group</p>
      </div>
    </article>
  </div>
</div>

<h2 id="multimodality" data-section-label="THEME 03">Multimodality</h2>

<div class="research-theme">
  <div>
    <p>Multimodality is a long-running foundation of DeCLaRe Lab: we develop models and benchmarks that integrate language, vision, audio, video, and social context.</p>
    <ul class="clean-list">
      <li>Multimodal fusion and representation learning</li>
      <li>Emotion, sentiment, sarcasm, and social signal understanding</li>
      <li>Vision-language and audio-language reasoning benchmarks</li>
    </ul>
  </div>
  <div class="project-grid">
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/resources/meld.png" alt="MELD dataset visual">
      <div class="project-card__body">
        <span class="project-tag">Conversational AI</span>
        <h3>MELD and DialogueRNN</h3>
        <p>Highly cited resources and models for multimodal, multi-party emotion recognition in conversations.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/P19-1050/">MELD</a>
          <a href="https://ojs.aaai.org/index.php/AAAI/article/view/4657">DialogueRNN</a>
          <a href="https://github.com/declare-lab/MELD">Dataset</a>
        </div>
        <p class="project-team">Team: Soujanya Poria, Devamanyu Hazarika, Navonil Majumder, collaborators</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/tfn.png" alt="Tensor Fusion Network visual">
      <div class="project-card__body">
        <span class="project-tag">Fusion</span>
        <h3>TFN, MISA, and Multimodal Fusion</h3>
        <p>Foundational work on modality interaction, invariant and specific representations, and robust multimodal sentiment analysis.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/D17-1115/">TFN</a>
          <a href="https://dl.acm.org/doi/10.1145/3394171.3413678">MISA</a>
        </div>
        <p class="project-team">Team: Multimodal learning group</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/tangoflux.png" alt="TangoFlux training pipeline figure">
      <div class="project-card__body">
        <span class="project-tag">Audio Generation</span>
        <h3>Tango and TangoFlux</h3>
        <p>Text-to-audio generation research spanning diffusion-based audio synthesis and fast preference-optimized flow matching.</p>
        <div class="project-links">
          <a href="https://doi.org/10.1145/3581783.3612348">Tango</a>
          <a href="https://arxiv.org/abs/2412.21037">TangoFlux</a>
        </div>
        <p class="project-team">Team: Audio, speech, and generative AI group</p>
      </div>
    </article>
  </div>
</div>

<h2 id="ai-for-science" data-section-label="THEME 04">AI for Science</h2>

<div class="research-theme">
  <div>
    <p>We explore how language models and agentic systems can help scientific reasoning: retrieving inspirations, forming hypotheses, ranking ideas, and synthesizing evidence.</p>
    <ul class="clean-list">
      <li>Scientific hypothesis discovery and rediscovery</li>
      <li>Chemistry-focused benchmarks and multi-agent discovery pipelines</li>
      <li>Open-domain scientific literature reasoning</li>
    </ul>
  </div>
  <div class="project-grid">
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/research/moose-chem.png" alt="MOOSE-Chem visual">
      <div class="project-card__body">
        <span class="project-tag">Scientific Discovery</span>
        <h3>MOOSE-Chem</h3>
        <p>An ICLR 2025 benchmark and framework for testing whether LLMs can rediscover valid chemistry hypotheses from background questions and literature.</p>
        <div class="project-links">
          <a href="https://proceedings.iclr.cc/paper_files/paper/2025/hash/51fd9a7d1706023cb9f8210cc6ac357c-Abstract-Conference.html">Paper</a>
        </div>
        <p class="project-team">Team: Zonglin Yang, Wanhao Liu, Ben Gao, Tong Xie, Yuqiang Li, Wanli Ouyang, Soujanya Poria, Erik Cambria, Dongzhan Zhou</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/qa.png" alt="Scientific hypothesis discovery visual">
      <div class="project-card__body">
        <span class="project-tag">Hypothesis Discovery</span>
        <h3>Open-Domain Scientific Hypotheses</h3>
        <p>LLM methods for automated scientific hypothesis discovery across broad literature collections.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/2024.findings-acl.804/">Paper</a>
        </div>
        <p class="project-team">Team: Scientific reasoning group</p>
      </div>
    </article>
  </div>
</div>

<h2 id="efficiency" data-section-label="THEME 05">Efficiency</h2>

<div class="research-theme">
  <div>
    <p>We study methods that reduce the cost of training, adaptation, and inference without compromising reliability or downstream performance.</p>
    <ul class="clean-list">
      <li>Dynamic data selection and data-efficient training</li>
      <li>Online memory, adapters, distillation, token retention, and long-context methods</li>
      <li>Compact multimodal and embodied models for practical deployment</li>
    </ul>
  </div>
  <div class="project-grid">
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/lab-notes/delta-mem/architecture.png" alt="δ-mem online memory architecture">
      <div class="project-card__body">
        <span class="project-tag">Online Memory</span>
        <h3>δ-mem</h3>
        <p>A lightweight online memory mechanism that compresses history into a compact state and uses it to modulate frozen Transformer attention.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2605.12357">Paper</a>
          <a href="https://github.com/declare-lab/delta-Mem">Code</a>
          <a href="/lab-notes/delta-mem/">Lab note</a>
        </div>
        <p class="project-team">Team: Jingdi Lei, Di Zhang, Junxian Li, Weida Wang, Kaixuan Fan, Xiang Liu, Qihan Liu, Xiaoteng Ma, Baian Chen, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/research/data-agent.png" alt="Data Agent visual">
      <div class="project-card__body">
        <span class="project-tag">Data Selection</span>
        <h3>Data Agent</h3>
        <p>An end-to-end dynamic data selection framework that learns sample-wise policies to accelerate training while preserving performance.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2603.07433">Paper</a>
          <a href="https://github.com/Jackbrocp/Data-Agent">Code</a>
          <a href="/lab-notes/data-centric-training-part-i/">Lab note</a>
        </div>
        <p class="project-team">Team: Suorong Yang, Fangjian Su, Hai Gan, Ziqi Ye, Jie Li, Baile Xu, Furao Shen, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/della-merging.png" alt="DELLA-Merging method figure">
      <div class="project-card__body">
        <span class="project-tag">Model Merging</span>
        <h3>DELLA-Merging</h3>
        <p>Magnitude-based sampling for reducing interference when merging task-specialized language models.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2406.11617">Paper</a>
        </div>
        <p class="project-team">Team: Prateek Yadav Deep, Rishabh Bhardwaj, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/efla.png" alt="EFLA linear attention figure">
      <div class="project-card__body">
        <span class="project-tag">Linear Attention</span>
        <h3>EFLA</h3>
        <p>Error-Free Linear Attention derives an exact continuous-time solution for robust long-context computation.</p>
        <div class="project-links">
          <a href="https://arxiv.org/abs/2512.12602">Paper</a>
        </div>
        <p class="project-team">Team: Jingdi Lei, Dong Zhang, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/research/qa2.png" alt="Efficient LLM visual">
      <div class="project-card__body">
        <span class="project-tag">Efficient LLMs</span>
        <h3>PromptDistill, LLM-Adapters, UDApter</h3>
        <p>Efficient inference, parameter-efficient fine-tuning, and adapter-based transfer for language and speech models.</p>
        <div class="project-links">
          <a href="/publications/?q=PromptDistill">PromptDistill</a>
          <a href="/publications/?q=LLM-Adapters">LLM-Adapters</a>
          <a href="/publications/?q=UDApter">UDApter</a>
        </div>
        <p class="project-team">Team: Efficient learning group</p>
      </div>
    </article>
  </div>
</div>

<h2 id="embodied-ai" data-section-label="THEME 06">Embodied AI</h2>

<div class="research-theme">
  <div>
    <p>We develop embodied agents that perceive, reason, and act, with emphasis on compact VLA models, action grounding, and interactive benchmarks.</p>
    <ul class="clean-list">
      <li>Vision-language-action models for robotic tasks</li>
      <li>World-model and action-based preference rewards</li>
      <li>Interactive reasoning benchmarks from perception to action</li>
    </ul>
  </div>
  <div class="project-grid">
    <article class="project-card project-card--large">
      <img loading="lazy" src="/assets/images/nora-1.5-arxiv-teaser.png" alt="NORA teaser">
      <div class="project-card__body">
        <span class="project-tag">VLA</span>
        <h3>NORA and NORA 1.5</h3>
        <p>Small generalist vision-language-action models designed for efficient action grounding and dependable embodied behavior.</p>
        <div class="project-links">
          <a href="/nora.html">Project</a>
          <a href="/nora-1.5.html">NORA 1.5</a>
          <a href="https://arxiv.org/abs/2504.19854">Paper</a>
        </div>
        <p class="project-team">Team: Chia-Yu Hung, Qi Sun, Pengfei Hong, Amir Zadeh, Chuan Li, U-Xuan Tan, Navonil Majumder, Soujanya Poria</p>
      </div>
    </article>
    <article class="project-card">
      <img loading="lazy" src="/assets/images/nora1.5-new.png" alt="Embodied AI benchmark visual">
      <div class="project-card__body">
        <span class="project-tag">Interactive Evaluation</span>
        <h3>Emma-X and Perception-to-Action</h3>
        <p>Embodied foundation models and benchmarks that evaluate how agents move from visual reasoning to action.</p>
        <div class="project-links">
          <a href="https://aclanthology.org/2025.acl-long.695/">Emma-X</a>
          <a href="https://arxiv.org/abs/2602.21015">Benchmark</a>
        </div>
        <p class="project-team">Team: Embodied AI group</p>
      </div>
    </article>
  </div>
</div>

</div>

<aside class="section-nav" aria-label="Research themes">
  <span>Themes</span>
  <div>
    <a href="#safety">Safety</a>
    <a href="#trustworthiness">Trustworthiness</a>
    <a href="#multimodality">Multimodality</a>
    <a href="#ai-for-science">AI for Science</a>
    <a href="#efficiency">Efficiency</a>
    <a href="#embodied-ai">Embodied AI</a>
  </div>
</aside>
</div>
