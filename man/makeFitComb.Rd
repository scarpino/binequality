\name{makeFitComb}
\alias{makeFitComb}
\title{
A function to transform a list into a dataframe
}
\description{
This funciton transforms a list of fitted models into a data frame.
}
\usage{
makeFitComb(distFitsList)
}
\arguments{
  \item{distFitsList}{
a (non-empty) list containing the fitted models from the function fitFunc
}
}
\details{
Transforms a list into a data frame
}
\value{
Returns a data frame where each row is a distribution/unique ID pair, ie a county and its fitted GB2 distribution.  It also contains summary stats.
}
\examples{
#not run, internal function
}