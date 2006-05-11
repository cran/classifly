\name{generate_classification_data}
\alias{generate_classification_data}
\title{Generate classification data.}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Given a model, this function generates points within
}
\usage{generate_classification_data(model, data, n, method, advantage)}
\arguments{
\item{model}{classification model}
\item{data}{data set used in model}
\item{n}{number of points to generate}
\item{method}{method to use, currently either grid (an evenly spaced grid), random (uniform random distribution across cube), or nonaligned (grid + some random peturbationb)}
\item{advantage}{}
}

\details{If posterior probabilities of classification are available, then the
\code{\link{advantage}} will be calculated directly.  If not, \code{\link{knn}}
is used calculate the advantage based on the number of neighbouring points
that share the same classification.  Because knn is $O(n^2)$ this method is rather
slow for large (>20,000 say) data sets.

By default, the boundary points are identified
as those below the 5th-percentile for advantage.}

\examples{}
\keyword{datagen}
