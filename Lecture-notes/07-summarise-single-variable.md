# Summarise single variable

```mermaid
flowchart TD
  A["`Import data`"]--> B["`Decide variable class`"]
  B --> C["`Parse variable values`"] 
  C --> D["`Summarize data`"]:::pink

  classDef pink fill:#ffcccc;
```

## Common summary practice

It depends on the class of variables. The following table is a suggestion for what to summarise for each class of variables.

| Class | Summary |
| --- | --- |
| Numeric | Mean, median, min, max, quartiles, missing values |
| Character | Unique values, missing values |
| Date/DateTime | Earliest date/date time, latest date/date time, missing values |
| Factor | Levels, frequency table, missing values |

> Missing values are important to check because they can affect the analysis results.

## Save the summary

  - Upload to Google Sheets. 

Install the `googlesheets4` package. And use the `write_sheet()` function to upload the `.Rds` file to Google Sheets.

```R
library(googlesheets4)
write_sheet(a_data_frame, "sheet_link", sheet = "sheet name")
```

| First time authorization | copy Oauth code | paste Oauth code |
| --- | --- | --- |
|
<img src="../img/2025-03-26-14-56-25.png" width="200px" /> | <img src="../img/2025-03-26-14-57-17.png" width="200px" /> | <img src="../img/2025-03-26-14-57-51.png" width="250px" /> |

Next time `write_sheet()` function will not ask for authorization fully, but:
<img src="../img/2025-03-26-15-01-54.png" width="250px"/>
