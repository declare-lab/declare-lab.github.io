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

---

## <spani>CICERO</spani>: A Dataset for Contextualized Commonsense Inference in Dialogues (ACL 2022)

<a href="" target="_blank" class="btn btn--success btn--large" role="button">Paper</a> 
<a href="https://github.com/declare-lab/CICERO" target="_blank" class="btn btn--warning btn--large" role="button">Code</a>
<a href="https://github.com/declare-lab/CICERO/master/data/" target="_blank" class="btn btn--info btn--large" role="button">Dataset</a>

<p style="font-size: x-large font-weight: bold"> Announcing <spano>CICERO</spano>, a new Dataset for Contextualized Commonsense Inference in Dialogues. </p>


<p><spano>CICERO</spano> contains 53,000 inferences for five commonsense dimensions -- cause, subsequent event, prerequisite, motivation, and emotional reaction -- collected from 5600 dialogues. We design two challenging generative and multi-choice alternative selection tasks for the state-of-the-art NLP models to solve.</p>

![image-center](/assets/images/resources/cicero.png){: .width-paper-image-100 .align-center}

### Citation

If this dataset is useful in your research, cite the following paper:

<div class="notice--success">
    <p> <spano>CICERO</spano>: A Dataset for Contextualized Commonsense Inference in Dialogues. Deepanway Ghosal and Siqi Shen and Navonil Majumder and Rada Mihalcea and Soujanya Poria. ACL 2022.</p>
<div>
    
## Leaderboard

<p>If you wonder how to report results on <spano>CICERO</spano> and easily compare with the other models, refer to Table 14 in the paper and corresponding discussions. The following leaderboard will also be updated frequently.</p>

| Model | Single+Multi-answer Accuracy | Single-answer Accuracy | Multiple-answers Accuracy
| :---:        |     :---:      |          :---: |        :---: |
| RoBERTa-large (S)  | NA    | 83.28    | NA |
| ELECTRA-large (S)   | NA       | 86.82      | NA |
| T5-large |  77.68 | 92.71 |  3.38 |
| Unified QA| 77.51 | 92.45 |  3.60 |
| T5-large (S) | NA | 95.54 | NA |
| Unified QA (S) | NA | 95.70 | NA |
| T5-large (M) | NA | 20.62 | NA |
| Unified QA (M) | NA | 24.33 | NA |

<p> Notes: The models listed with (S) are only trained and evaluated on the subset of <spano>CICERO</spano> that contains instances with single correct answers. These models were not trained on the instances with multiple correct answers. On the other side, the models listed with (M) are trained and evaluated on only the multiple-answers subset of <spano>CICERO</spano>. These models are neither trained nor evaluated on instances with single correct answer.</p>
    
## Authors

    
