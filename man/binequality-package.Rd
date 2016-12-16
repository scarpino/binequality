\name{binequality-package}
\alias{binequality-package}
\alias{binequality}
\docType{package}
\title{
Methods for Analyzing Binned Income Data
}
\description{
Methods for model selection, model averaging, and calculating metrics, such as the Gini, Theil, Mean Log Deviation, etc, on binned income data where the topmost bin is right-censored.  We provide both a non-parametric method, termed the bounded midpoint estimator (BME), which assigns cases to their bin midpoints; except for the censored bins, where cases are assigned to an income estimated by fitting a Pareto distribution. Because the usual Pareto estimate can be inaccurate or undefined, especially in small samples, we implement a bounded Pareto estimate that yields much better results.  We also provide a parametric approach, which fits distributions from the generalized beta (GB) family. Because some GB distributions can have poor fit or undefined estimates, we fit 10 GB-family distributions and use multimodel inference to obtain definite estimates from the best-fitting distributions. We also provide binned income data from all United States of America school districts, counties, and states.    
}
\details{
\tabular{ll}{
Package: \tab binequality\cr
Type: \tab Package\cr
Version: \tab 1.0.1\cr
Date: \tab 2016-12-16\cr
License: \tab GPL (>= 3.0)\cr
}
The datasets are: state_bins, county_bins, and school_district_bins.

The main functions are: fitFunc, run_GB_family, getMids, getQuantilesParams, giniCoef, LRT, makeFitComb, makeInt, makeIntWeight, makeWeightsAIC, mAvg, midStats, MLD, modelAvg, paramFilt, and theilInd.

Type ?<object> to learn more about these objects, e.g. ?state_bins

Type ?<function> to see examples of the function's use, e.g. ?getMids
}
\author{
Samuel V. Scarpino, Paul von Hippel, and Igor Holas 

Maintainer: Samuel V. Scarpino <scarpino@utexas.edu>
}
\references{
FIXME - references
}
\keyword{ package }
\seealso{
\code{\link[gamlss:gamlss]{gamlss}}
}
\examples{
#FIXME, write the example run of states here
}
