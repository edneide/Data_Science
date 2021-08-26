library(swirl)
swirl()
Neide
1
14

# | In this lesson we'll apply some of the analytic techniques we learned in this course to data from the
# | University of California, Irvine. Specifically, the data we'll use is from UCI's Center for Machine
# | Learning and Intelligent Systems. You can find out more about the data at
# | http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. As this address
# | indicates, the data involves smartphones and recognizing human activity. Cool, right?
# | We've loaded data from this study for you in a matrix called ssd.  Run the R command dim now to see its
# | dimensions.
dim(ssd)

# | Wow - ssd is pretty big, 7352 observations, each of 563 variables. Don't worry we'll only use a small
# | portion of this "Human Activity Recognition database".

# | Use the R command names with just the last two columns (562 and 563) of ssd to see what data they contain.
names(ssd[, 562:563])

# These last 2 columns contain subject and activity information. We saw above that the gathered data had
# | "been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the
# | training data and 30% the test data." Run the R command table with ssd$subject as its argument to see if
# | the data in ssd contains training or test data.

table(ssd$subject)
2

3

sum(table(ssd$subject))

table(ssd$activity)

4

sub1 <- subset(ssd, subject == 1)
sub1
