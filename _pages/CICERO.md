---
layout: single
title: ""
permalink: /CICERO/
author_profile: false
<!-- classes: wide -->
related: false
toc: true
toc_label: "Table of Contents"
toc_icon: "cogs"
toc_sticky: true

articlecolour: "#00001a"

authors:
  - image_path: /assets/images/people/deepanway.jpeg
    excerpt: "Deepanway Ghosal"
  - image_path: /assets/images/people/siqi.jpeg
    excerpt: "Siqi Shen" 
  - image_path: /assets/images/people/navo.jpg
    excerpt: "Navonil Majumder"
authors2:
  - image_path: /assets/images/people/rada.jpg
    excerpt: "Rada Mihalcea" 
  - image_path: /assets/images/people/soujanya.JPG
    excerpt: "Soujanya Poria"
---

## Contextualized Commonsense Inference in Dialogues (CICERO)

The purpose of this repository is to introduce new dialogue-level commonsense inference datasets and tasks. We chose dialogues as the data source because dialogues are known to be complex and rich in commonsense. At present, we have released two versions of the dataset:

## CICERO-v1

<h1> <spani>CICERO</spani>: A Dataset for Contextualized Commonsense Inference in Dialogues (ACL 2022) </h1>

<a href="https://arxiv.org/pdf/2203.13926.pdf" target="_blank" class="btn btn--success btn--large" role="button">Paper</a> 
<a href="https://github.com/declare-lab/CICERO/tree/main/v1/" target="_blank" class="btn btn--warning btn--large" role="button">Code</a>
<a href="https://github.com/declare-lab/CICERO/releases/download/v1.0.0/data.zip" target="_blank" class="btn btn--info btn--large" role="button">Dataset</a>


<p><spano>CICERO</spano> contains 53,000 inferences for five commonsense dimensions -- cause, subsequent event, prerequisite, motivation, and emotional reaction -- collected from 5600 dialogues. We design two challenging generative and multi-choice alternative selection tasks for the state-of-the-art NLP models to solve.</p>

![image-center](/assets/images/resources/cicero.png){: .width-paper-image-100 .align-center}

## CICERO-v2

<h1>Multiview Contextual Commonsense Inference: A New Dataset and Task</h1>

<a href="." target="_blank" class="btn btn--success btn--large" role="button">Paper</a> 
<a href="https://github.com/declare-lab/CICERO/tree/main/v2/" target="_blank" class="btn btn--warning btn--large" role="button">Code</a>
<a href="https://github.com/declare-lab/CICERO/releases/download/v2.0.0/data.zip" target="_blank" class="btn btn--info btn--large" role="button">Dataset</a>

Depending on a situation, multiple different reasonings are possible each leading to various unique inferences. In constructing CICERO-v2, we asked annotators to write more than one plausible inference for each dialogue context. We call this task --- Multiview Contextual Commonsense Inference, a highly challenging task for large language models. CICERO-v2 contains more than 8000 dialogue contexts each manually annotated with more than one plausible inferences for the following relation types: cause, subsequent event, emotional reaction, motivation.

![image-center](/assets/images/resources/cicerov2.png){: .width-paper-image-100 .align-center}

## Citation

If these datasets are useful in your research, cite the following papers:

<div class="notice--success">
    <p> <spano>CICERO</spano>: A Dataset for Contextualized Commonsense Inference in Dialogues. Deepanway Ghosal and Siqi Shen and Navonil Majumder and Rada Mihalcea and Soujanya Poria. ACL 2022.</p>
</div>

<div class="notice--success">
    <p> Multiview Contextual Commonsense Inference: A New Dataset and Task. Siqi Shen and Deepanway Ghosal and Navonil Majumder and Henry Lim and Rada Mihalcea and Soujanya Poria. Arxiv 2022.</p>
</div>
    
<!-- ### Authors

{% include feature_row id="authors" %}
{% include feature_row id="authors2" %} -->
<!-- <div class="containerimage">
	<img src="/assets/images/people/deepanway.jpeg">
	<figcaption>Deepanway Ghosal</figcaption>
	<img src="/assets/images/people/siqi.jpeg">
	<figcaption>Siqi Shen</figcaption>
	<img src="/assets/images/people/navo.jpg">
	<figcaption>Navonil Majumder</figcaption>
	<img src="/assets/images/people/rada.jpg">
	<figcaption>Rada Mihalcea</figcaption>
	<img src="/assets/images/people/soujanya.JPG">
</div> -->

<!-- <div class="rowcus">
  <div class="columncus">
    <img src="/assets/images/people/deepanway.jpeg" alt="Deepanway Ghosal" style="width:100%">
	  <figcaption align="center"><a href="https://deepanwayx.github.io/">Deepanway Ghosal</a></figcaption>
  </div>
  <div class="columncus">
    <img src="/assets/images/people/siqi.jpeg" alt="Siqi Shen" style="width:100%">
	  <figcaption align="center"><a href="">Siqi Shen</a></figcaption>
  </div>
  <div class="columncus">
    <img src="/assets/images/people/navo.jpg" alt="Navonil Majumder" style="width:100%">
	  <figcaption align="center"><a href="https://nmder.info/">Navonil Majumder</a></figcaption>
  </div>
  <div class="columncus">
    <img src="/assets/images/people/rada.jpg" alt="Rada Mihalcea" style="width:100%">
	  <figcaption align="center"><a href="https://web.eecs.umich.edu/~mihalcea/">Rada Mihalcea</a></figcaption>
  </div>
  <div class="columncus">
    <img src="/assets/images/people/soujanya.JPG" alt="Soujanya Poria" style="width:100%">
	  <figcaption align="center"><a href="https://sporia.info">Soujanya Poria</a></figcaption>
  </div>
</div> -->
