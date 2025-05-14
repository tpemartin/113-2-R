# description 

Dow Jones Index

# dimensions 

1312 obs of 9 variables

# variable information

| Variable Name | R Class     | Description                                                                 |
|---------------|-------------|-----------------------------------------------------------------------------|
| `Date`        | Date        | The date of the trading day.                                                |
| `Ticker`      | character   | The ticker symbol of the financial index or stock (e.g., "DJI").            |
| `Open`        | numeric     | The opening price of the index/stock on the trading day.                    |
| `High`        | numeric     | The highest price reached during the trading day.                           |
| `Low`         | numeric     | The lowest price reached during the trading day.                            |
| `Close`       | numeric     | The closing price of the index/stock on the trading day.                    |
| `Adjusted`    | numeric     | The adjusted closing price accounting for dividends or splits.              |
| `Returns`     | numeric     | The daily return (as a proportion), typically calculated from adjusted price.|
| `Volume`      | integer     | The number of shares/contracts traded on the trading day.                   |

# variable summary


The dataset `Dow_Jones` contains 1,312 observations with 9 variables. Each variable has been summarized according to its class, distribution characteristics, and completeness.

- **Date**: This variable, of class `Date`, ranges from January 2, 2020, to March 21, 2025. It contains no missing values and all 1,312 entries are unique, indicating each record corresponds to a distinct trading day.

- **Ticker**: This character variable records the index symbol, with all entries having the same value, yielding only 1 unique value across all rows. There are no missing entries.

- **Open**: Representing the opening price on each trading day, this numeric variable ranges from 19,028.36 to 45,054.36. The mean is 34,047.15, and the median is 33,977.90, with a standard deviation of approximately 4,966.91. No values are missing, and nearly all (1,311) entries are unique.

- **High**: The highest trading price for each day is also a numeric variable, ranging from 19,121.01 to 45,073.63. Its average value is 34,245.62 with a standard deviation of 4,944.58. All values are complete and unique.

- **Low**: The daily lowest price varies between 18,213.65 and 44,799.74, with a mean of 33,838.23 and a median of 33,791.99. The standard deviation is 4,991.48. No missing data are found, and there are 1,310 unique values.

- **Close**: This variable reflects the closing price, ranging from 18,591.93 to 45,014.04. It has a mean of 34,051.23 and a median of 33,998.34, with a standard deviation of 4,969.08. All values are complete, with 1,309 distinct values recorded.

- **Adjusted**: The adjusted closing price, accounting for dividends or splits, mirrors the statistics of the `Close` variable exactly, suggesting data duplication or identity. All 1,312 entries are complete, with 1,309 unique values.

- **Returns**: This numeric variable captures daily returns, ranging from -0.1293 to 0.1137. The average daily return is 0.0004, with a median of 0.0007 and a standard deviation of 0.0129. There is 1 missing value, with 1,311 complete entries and as many unique values.

- **Volume**: Capturing the number of shares or contracts traded, this numeric variable has substantial variation, ranging from 117,040,000 to 1,230,150,000. The mean is around 374 million and the median is approximately 343.5 million. The standard deviation is roughly 122.89 million, indicating considerable dispersion. All entries are complete, with 1,277 distinct values.

