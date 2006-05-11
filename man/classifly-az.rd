\name{classifly}
\alias{classifly}
\alias{package-classifly}
\title{Classify and explore a data set}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Classifly provides a convenient method to fit a classification function
}
\usage{classifly(data, model, classifier, ..., n=10000, method="nonaligned", type="range")}
\arguments{
\item{data}{Data set use for classification}
\item{model}{Classification formula, usually of the form response ~ predictors}
\item{classifier}{Function to use for the classification, eg \code{\link[MASS]{lda}}}
\item{...}{Other arguments passed to classification function.  For example. if you use \code{\link[e1071]{svm}} you need to use \code{probabiltiy = TRUE} so that posterior probabilities can be retrieved.}
\item{n}{Number of points to simulate.  To maintain the illusion of a filled solid this needs to increase with dimension.  10,000 points seems adequate for up to four of five dimensions, but if you have more predictors than that, you will need to increase this number.}
\item{method}{method to simulate points: grid, random or nonaligned (default).  See \code{\link{simvar}} for more details on the methods used.}
\item{type}{type of scaling to apply to data.  Defaults to commmon range.  See \code{\link[reshape]{rescaler}} for more details.}
}

\details{This is a convenient function to fit a classification function and
then explore the results using GGobi.  You can also do this in two
separate steps using the classification function and then \code{\link{explore}}.

By default in GGobi, points that are not on the boundary (ie. that have an
advantage greater than the 5% percentile) are hidden.  To show them, switch
to brush mode and choose include shadowed points from the brush menu on
the plot window.  You can then brush them yourself to explore how the
certainty of classification varies throughout the space

Special notes:

\itemize{
\item You should make sure the response variable is a factor
\item For SVM, make sure to include \code{probability = TRUE} in the arguments to \code{classifly}

}}
\seealso{\code{\link{explore}}, \url{http://had.co.nz/classifly}}
\examples{classifly(kyphosis, Kyphosis ~ . , lda)
classifly(kyphosis, Kyphosis ~ poly(Age,2) + poly(Number,2) + poly(Start,2) , lda)
classifly(kyphosis, Kyphosis ~ . , qda)
classifly(kyphosis, Kyphosis ~ . , rpart)
classifly(kyphosis, Kyphosis ~ . , knnf, k=3)
classifly(kyphosis, Kyphosis ~ . , glm, family="binomial")

classifly(kyphosis, Kyphosis ~ . , svm, probability=TRUE)
classifly(kyphosis, Kyphosis ~ . , svm, probability=TRUE, kernel="linear")
classifly(kyphosis, Kyphosis ~ . , best.svm, probability=TRUE, kernel="linear")

#Also can use explore directorly
bsvm <- best.svm(Species~., data = iris, gamma = 2^(-1:1), cost = 2^(2:+ 4), probability=TRUE)
explore(bsvm, iris)}
\keyword{dynamic}