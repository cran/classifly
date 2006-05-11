\name{explore}
\alias{explore}
\title{Explore default}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Default method for exploring objects
}
\usage{explore(model, data, n=10000, method="nonaligned", advantage=TRUE, ...)}
\arguments{
\item{model}{classification object}
\item{data}{data set used with classifier}
\item{n}{number of points to generate when searching for boundaries}
\item{method}{method to generate points, see \code{\link{generate_data}}}
\item{advantage}{only display boundaries}
\item{...}{}
}

\details{The default method currently works for classification
functions.

It generates a data set filling the design space, finds
class boundaries (if desired) and then displays in a new
ggobi instance.}
\seealso{\code{\link{generate_classification_data}}, \url{http://had.co.nz/classifly}}
\examples{bsvm <- best.svm(Species~., data = iris, gamma = 2^(-1:1), cost = 2^(2:+ 4), probability=TRUE)
explore(bsvm, iris)}
\keyword{dynamic}
