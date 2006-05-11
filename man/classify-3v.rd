\name{classify}
\alias{classify}
\alias{classify.rpart}
\title{Classify}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Common interface to extract predict classification from a variety of classification objects
}
\usage{classify(model, data)}
\arguments{
\item{model}{model object}
\item{data}{data set used in model}
}

\details{If the classification method can produce a matrix of posterior
probabilities (see \code{\link{posterior}}), then that will be used to
calculate the \code{\link{advantage}}.  Otherwise, the classify method
will be used and the advantage calculated using a k-nearest neighbours
approach.}

\examples{}
\keyword{internal}
