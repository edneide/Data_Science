# Quiz -----

## Question 2. ---------
library(nlme)
library(lattice)

xyplot(weight ~ Time | Diet, BodyWeight)


## Question 7. ----------
library(datasets)
data(airquality)

library(ggplot2)
qplot(Wind, Ozone, data = airquality, geom = "smooth")

qplot(Wind, Ozone, data = airquality)

airquality = transform(airquality, Month = factor(Month))
qplot(Wind, Ozone, data = airquality, facets = . ~ Month)

qplot(Wind, Ozone, data = airquality, facets = . ~ factor(Month))


## Question 9. ------------

library(ggplot2)
library(ggplot2movies)
g <- ggplot(movies, aes(votes, rating))
print(g)


## Question 10. ------------
qplot(votes, rating, data = movies)

qplot(votes, rating, data = movies, smooth = "loess")
qplot(votes, rating, data = movies) + geom_smooth()
qplot(votes, rating, data = movies) + stats_smooth("loess")
qplot(votes, rating, data = movies, panel = panel.loess)
