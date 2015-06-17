\name{LRT}
\alias{LRT}
\title{
A function to perform likelihood ratio tests
}
\description{
This function performs likelihood ratio tests for use in model selection.
}
\usage{
LRT(dat, fitComb, ID)
}
\arguments{
  \item{dat}{
a (non-empty) data frame containing an ID column (see ID) and a column called "hb", which contains the bin heights used in model fitting.
}
  \item{fitComb}{
a (non-empty) data frame returned from the function makeFitComb.  
}
  \item{ID}{
a (non-empty) string indicating the column dat and the column in fitComb containing the group ids, these column names must match.
}
}
\details{
Performs a likelihood ratio test.
}
\value{
Returns an object with the same information as was passed into the fitComb argument, but with additional columns G2 = the test statistic, p = the p value, and df = the degrees of freedom.
}
\references{
	FIXME - references
}
\examples{
#not run, function is used internally 
}