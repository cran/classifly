# Simulate variable.
# Simulate observations from a vector
# 
# Given a vector of data this function will simulate
# data that could have come from that vector. 
# 
# There are three methods to choose from:
# 
# \itemize{
# 	\item nonaligned (default): grid + some random peturbation
# 	\item grid: grid of evenly spaced observations.  If a factor, 
# 		all levels in a factor will be used, regardless of n
# 	\item random: a random uniform sample from the range of the variable
# }
# 
# @arguments data vector
# @arguments desired number of points (will not always be achieved)
# @arguments simulation method
# @alias simvar.factor
# @alias simvar.numeric
# @keyword datagen 
simvar <- function(x, n=10, method="grid") UseMethod("simvar")
simvar.factor <-  function(x, n=10, method="grid") {
	switch(method,
		random = x[sample(length(x), n, replace=TRUE)],
		factor(levels(x), levels=levels(x)),
	)
}

simvar.numeric <- function(x, n=10, method="grid") {
	rng <- range(x)
	switch(method,
		random = runif(n, rng[1], rng[2]),
		seq(rng[1], rng[2], length=n),
	)
} 

# Generate data
# Generate new data from a data frame.
# 
# This method generates new data that fills the range of 
# the supplied datasets.
# 
# @arguments data frame
# @arguments desired number of new observations
# @arguments method to use, see \code{\link{simvar}}
# @keyword datagen 
generate_data <- function(data, n=10000, method="grid") {
	if (method != "random") {
		n <- floor(n ^ (1/ncol(data)))
		df <- data.frame(expand.grid(lapply(data, simvar, n=n, method="grid")))
		if (method == "nonaligned") {
			cont <- !sapply(df, is.factor)
			ranges <- lapply(df[,cont], function(x) diff(range(x)))
			df[,cont] <- df[,cont] + do.call(cbind, lapply(ranges, function(rng) runif(-rng/(2*n), rng/(2*n), n=nrow(df))))
		}
		df
	} else {
		data.frame(sapply(data, simvar, n=n, method=method))
	}
}