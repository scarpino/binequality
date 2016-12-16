\name{fitFunc}
\alias{fitFunc}

\title{
A function to fit a parametric distribution to binned data.
}
\description{
This function fits a parametric distribution binned data. The data are subdivided using 
ID.  
}
\usage{
fitFunc(ID, hb, bin_min, bin_max, obs_mean, ID_name,
  distribution = LOGNO, distName = "LNO", links = c(muLink = 
  identity, sigmaLink = log, nuLink = NULL, tauLink = NULL),
   qFunc = qLOGNO, quantiles = seq(0.006, 0.996, length.out = 
   1000), linksq = c(identity, exp, NULL, NULL), con = 
   gamlss.control(c.crit=0.1,n.cyc=200, trace=FALSE), 
   saveQuants = FALSE, muStart = NULL, sigmaStart = NULL,
    nuStart = NULL, tauStart = NULL, muFix = FALSE, 
    sigmaFix = FALSE, nuFix = FALSE, tauFix = FALSE, 
    freeParams = c(TRUE, TRUE, FALSE, FALSE), 
    smartStart = FALSE, tstamp = as.numeric(Sys.time()))
}
\arguments{
  \item{ID}{
a (non-empty) object containing the group ID for each row. Importantly, ID, bh, bin_min, bin_max, and obs_mean MUST be the same length and be in the SAME order.
}
  \item{hb}{
a (non-empty) object containing the number of observations in each bin.  Importantly, ID, bh, bin_min, bin_max, and obs_mean MUST be the same length and be in the SAME order.
}
  \item{bin_min}{
a (non-empty) object containing the lower bound of each bin. Currently, this package cannot handle data with open lower bounds. Importantly, ID, bh, bin_min, bin_max, and obs_mean MUST be the same length and be in the SAME order.
}
  \item{bin_max}{
a (non-empty) object the upper bound of each bin. Currently, this package can only handle the upper-most bin being open ended. Importantly, ID, bh, bin_min, bin_max, and obs_mean MUST be the same length and be in the SAME order.
}
  \item{obs_mean}{
a (non-empty) object containing the mean for each group.  Importantly, ID, bh, bin_min, bin_max, and obs_mean MUST be the same length and be in the SAME order.
}
  \item{ID_name}{
a (non-empty) object containing column name for the ID column.
}
   \item{distribution}{
a (non-empty) gamlss function for fitting a GAMLSS.
}
  \item{distName}{
a (non-empty) character object with the name of the distribution.
}
  \item{links}{
a (non-empty) list of link functions with the following items: muLink, sigmaLink, nuLink, and tauLink.
}
  \item{qFunc}{
a (non-empty)gamlss function for calculating quantiles, this should match the distribution in distribution.
}
  \item{quantiles}{
a (non-empty) numeric vectors of the desired quantiles, these are used in calculating metrics.
}
  \item{linksq}{
a (non-empty) vector of functions, which undue the link functions.  For example, if muLink = log, then the first entry in linksq should be exp.  If you are using an indentity link function in links, then the corresponding entry in linksq should be indentity. 
}
  \item{con}{
an optional lists modifying gamlss.control.
}
  \item{saveQuants}{
an optional logical value indicating whether to save the quantiles.
}
  \item{muStart}{
an optional numerical value for the starting value of mu.
}
  \item{sigmaStart}{
an optional numerical value for the starting value of sigma.
}
  \item{nuStart}{
an optional numerical value for the starting value of nu.
}
  \item{tauStart}{
an optional numerical value for the starting value of tau.
}
  \item{muFix}{
an logical value indicating whether mu is fixed or is free to vary during the fitting process.
}
  \item{sigmaFix}{
an logical value indicating whether sigma is fixed or is free to vary during the fitting process.
}
  \item{nuFix}{
an logical value indicating whether nu is fixed or is free to vary during the fitting process.
}
  \item{tauFix}{
an logical value indicating whether tau is fixed or is free to vary during the fitting process.
}
  \item{freeParams}{
a vector of logical values indicating whether each of the four parameters is free == TRUE or fixed == FALSE.
}
  \item{smartStart}{
a logical indicating whether a smart starting place should be chosen, this applies only when fitting the GB2 distribution.
}
  \item{tstamp}{
a time stamp.
}
}
\details{
Fits a GAMLSS and estimates a number of metrics, see value.
}
\value{
returns a list with 'datOut' a data.frame with the IDs, observer mean, distribution, estimated mean, variance, coefficient of variation, cv squared, gini, theil, MLD, aic, bic, the results of a convergence test, log likelihood, number of parameters, median, and std. deviation; 'timeStamp' a time stamp; 'parameters' the estiamted parameter; and 'quantiles' the quantile estimates if saveQuants == TRUE)
}
\references{
FIXME - references
}

\seealso{
\code{\link[gamlss:gamlss]{gamlss}}
}
\examples{
data(state_bins)

use_states <- which(state_bins[,'State'] == 'Texas' | state_bins[,'State'] == 'California')

ID <- state_bins[use_states,'State']
hb <- state_bins[use_states,'hb']
bmin <- state_bins[use_states,'bin_min']
bmax <- state_bins[use_states,'bin_max']
omu <- rep(NA, length(use_states))
fitFunc(ID = ID, hb = hb, bin_min = bmin, bin_max = bmax, obs_mean = omu, ID_name = 'State')
}