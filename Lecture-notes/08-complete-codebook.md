# Complete codebook

```mermaid
flowchart TD
  subgraph Codebook Creation
    A["`Data`"] -->|AI| B["`Codebook`"]
  end

  subgraph Codebook Completion
    C["`Data/Codebook`"] -->|AI| D["`Import and parse`"]
    D -->|AI| E["`Single variable summary JSON`"]
    E -->|AI| F["`Variable summary writing`"]
    F --> G["`Complete codebook`"]
  end
  B -.-> C
```


## Codebook structure

  - Dataset description
  - Data source
  - Dimension: observations x variables
  - Variable description(Names, classes, descriptions)  
  - (Single) Variable summary
  
***

> You can turn the list of summaries into **JSON format** and past it into the codebook. 
> Or ask AI to generate summary in text (then paste it to the codebook) based on the Json file.


## Generate data introduction

<img src="../img/2025-04-09-14-57-03.png" alt="data introduction" width="450"/>

Attach the codebook file to ChatGPT and ask it to generate a data introduction report.

> Prompt: Generate a data introduction report **in paragraphs** as the data introduction section of an Economic Journal article.

## Example 

  - <https://chatgpt.com/share/68088d35-4828-8006-a617-2d2d01373e1f>