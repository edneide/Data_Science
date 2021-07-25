library(swirl)
swirl()
Neide
1
12

# In this lesson we'll learn about k-means clustering, another simple way
# of examining and organizing multi-dimensional data. As with hierarchical
# clustering, this technique is most useful in the early stages of analysis
# when you're trying to get an understanding of the data, e.g., finding
# some pattern or relationship between different factors or variables.
# Once you have repositioned the centroids, you must recalculate the
# distance of the observations to the centroids and reassign any, if
# necessary, to the centroid closest to them. Again, once the reassignments
# are done, readjust the positions of the centroids based on the new
# cluster membership. The process stops once you reach an iteration in
# which no adjustments are made or when you've reached some predetermined
# maximum number of iterations.

 
# So k-means clustering requires some distance metric (say Euclidean), a
# hypothesized fixed number of clusters, and an initial guess as to cluster
# centroids. As described, what does this process produce?

# When it's finished k-means clustering returns a final position of each
# | cluster's centroid as well as the assignment of each data point or
# | observation to a cluster.

points(cx, cy, col = c("red", "orange", "purple"), pch = 3, cex = 2, lwd = 2)

# We see the first centroid (1,2) is in red. The second (1.8,1), to the
# | right and below the first, is orange, and the final centroid (2.5,1.5),
# | the furthest to the right, is purple.

# We've written a function for you called mdist which takes 4 arguments.
# The vectors of data points (x and y) are the first two and the two
# vectors of centroid coordinates (cx and cy) are the last two. Call mdist
# now with these arguments.

mdist(x, y, cx, cy)

which.min

apply(distTmp, 2, which.min)

points(x, y, pch = 19, cex = 2, col = cols1[newClust])

tapply(x, newClust, mean)
tapply(y, newClust, mean)

points(newCx, newCy, col = cols1, pch = 8, cex = 2, lwd = 2)

mdist(x, y, newCx, newCy)

2

apply(distTmp2, 2, which.min)

points(x, y, pch = 19, cex = 2, col = cols1[newClust2])

tapply(x, newClust2, mean)
tapply(y, newClust2, mean)

points(finalCx, finalCy, col = cols1, pch = 9, cex = 2, lwd = 2)

kmeans(dataFrame, centers = 3)

kmObj$iter

# 1 iteration

plot(x, y, col = kmObj$cluster, pch = 19, cex = 2)

points(kmObj$centers, col = c("black", "red", "green"),
       pch = 3, cex = 3, lwd = 3)

plot(x, y, col = kmeans(dataFrame, 6)$cluster, pch = 19, cex = 2)
