# importing data
library(readr)
Dow_Jones <- read_csv("dow_jones/Dow_Jones.csv")

# parsing

## Ask AI
## setup AI persona 

Dow_Jones <- Dow_Jones |>
  mutate(
    Date = lubridate::ymd(Date),
    Ticker = as.character(Ticker),
    Open = as.double(Open),
    High = as.double(High),
    Low = as.double(Low),
    Close = as.double(Close),
    Adjusted = as.double(Adjusted),
    Returns = as.double(Returns),
    Volume = as.integer(Volume)
  )
