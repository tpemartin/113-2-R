# Number of Aboriginal students and graduates in colleges and universities—by level and institution

## Description

Provides the number of Aboriginal students and graduates in colleges, universities, continuing education schools, and religious training colleges across Taiwan, classified by level and school. The data includes doctoral, master's, bachelor's, secondary and tertiary levels, and lists in detail the number of Aboriginal students and graduates in each school.

## Data source

Statistics Department, Ministry of Education

## Data link

https://data.gov.tw/dataset/33514

## Dimension

158 observations of 16 variables

## Variable Information

| Variable Name                        | Variable Class in R | Description                                                      |
|-------------------------------------|---------------------|------------------------------------------------------------------|
| academic_year                       | integer              | The academic year represented as a numerical year.              |
| school_type                         | factor               | The type of school (e.g., Higher Education Institutions).  levels: "Higher Education Institutions","Open University and Continuing Education Schools", "Theological Seminaries"       |
| school_code                         | character            | A unique code assigned to each school.                          |
| school_name                         | character            | The name of the school.                                         |
| enrollment_phd                      | integer              | The number of students enrolled in PhD programs.                |
| enrollment_master                   | integer              | The number of students enrolled in master's programs.           |
| enrollment_bachelor                 | integer              | The number of students enrolled in bachelor's programs.         |
| enrollment_junior_college          | integer              | The number of students enrolled in junior college programs.     |
| enrollment_five_year_college       | integer              | The number of students enrolled in five-year college programs.  |
| graduates_last_year_phd            | integer              | The number of PhD graduates in the last year.                  |
| graduates_last_year_master         | integer              | The number of master's graduates in the last year.             |
| graduates_last_year_bachelor       | integer              | The number of bachelor's graduates in the last year.           |
| graduates_last_year_junior_college | integer              | The number of junior college graduates in the last year.       |
| graduates_last_year_five_year_college | integer           | The number of five-year college graduates in the last year.    |
| school_name_chinese                 | character            | The name of the school in Chinese.                             |
| school_type_chinese                 | factor            | The type of school in Chinese. levels: "大專校院","開放大學及進修學院","神學院"                               |

## Variable summary

The dataset contains 158 observations across 16 variables, describing Aboriginal student enrollment and graduation status in higher education institutions in Taiwan for academic year 112.

The `academic_year` variable is an integer and uniformly set to 112 across all observations, indicating all data pertains to the same academic year. There is no variation nor any missing values in this variable.

The `school_type` variable is a categorical factor with three defined levels: *Higher Education Institutions*, *Open University and Continuing Education Schools*, and *Theological Seminaries*. Among the 158 records, 148 pertain to higher education institutions, while the remaining 10 are split equally between the latter two categories.

The `school_code` and `school_name` variables are character types uniquely identifying each institution. All 158 entries have valid codes, and 155 distinct English school names are recorded, implying a small number of institutions may have multiple entries.

For Chinese equivalents, `school_name_chinese` and `school_type_chinese` mirror the identifiers above. Notably, `school_name_chinese` has 158 unique entries, and the `school_type_chinese` variable shows 10 missing values and some inconsistency in level coding, where 10 entries are recorded as "4", suggesting a possible data entry or encoding error.

Enrollment counts by education level are recorded in five variables: `enrollment_phd`, `enrollment_master`, `enrollment_bachelor`, `enrollment_junior_college`, and `enrollment_five_year_college`. These are all integers. Bachelor's enrollment is the most substantial, with an average of 125.3 students (SD = 128.5) and a maximum of 790. Master’s level enrollment averages 15.7 students (SD = 28.6), and PhD enrollment is low with a mean of 1.46 and a maximum of 31. Junior college and five-year college enrollments are generally low, with medians of 0.

Graduation data from the prior year are captured in five parallel variables. The most notable is `graduates_last_year_bachelor`, averaging 24.8 students per institution with a maximum of 162. Master’s and five-year college graduate counts are modest (means: 2.8 and 3.1 respectively), while PhD and junior college graduation rates are minimal (means below 2, medians 0).

Across all variables, no missing values were found except in `school_type_chinese`, highlighting overall high data completeness. However, level coding inconsistencies in the latter suggest a need for data cleaning before categorical analysis.

