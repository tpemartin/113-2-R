# Parsing Variables (I)


```mermaid
flowchart TD
  A["`Import data`"]--> B["`Decide variable class`"]
  B --> C["`Parse variable values`"]:::pink 
  C --> D["`Summarize data`"]

  classDef pink fill:#ffcccc;
```

***
Dataset: 

[Aboriginal students in colleges](https://classroom.google.com/c/NzUwNTk0NzkzOTc4/m/NzU5OTc5NjAzODgy/details)


## Import data

<img src="../img/2025-03-19-10-18-09.png" width="500px" />


## Parsing based on codebook

### Prompt


  - Predicate: task body, including the instruction, context, input data, and/or output.  
  - Meta prompt: Guidance on AI persona, and the user's role.  
  - Hyperparameters: parameters that control the behavior of the model. 

***

You are a R programmer using tidyverse coding style, and follow the book, R for Data Science (https://r4ds.co.nz), closely.

Parsing variables in the data frame `native` based on the following instruction: ...

## Factor/Ordered Factor

The available categories of factor class variables are called **levels**. We can check the levels of a factor variable using the `levels()` function.

Write levels information in the codebook. And update your prompt for parsing code again.

## Practice

[Students performance and behavior](https://classroom.google.com/c/NzUwNTk0NzkzOTc4/m/NzU5OTgxNTE0MDYy/details)

[How to share ChatGPT link](./how-to-share-chatgpt-link.md)