\name{modelAvg}
\alias{modelAvg}
\title{
A function to calculate model averages
}
\description{
This function calculates model averaged statistics using AIC and BIC.
}
\usage{
modelAvg(fitList, ID, nonCon = TRUE)
}
\arguments{
  \item{fitList}{
a (non-empty) list of fitted distributions
}
  \item{ID}{
a (non-empty) string of the ID column name.
}
  \item{nonCon}{
an optional logical, where nonCon == TRUE excludes models failing to converged and nonCon == FALSE includes them. 
}
}
\details{
Calculates model averaged statistics using BIC and AIC as weights.
}
\value{
Returns a list with aic and bic values, aic and bic averages, and the aic and bic weights.
}
\examples{
#not run, internal function
}