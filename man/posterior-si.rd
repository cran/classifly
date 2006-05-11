\name{posterior}
\alias{posterior}
\alias{posterior.lda}
\alias{posterior.qda}
\alias{posterior.randomForest}
\alias{posterior.nnet}
\alias{posterior.svm}
\alias{posterior.glm}
\alias{posterior.default}
\title{Posterior}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Common interface to extract posterior group probabilities
}
\usage{posterior(model, data)}
\arguments{
\item{model}{model object}
\item{data}{data set used in model}
}

\details{Every classification method seems to provide a slighly different
way of retrieving the posterior probability of group membership.  This
function provides a common interface to all of them}

\examples{}
\keyword{internal}
