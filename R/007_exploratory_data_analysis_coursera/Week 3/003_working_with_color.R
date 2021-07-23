# Working with Color in R Plots (part 2)

pal <- colorRamp(c("red", "blue"))

pal(0)
pal(1)
pal(0.5)

pal(seq(0, 1, len = 10))

# colorRampPalette

pal2 <- colorRampPalette(c("red", "yellow"))
pal2(2)
pal2(10)

# RColorBrewer -------
library(RColorBrewer)

cols <- brewer.pal(3, "BuGn")
cols

pal <- colorRampPalette(cols)
image(volcano, col = pal(20))

x <- rnorm(1000)
y <- rnorm(1000)
smoothScatter(x, y)

plot(x, y, pch = 19)

# creating transparancy
plot(x, y, col = rgb(0, 0, 0, 0.2), pch = 19)

# Swirl lesson -----

# library(swirl)
# swirl()
# In this lesson we'll learn about hierarchical clustering, a simple way of
# | quickly examining and displaying multi-dimensional data. This technique is
# | usually most useful in the early stages of analysis when you're trying to get
# | an understanding of the data, e.g., finding some pattern or relationship
# | between different factors or variables. As the name suggests hierarchical
# | clustering creates a hierarchy of clusters.

# It's pretty obvious that out of the 4 choices, the pair 5 and 6 were the
# | closest together. However, there are several ways to measure distance or
# | similarity. Euclidean distance and correlation similarity are continuous
# | measures, while Manhattan distance is a binary measure. In this lesson we'll
# | just briefly discuss the first and last of these. It's important that you use
# | a measure of distance that fits your problem.

# Euclidean distance is what you learned about in high school algebra. Given two
# | points on a plane, (x1,y1) and (x2,y2), the Euclidean distance is the square
# | root of the sums of the squares of the distances between the two x-coordinates
# | (x1-x2) and the two y-coordinates (y1-y2). You probably recognize this as an
# | application of the Pythagorean theorem which yields the length of the
# | hypotenuse of a right triangle.
# Now we'll go back to our random points. You might have noticed that these
# | points don't really look randomly positioned, and in fact, they're not. They
# | were actually generated as 3 distinct clusters. We've put the coordinates of
# | these points in a data frame for you, called dataFrame.

dist(dataFrame)

# | You see that the output is a lower triangular matrix with rows numbered from 2
# | to 12 and columns numbered from 1 to 11. Entry (i,j) indicates the distance
# | between points i and j. Clearly you need only a lower triangular matrix since
# | the distance between points i and j equals that between j and i.

# So 0.0815 (units are unspecified) between points 5 and 6 is the shortest
# | distance. We can put these points in a single cluster and look for another
# | close pair of points.

# We can keep going like this in the obvious way and pair up individual points,
# | but as luck would have it, R provides a simple function which you can call
# | which creates a dendrogram for you. It's called hclust() and takes as an
# | argument the pairwise distance matrix which we looked at before. We've stored
# | this matrix for you in a variable called distxy. Run hclust now with distxy as
# | its argument and put the result in the variable hc.
hc <- hclust(distxy)
plot(hc)

# Nice plot, right? R's plot conveniently labeled everything for you. The points
# | we saw are the leaves at the bottom of the graph, 5 and 6 are connected, as
# | are 10 and 11. Moreover, we see that the original 3 groupings of points are
# | closest together as leaves on the picture. That's reassuring.  Now call plot
# | again, this time with the argument as.dendrogram(hc).

plot(as.dendrogram(hc))

abline(h=1.5, col="blue")

# | We see that this blue line intersects 3 vertical lines and this tells us that
# | using the distance 1.5 (unspecified units) gives us 3 clusters (1 through 4),
# | (9 through 12), and (5 through 8). We call this a "cut" of our dendrogram. Now
# | cut the dendrogam by drawing a red horizontal line at .4.
abline(h=.4, col="red")
# 5 clusters
abline(h=.05, col="green")

# So the number of clusters in your data depends on where you draw the line! 
# (We said there's a lot of flexibility here.) Now that we've seen the practice,
# let's go back to some "theory". Notice that the two original groupings, 5
# through 8, and 9 through 12, are connected with a horizontal line near the top
# of the display. You're probably wondering how distances between clusters of
# points are measured.
# There are several ways to do this. We'll just mention two. The first is called
# complete linkage and it says that if you're trying to measure a distance
# between two clusters, take the greatest distance between the pairs of points
# in those two clusters. Obviously such pairs contain one point from each
# cluster.
dist(dFsm)

heatmap(dataMatrix, col = cm.colors(25))

heatmap(mt)

# This looks slightly more interesting than the heatmap for the point data. It
# | shows a little better how the rows and columns are treated (clustered and
# | colored) independently of one another. To understand the disparity in color
# | (between the left 4 columns and the right 2) look at mt now.

mt

plot(denmt)

distmt
