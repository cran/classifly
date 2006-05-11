\name{variables}
\alias{variables}
\alias{variables.default}
\title{Variables}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Extract predictor and response variables for a model object.
}
\usage{variables(model)}
\arguments{
\item{model}{model object}
}

\details{Due to the way that most model objects are stored, you
also need to supply the data set you used with the original
data set.  It currently doesn't support model fitted without
using a data argument.}

\examples{}
\keyword{attribute}
