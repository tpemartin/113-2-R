# Complete codebook


```mermaid
flowchart TD
  A["`Import data`"]--> B["`Decide variable class`"]
  B --> C["`Parse variable values`"] 
  C --> D["`Summarize each variable`"]
  D --> E["`Complete codebook`"]:::pink
  E --> F["`Generate data introduction report`"]

  classDef pink fill:#ffcccc;
```

## Codebook structure

  - Dataset description
  - Dimension: observations x variables
  - Variable description(Names, classes, descriptions)  
  - Single variable summaries
  
***

> You can turn the list of summaries into **JSON format** and past it into the codebook.


## Generate data introduction

<img src="../img/2025-04-09-14-57-03.png" alt="data introduction" width="450"/>

Attach the codebook file to ChatGPT and ask it to generate a data introduction report.

> Prompt: Generate a data introduction report **in paragraphs** as the data introduction section of an Economic Journal article.

