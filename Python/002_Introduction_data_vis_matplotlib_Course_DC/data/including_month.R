library(tidyverse)
library(readr)


austin_weather <- read_csv("austin_weather.csv", 
                           col_types = cols(DATE = col_double()))


seattle_weather <- read_csv("seattle_weather.csv", 
                            col_types = cols(DATE = col_double()))


date_month <- read_csv("date_month.csv")


austin_weather <- austin_weather %>% 
  inner_join(date_month)

seattle_weather <- seattle_weather %>% 
  inner_join(date_month)

write.csv(austin_weather, "austin_weather.csv", row.names = FALSE)
write.csv(seattle_weather, "seattle_weather.csv", row.names = FALSE)
