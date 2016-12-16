\name{run_GB_family}
\alias{run_GB_family}

\title{
A function to fit a parametric distributions to binned data.
}
\description{
This function fits a series of parametric distributions from the GB family to binned data. 
}
\usage{
run_GB_family(ID,hb,bin_min,bin_max,obs_mean,ID_name,quantiles,modelsToFit,return_params)
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
   \item{quantiles}{
a (non-empty) vector of quantiles for use in calculating metrics. The default is seq(0.006,0.996, length.out = 1000).
}
   \item{modelsToFit}{
a (non-empty) vector of model names, currently limited to the following distributions GB2, GG, BETA2, DAGUM, SINGMAD, LOGNO, WEI, GA, LOGLOG, PARETO2.
}
  \item{return_params}{
a (non-empty) logical indicating whether to retunr the parameters. The default is TRUE.
}
}
\details{
Fits a GAMLSS and estimates a number of metrics, see value.
}
\value{
returns a list with "fit" = fitted model and metrics, "fit.filter" = filtered for undefined moments fitted model and metrics, "best_model" = best model results, "best_model.filter" = filtered for undefined moments best model results.
}

\seealso{
\code{\link[gamlss:gamlss]{gamlss}}
}
\examples{
data(state_bins)

use_states <- which(state_bins[,'State'] == 'Texas')
TX <- state_bins[use_states,]

LNO_WEI_GA <- run_GB_family(ID = TX[,'State'], hb = TX[,'hb'], 
bin_min = TX[,'bin_min'], bin_max = TX[,'bin_max'], obs_mean = 
rep(NA, length(use_states)), ID_name = "State", quantiles = 
seq(0.006,0.996, length.out = 1000), modelsToFit = 
c('LOGNO','WEI','GA'))

}