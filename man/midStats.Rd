\name{midStats}
\alias{midStats}
\title{
A function to calculate statistics using bin midpoints
}
\description{
This function calcualtes a suite of pre-defined statistics on binned distributions using pre-calculated midpoints for each bin.
}
\usage{
midStats(data)
}
\arguments{
  \item{data}{
a (non-empty) data frame with columns named ID, mids, and hb. 
}
}
\details{
Currently has the following stats: 'mean','median','gini','theil','cv','MLD'.  FIXME - reference to functions in gamlss
}
\value{
Returns a data frame with the following columns: 'ID','mean','median','gini','theil','cv','MLD'
}
\seealso{
FIXME add in links to Gini and Theil functions.
}
\examples{
#not run, internal function
}