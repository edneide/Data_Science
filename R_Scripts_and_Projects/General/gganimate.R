##===========================================================================================================##
##--GGANIMATE
##--Source: https://www.datanovia.com/en/blog/gganimate-how-to-create-plots-with-beautiful-animation-in-r/
##--Edneide Ramalho
##--07 de dezembro de 2020
##===========================================================================================================##

setwd("~/Google Drive/R - SCRIPTS/Mix/gganimate")
library(ggplot2)
library(gganimate)
theme_set(theme_bw())
library(dplyr)
library(gifski)

# Demo dataset ----

library(gapminder)
head(gapminder)

# Static Plot ----

p <- gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp, size = pop, colour = country)) +
  geom_point(show.legend = FALSE, alpha = 0.7) +
  scale_colour_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = "GDP per capita", y = "Life expectancy")
p

# Transition through distinct states in time----

## Basics----
p2 <- p + transition_time(year) +
  labs(title = "Year: {frame_time}")

p2

animate(p2, nframes = 100, fps = 10, width = 750, height = 450, renderer = gifski_renderer("teste.gif"))

# By continent with facets
p3 <- p + facet_wrap(~ continent) +
  transition_time(year) +
  labs(title = "Year: {frame_time}")

animate(p3, nframes = 100, fps = 10, width = 750, height = 450, renderer = gifski_renderer("p3.gif"))
