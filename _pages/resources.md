---
layout: single
title: "Resources"
permalink: /resources/
author_profile: false
related: false
toc: true
toc_label: "Topics"
toc_icon: "cogs"
toc_sticky: true
articlecolour: "#00001a"

---

## <spani>CICERO</spani>: A Dataset for Contextualized Commonsense Inference in Dialogues

![image-center](/assets/images/resources/cicero.png){: .width-paper-image-100 .align-center}


<p>We introduced <spano> CICERO </spano>, a new dataset for dialogue reasoning with contextualized commonsense inference. It contains 53K inferences for five commonsense dimensions – cause, subsequent event, prerequisite, motivation, and emotional reaction collected from  5.6K dialogues. To show the usefulness of CICERO for dialogue reasoning, we design several challenging generative and multichoice answer selection tasks for state-of-the-art NLP models to solve.</p>
{: style="text-align: justify;"}

<a href="https://github.com/declare-lab/CICERO" target="_blank" class="btn btn--inverse btn--small" role="button">webpage</a> <a href="" target="_blank" class="btn btn--inverse btn--small" role="button">pdf</a>


<hr>

## CIDER: Commonsense Inference for Dialogue Explanation and Reasoning 

![image-center](/assets/images/resources/cider.png){: .width-paper-image-100 .align-center}


Commonsense inference to understand and explain human language is a fundamental research problem in natural language processing. Explaining human conversations poses a great challenge as it requires contextual understanding, planning, inference, and several aspects of reasoning including causal, temporal, and commonsense reasoning. In this work, we introduce CIDER – a manually curated dataset that contains dyadic dialogue explanations in the form of implicit and explicit
knowledge triplets inferred using contextual commonsense inference. Extracting such rich explanations from conversations can be conducive to improving several downstream applications. The annotated triplets are categorized by the type of commonsense knowledge present (e.g., causal, conditional, temporal).
We set up three different tasks conditioned on the annotated dataset: Dialogue-level Natural Language Inference, Span Extraction, and Multi-choice Span Selection. Baseline results obtained with transformer-based models reveal that the tasks are difficult, paving the way for promising future research.
{: style="text-align: justify;"}

<a href="https://github.com/declare-lab/CIDER" target="_blank" class="btn btn--inverse btn--small" role="button">webpage</a> <a href="https://arxiv.org/pdf/2106.00510.pdf" target="_blank" class="btn btn--inverse btn--small" role="button">pdf</a>


<hr>

## RECCON: Recognizing Emotion Cause in Conversations  

![image-center](/assets/images/resources/RECCON.png){: .width-paper-image-100 .align-center}


Recognizing the cause behind emotions in text is a fundamental yet under-explored area of research in NLP. Advances in this area hold the potential to improve interpretability and performance in affect-based models. Identifying emotion causes at the utterance level in conversations is particularly challenging due to the intermingling dynamic among the interlocutors. To this end, we introduce the task of recognizing emotion cause in conversations with an accompanying dataset named RECCON. Furthermore, we define different cause types based on the source of the causes and establish strong transformer-based baselines to address two different sub-tasks of RECCON: 1) Causal Span Extraction and 2) Causal Emotion Entailment.
{: style="text-align: justify;"}

<a href="https://github.com/declare-lab/RECCON" target="_blank" class="btn btn--inverse btn--small" role="button">webpage</a> <a href="https://arxiv.org/pdf/2012.11820.pdf" target="_blank" class="btn btn--inverse btn--small" role="button">pdf</a>


<hr>



## MUStARD: Multimodal Sarcasm Detection Dataset  

![image-center](/assets/images/resources/mustard.png){: .width-paper-image-100 .align-center}


We release the MUStARD dataset which is a multimodal video corpus for research in automated sarcasm discovery. The dataset is compiled from popular TV shows including Friends, The Golden Girls, The Big Bang Theory, and Sarcasmaholics Anonymous. MUStARD consists of audiovisual utterances annotated with sarcasm labels. Each utterance is accompanied by its context, which provides additional information on the scenario where the utterance occurs.
{: style="text-align: justify;"}

<a href="https://github.com/soujanyaporia/MUStARD" target="_blank" class="btn btn--inverse btn--small" role="button">webpage</a> <a href="https://www.aclweb.org/anthology/P19-1455.pdf" target="_blank" class="btn btn--inverse btn--small" role="button">pdf</a>


<hr>


## MELD: A Multimodal Multi-Party Dataset for Emotion Recognition in Conversations    

![image-center](/assets/images/resources/meld.png){: .width-paper-image-80 .align-center}


Multimodal EmotionLines Dataset (MELD) has been created by enhancing and extending the [EmotionLines](https://arxiv.org/abs/1802.08379) dataset. MELD contains the same dialogue instances available in EmotionLines, but it also encompasses audio and visual modality along with text. MELD has more than 1400 dialogues and 13000 utterances from Friends TV series. Multiple speakers participated in the dialogues. Each utterance in a dialogue has been labeled by any of these seven emotions -- Anger, Disgust, Sadness, Joy, Neutral, Surprise and Fear. MELD also has sentiment (positive, negative and neutral) annotation for each utterance. 
{: style="text-align: justify;"}

<a href="https://affective-meld.github.io/" target="_blank" class="btn btn--inverse btn--small" role="button">webpage</a> <a href="https://arxiv.org/pdf/1810.02508.pdf" target="_blank" class="btn btn--inverse btn--small" role="button">pdf</a> <a href="https://github.com/declare-lab/MELD" target="_blank" class="btn btn--inverse btn--small" role="button">baselines</a>



