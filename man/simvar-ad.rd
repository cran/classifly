\name{simvar}
\alias{simvar}
\alias{simvar.factor}
\alias{simvar.numeric}
\title{Simulate variable.}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Simulate observations from a vector
}
\usage{simvar(x, n=10, method="grid")}
\arguments{
\item{x}{data vector}
\item{n}{desired number of points (will not always be achieved)}
\item{method}{simulation method}
}

\details{Given a vector of data this function will simulate
data that could have come from that vector.

There are three methods to choose from:

\itemize{
\item nonaligned (default): grid + some random peturbation
\item grid: grid of evenly spaced observations.  If a factor,
all levels in a factor will be used, regardless of n
\item random: a random uniform sample from the range of the variable
}}

\examples{}
\keyword{datagen}
