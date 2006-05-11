\name{advantage}
\alias{advantage}
\title{Advantage}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Calculate the advantage the most likely class has over the next most likely.
}
\usage{advantage(post)}
\arguments{
\item{post}{matrix of posterior probabilities}
}

\details{This is used to identify the boundaries between classification regions.
Points with low (close to 0) advantage are likely to be near boundaries.}

\examples{}
\keyword{classif}
