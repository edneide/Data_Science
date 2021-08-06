
path_state <- "https://raw.githubusercontent.com/gedeck/practical-statistics-for-data-scientists/master/data/state.csv"

state <- read.csv(path_state)

## Mean ------
mean(state$Population)

## Trimmed mean ----
mean(state$Population, trim = 0.1)

## Median ----
median(state$Population)
