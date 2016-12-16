\name{getQuantilesParams}
\alias{getQuantilesParams}
\title{
A function to extract the quantiles and parameters
}
\description{
This extracts the quantiles and parameters. 
}
\usage{
getQuantilesParams(fit.i, qFunc = qLOGNO, quantiles = seq(0.006, 
0.996, length.out = 1000), linksq = c(identity, exp, NULL, 
NULL), freeParams, fixedParams)
}
\arguments{
  \item{fit.i}{
a (non-empty) object of class gamlss, which is the fitted distribution.
}
  \item{qFunc}{
a (non-empty) quantile generating function from gamlss.
}
  \item{quantiles}{
an optional numeric vector of the desired quantiles.
}
  \item{linksq}{
a (non-empty) vector is link functions.
}
  \item{freeParams}{
a (non-empty) logical vector inidicating whether parameters are fixed == FALSE or free == TRUE.
}
  \item{fixedParams}{
a (non-empty) numeric vector of fixed parameter values. 
}
}
\details{
Extracts the quantile and parameter estimates.
}
\value{
Returns a list with: samps = the quantiles extracted at the locations specified in quantiles and params = the parameter values of the fitted model.
}
\references{
	FIXME - references
}
\examples{
#not run, this function is used internally
}
