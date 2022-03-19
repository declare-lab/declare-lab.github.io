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
  - image_path: /assets/images/people/rada.jpg
    excerpt: "Rada Mihalcea" 
  - image_path: /assets/images/people/soujanya.JPG
    excerpt: "Soujanya Poria"
---

## <spani>CICERO</spani>: A Dataset for Contextualized Commonsense Inference in Dialogues (ACL 2022)

<a href="" target="_blank" class="btn btn--success btn--large" role="button">Paper</a> 
<a href="https://github.com/declare-lab/CICERO" target="_blank" class="btn btn--warning btn--large" role="button">Code</a>
<a href="https://github.com/declare-lab/CICERO/master/data/" target="_blank" class="btn btn--info btn--large" role="button">Dataset</a>

<p> <strong> Announcing <spano>CICERO</spano>, a new Dataset for Contextualized Commonsense Inference in Dialogues. </strong> </p>


<p><spano>CICERO</spano> contains 53,000 inferences for five commonsense dimensions -- cause, subsequent event, prerequisite, motivation, and emotional reaction -- collected from 5600 dialogues. We design two challenging generative and multi-choice alternative selection tasks for the state-of-the-art NLP models to solve.</p>

![image-center](/assets/images/resources/cicero.png){: .width-paper-image-100 .align-center}

### Citation

If this dataset is useful in your research, cite the following paper:

<div class="notice--success">
    <p> <spano>CICERO</spano>: A Dataset for Contextualized Commonsense Inference in Dialogues. Deepanway Ghosal and Siqi Shen and Navonil Majumder and Rada Mihalcea and Soujanya Poria. ACL 2022.</p>
</div>

### Leaderboard (<spano>CICERO</spano><sub>NLG</sub>: Answer Generation Task)

<p>If you wonder how to report results on <spano>CICERO</spano> and easily compare with the other models for the task <spano>CICERO</spano><sub>NLG</sub>, refer to Table 10 in the paper and corresponding discussions. The following leaderboard will also be updated frequently.</p>

|**Relation**           | **Model** | **BLEU1** | **BLEU2** | **METEOR** | **ROUGE** | **CIDEr** | **Sem-Sim** |
|------------------|--------------------|--------------------|--------------------|---------------------|--------------------|--------------------|----------------------|
| Cause            |                    |                    |                    |                     |                    |                    |
|                  | T5                 | 0.2874             | 0.1493             | 0.1630              | 0.2626             | 0.4560             | 0.6278               |
|                  | BART               | 0.2542             | 0.1396             | 0.1527              | 0.2586             | 0.4241             | 0.6224               |
|                  | COMET              | **0.2762**             | 0.1518             | 0.1580              | 0.2652             | 0.4486             | 0.6253               |
|                  | GLUCOSE-T5         | 0.2935             | **0.1563**             | **0.1634**              | **0.2707**             | **0.4915**             | **0.6305**               |
| Subsequent Event |                    |                    |                    |                     |                    |                    |
|                  | T5                 | **0.3083**             | **0.1619**             | **0.1662**              | 0.2760             | 0.4119             | 0.6276               |
|                  | BART               | 0.2926             | 0.1484             | 0.1608              | 0.2670             | 0.3681             | 0.6166               |
|                  | COMET              | 0.3053             | 0.1565             | 0.1588              | 0.2730             | 0.3850             | 0.6211               |
|                  | GLUCOSE-T5         | 0.3000             | 0.1611             | 0.1628              | **0.2778**             | **0.4430**             | **0.6297**               |
| Reaction         |                    |                    |                    |                     |                    |                    |
|                  | T5                 | **0.3410**             | **0.2397**             | **0.1939**              | **0.3720**             | 0.5177             | **0.6665**               |
|                  | BART               | 0.3320             | 0.2297             | 0.1869              | 0.3531             | 0.4575             | 0.6575               |
|                  | COMET              | 0.3338             | 0.2273             | 0.1815              | 0.3406             | 0.2662             | 0.6520               |
|                  | GLUCOSE-T5         | 0.3283             | 0.2318             | 0.1903              | 0.3716             | **0.5364**             | 0.6653               |
| Prerequisite     |                    |                    |                    |                     |                    |                    |
|                  | T5                 | 0.1826             | 0.1002             | 0.1282              | 0.2176             | 0.3357             | **0.5902**               |
|                  | BART               | 0.1817             | 0.1020             | 0.1260              | 0.2118             | **0.3401**             | 0.5804               |
|                  | COMET              | **0.2115**             | **0.1145**             | 0.1296              | 0.2168             | 0.3064             | 0.5815               |
|                  | GLUCOSE-T5         | 0.1812             | 0.1001             | **0.1299**              | **0.2197**             | 0.3144             | 0.5896               |
| Motivation       |                    |                    |                    |                     |                    |                    |
|                  | T5                 | 0.3462             | 0.2503             | 0.1998              | 0.3781             | 0.7109             | 0.6973               |
|                  | BART               | 0.3497             | 0.2482             | 0.1961              | 0.3709             | 0.6434             | 0.6914               |
|                  | COMET              | 0.3428             | 0.2381             | 0.1935              | 0.3649             | 0.6286             | 0.6962               |
|                  | GLUCOSE-T5         | **0.3546**             | **0.2582**             | **0.2037**             | **0.3840**             | **0.7499**             | **0.7048**               |

### Leaderboard (<spano>CICERO</spano><sub>MCQ</sub>: Answer Selection Task)

<p>If you wonder how to report results on <spano>CICERO</spano> and easily compare with the other models, refer to Table 14 in the paper and corresponding discussions. We sort the results based on the models' performance on the entire dataset. This leaderboard will also be updated frequently.</p>

| Model | Trained on | Evaluated On | Single+Multi-answers Accuracy | Single-answer Accuracy | Multiple-answers Accuracy
| :---: |   :---: |  :---:      |     :---:      |          :---: |        :---: |
| T5-large | Entire Dataset | Entire Dataset |  **77.68** | 92.71 |  3.38 |
| Unified QA Large| Entire Dataset | Entire Dataset | 77.51 | 92.45 |  3.60 |
| Unified QA Large | Single-answer subset| Single-answer subset | NA | **95.70** | NA |
| T5-large | Single-answer subset | Single-answer subset| NA | 95.54 | NA |
| ELECTRA-large| Single-answer subset | Single-answer subset  | NA  | 86.82      | NA |
| RoBERTa-large | Multiple-answers subset| Multiple-answers subset   | NA    | 83.28    | NA |
| Unified QA Large | Multiple-answers subset | Multiple-answers subset | NA | 24.33 | **24.33** |
| T5-large | Multiple-answers subset | Multiple-answers subset | NA | 20.62 | 20.62 |
    
### Authors
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

<div class="rowcus">
  <div class="columncus">
    <img src="/assets/images/people/deepanway.jpeg" alt="Deepanway Ghosal" style="width:100%">
<!--     <figcaption align="center">Deepanway Ghosal</figcaption> -->
  </div>
  <div class="columncus">
    <img src="/assets/images/people/siqi.jpeg" alt="Siqi Shen" style="width:100%">
<!--     <figcaption>Siqi Shen</figcaption> -->
  </div>
  <div class="columncus">
    <img src="/assets/images/people/navo.jpg" alt="Navonil Majumder" style="width:100%">
<!--     <figcaption>Navonil Majumder</figcaption> -->
  </div>
  <div class="columncus">
    <img src="/assets/images/people/rada.jpg" alt="Rada Mihalcea" style="width:100%">
<!--     <figcaption>Rada Mihalcea</figcaption> -->
  </div>
  <div class="columncus">
    <img src="/assets/images/people/soujanya.JPG" alt="Soujanya Poria" style="width:100%">
<!--     <figcaption>Soujanya Poria</figcaption> -->
  </div>
</div>
