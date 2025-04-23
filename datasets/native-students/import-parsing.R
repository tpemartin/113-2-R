library(readr)
native <- read_csv("datasets/native-students/112native_A1-1_english.csv")

library(dplyr)
library(forcats)

native <- native |>
  mutate(
    # already numeric — no need for parse_integer
    academic_year = as.integer(academic_year),
    
    # ensure factors with levels in correct order
    school_type = factor(school_type, 
                         levels = c("Higher Education Institutions", 
                                    "Open University and Continuing Education Schools", 
                                    "Theological Seminaries")),
    
    # character fields
    school_code = as.character(school_code),
    school_name = as.character(school_name),
    
    # student enrollment fields (ensure integer)
    enrollment_phd = as.integer(enrollment_phd),
    enrollment_master = as.integer(enrollment_master),
    enrollment_bachelor = as.integer(enrollment_bachelor),
    enrollment_junior_college = as.integer(enrollment_junior_college),
    enrollment_five_year_college = as.integer(enrollment_five_year_college),
    
    # graduate counts (ensure integer)
    graduates_last_year_phd = as.integer(graduates_last_year_phd),
    graduates_last_year_master = as.integer(graduates_last_year_master),
    graduates_last_year_bachelor = as.integer(graduates_last_year_bachelor),
    graduates_last_year_junior_college = as.integer(graduates_last_year_junior_college),
    graduates_last_year_five_year_college = as.integer(graduates_last_year_five_year_college),
    
    # chinese labels
    school_name_chinese = as.character(school_name_chinese),
    school_type_chinese = factor(school_type_chinese, 
                                 levels = c("大專校院", "開放大學及進修學院", "神學院"))
  )

