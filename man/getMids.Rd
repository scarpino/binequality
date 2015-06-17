\name{getMids}
\alias{getMids}
\title{
A function to calculate the bin midpoints.  
}
\description{
This function returns the bin midpoints for use in calculating midpoint-based statistics. The code is not written to handle left censored bins or more than one right censored bins.  
}
\usage{
getMids(ID, hb, lb, ub, alpha_bound)
}
\arguments{
  \item{ID}{
A vector of group IDs
}
  \item{hb}{
A vector of heights for each bin
}
  \item{lb}{
A vector of lower bounds, which must all be real numbers.
}
  \item{ub}{
A vector of upper bouns, which can have one censored bin per group.
}
 \item{alpha_bound}{
A numeric value indicating the bound on alpha for determining the midpoint of the upper-most, censored bin.  To unbound the value of alpha, set alpha_bound = numeric(0).
}
}
\details{
For all non-censored bins, ie real number upper and lower bounds, the midpoint is simply the arithemtic mean of the bounds.  This assumes the number of observations are normally distributed in each bin.  However, for the right-censored bin we relax this assumption when calcuting the bin midpoint. FIXME - say something about the method we use to calculate midpoint of the upper bin. 
}
\value{
returns a list with the following elements: 
}
\references{
FIXME - references
}
\examples{
data(state_bins)

bin_mids <- getMids(ID = state_bins[,'State'], hb = 
state_bins[,'hb'], lb = state_bins[,'bin_min'], ub = 
state_bins[,'bin_max'], alpha_bound = 10/9)

bin_mids_unbound <- getMids(ID = state_bins[,'State'], hb = 
state_bins[,'hb'], lb = state_bins[,'bin_min'], ub = 
state_bins[,'bin_max'], alpha_bound = numeric(0))

}