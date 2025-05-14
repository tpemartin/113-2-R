# Codebook for `taiwan_fake_data_english.csv`

This dataset contains 100 randomly generated observations with variables relevant to demographic and transactional characteristics. It is designed for practice in date parsing, data cleaning, and basic analysis.

| Variable Name   | Class    | Description                                         |
|-----------------|----------|-----------------------------------------------------|
| taiwan_year     | integer  | Year in Taiwan calendar (民國年), ranging from 90–113 |
| month           | integer  | Month of the date (1–12)                            |
| day             | integer  | Day of the month (1–28)                             |
| gender          | character| Gender of the individual (`Male` or `Female`)       |
| education       | character| Highest education level achieved                    |
| income          | integer  | Monthly income in New Taiwan Dollars (NTD)         |
| region          | character| Region of residence (e.g., North, South, etc.)      |
| purchase        | integer  | Binary value: `1` if purchased, `0` otherwise       |
