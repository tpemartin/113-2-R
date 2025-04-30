# Ready to Go Further

Make sure you have the following elements:  

  - A data set. (CSV file)
  - A complete codebook.
  - Import and parsing code for the data set. 

Once you have these three, you can work on  the data set analysis with AI tuned to be an expert of this data set.

## Flowchart

```mermaid
graph TD
    subgraph POSIT
        A[CSV File]:::pink --> B["import parsing"]:::pink
        B --> C[summary code]
        C --> D[summary .json]
    end

    subgraph AI
        E["codebook attached"]:::pink --> F["How/what to summarize further"]
        F --> G["summary json's attached"]
        G --> H["How to write summary report"]
    end

    F -.-> C
    D -.-> G

    classDef pink fill:#FFC0CB,stroke:#000,stroke-width:2px;
```

> Summary data should be exported as a **JSON file** with proper structure to understand the results.

  - [What is JSON?](https://www.w3schools.com/js/js_json.asp)

## Example

  - [csv data](../datasets/native-students/112native_A1-1_english.csv)
  - [codebook](../datasets/native-students/codebook.md)  
  - [import parsing script](../datasets/native-students/import-parsing.R)

### AI preset

Run import and parsing code in POSIT, and start your chat as the following structure:

<img src="../img/data-explore-preset.png" alt="data explore preset" width="450"/>

### ChatGPT



  - <https://chatgpt.com/share/68088d35-4828-8006-a617-2d2d01373e1f>