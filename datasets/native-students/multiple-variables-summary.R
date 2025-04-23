library(dplyr)
library(jsonlite)
library(tidyr)

# Topic 1: Bachelor's Enrollment by School Type
bachelor_by_school_type <- native |>
  group_by(school_type) |>
  summarise(
    avg_enrollment_bachelor = mean(enrollment_bachelor, na.rm = TRUE),
    sd_enrollment_bachelor = sd(enrollment_bachelor, na.rm = TRUE),
    total_enrollment_bachelor = sum(enrollment_bachelor, na.rm = TRUE),
    .groups = "drop"
  )

write_json(
  list(
    title = "Bachelor's Enrollment by School Type",
    description = "Explore how Aboriginal students enrolled in bachelor's programs are distributed across different school types.",
    variables = c("enrollment_bachelor", "school_type"),
    summary = bachelor_by_school_type
  ),
  path = "bachelor_enrollment_by_school_type.json",
  pretty = TRUE,
  auto_unbox = TRUE
)

# Topic 2: Top 5 Schools by Bachelor's Graduates
top5_bachelor_graduates <- native |>
  select(school_name, graduates_last_year_bachelor) |>
  arrange(desc(graduates_last_year_bachelor)) |>
  slice_head(n = 5)

write_json(
  list(
    title = "Top 5 Schools by Bachelor's Graduates",
    description = "Identify the top 5 schools with the most Aboriginal bachelor's graduates.",
    variables = c("graduates_last_year_bachelor", "school_name"),
    summary = top5_bachelor_graduates
  ),
  path = "top5_bachelor_graduating_schools.json",
  pretty = TRUE,
  auto_unbox = TRUE
)

# Topic 3: Average Graduates by Program Level
avg_graduates_by_program <- native |>
  summarise(
    phd = mean(graduates_last_year_phd, na.rm = TRUE),
    master = mean(graduates_last_year_master, na.rm = TRUE),
    bachelor = mean(graduates_last_year_bachelor, na.rm = TRUE),
    junior_college = mean(graduates_last_year_junior_college, na.rm = TRUE),
    five_year_college = mean(graduates_last_year_five_year_college, na.rm = TRUE)
  ) |>
  pivot_longer(everything(), names_to = "program_level", values_to = "avg_graduates")

write_json(
  list(
    title = "Average Graduate Output by Program Level",
    description = "Compare average graduate counts across different program levels to assess program popularity.",
    variables = c(
      "graduates_last_year_phd", "graduates_last_year_master",
      "graduates_last_year_bachelor", "graduates_last_year_junior_college",
      "graduates_last_year_five_year_college"
    ),
    summary = avg_graduates_by_program
  ),
  path = "avg_graduate_output_by_program_level.json",
  pretty = TRUE,
  auto_unbox = TRUE
)

library(dplyr)
library(jsonlite)

top5_by_school_type <- native |>
  group_by(school_type) |>
  arrange(desc(enrollment_bachelor), .by_group = TRUE) |>
  slice_head(n = 5) |>
  select(school_type, school_name, enrollment_bachelor)

write_json(
  list(
    title = "Top 5 Schools by Bachelor's Enrollment within Each School Type",
    description = "Shows the top 5 institutions with the highest Aboriginal bachelor's enrollment, grouped by school type.",
    variables = c("school_type", "school_name", "enrollment_bachelor"),
    summary = top5_by_school_type
  ),
  path = "top5_bachelor_enrollment_by_school_type.json",
  pretty = TRUE,
  auto_unbox = TRUE
)

