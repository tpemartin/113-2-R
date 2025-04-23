library(dplyr)
library(purrr)
library(jsonlite)

# Summary function (as before)
summarise_variable <- function(x) {
  if (is.numeric(x)) {
    list(
      class = class(x)[1],
      min = min(x, na.rm = TRUE),
      max = max(x, na.rm = TRUE),
      mean = mean(x, na.rm = TRUE),
      median = median(x, na.rm = TRUE),
      sd = sd(x, na.rm = TRUE),
      n_missing = sum(is.na(x)),
      n_nonmissing = sum(!is.na(x)),
      n_unique = n_distinct(x, na.rm = TRUE)
    )
  } else if (is.factor(x)) {
    list(
      class = class(x)[1],
      levels = levels(x),
      n_levels = nlevels(x),
      level_counts = as.list(table(x, useNA = "ifany")),
      n_missing = sum(is.na(x)),
      n_nonmissing = sum(!is.na(x)),
      n_unique = n_distinct(x, na.rm = TRUE)
    )
  } else if (is.character(x)) {
    list(
      class = class(x)[1],
      sample_values = head(unique(x[!is.na(x)]), 5),
      n_missing = sum(is.na(x)),
      n_nonmissing = sum(!is.na(x)),
      n_unique = n_distinct(x, na.rm = TRUE)
    )
  } else {
    list(
      class = class(x)[1],
      note = "Unsupported type"
    )
  }
}

# Map summary to each column
tidy_variable_summary <- native |>
  purrr::map(summarise_variable)

# Export to JSON
write_json(
  x = list(
    description = "Summary of each variable in `native` based on its class, including missing value statistics.",
    operations = "purrr::map(), class(), min(), max(), mean(), median(), sd(), table(), is.na(), n_distinct()",
    summary = tidy_variable_summary
  ),
  path = "single-variable-summary.json",
  pretty = TRUE,
  auto_unbox = TRUE
)
