\name{paramFilt}
\alias{paramFilt}
\title{
A function to filter models based on estimated parameters
}
\description{
This functions filters models, excludes them from model averaging, and sets all parameter values/statistics to NA. The filter determines which models should have undefined moments based on the estimated parameters.  These are filtered. FIXME - add in specific criteria for filtering.
}
\usage{
paramFilt(paramsList, fitComb)
}
\arguments{
  \item{paramsList}{
a (non-empty) list containing the parameter values, it should be of length(fitComb).
}
  \item{fitComb}{
a (non-empty) list of fitted models
}
}
\value{
Returns fitComb, filtered based on the parameters.
}
\references{
FIXME - references for specific filtering criteria
}
\examples{
#not run, internal function
}