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
Returns a data frame with the following columns: 'ID','mean','median','gini','theil','cv','MLD', 'SLD'.  "cv" is the coefficient of variation, "MLD" is the mean log deviance, and "SLD" is the squar root of the MLD. 
}
\seealso{
\code{\link[ineq:Gini]{Gini}}
\code{\link[ineq:Theil]{Theil}}
}
\examples{
data(state_bins)

bin_mids <- getMids(ID = state_bins[,'State'], hb = 
state_bins[,'hb'], lb = state_bins[,'bin_min'], ub = 
state_bins[,'bin_max'], alpha_bound = 10/9)

state_bin_mid_stats <- midStats(data = bin_mids$mids)
}