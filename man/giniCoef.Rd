\name{giniCoef}
\alias{giniCoef}
\title{
Calculates the Gini coefficient from quantiles
}
\description{
This function estimates the Gini coefficient using the quantiles sampled from a fitted GAMLSS object.
}
\usage{
giniCoef(seq.i, samps.i)
}
\arguments{
  \item{seq.i}{
a (non-empty) numeric vector of quantile locations.
}
  \item{samps.i}{
a (non-empty) numeric vector of quantile values.
}
}
\details{
Calculates the Gini coefficient from quantiles
}
\value{
Returns the Gini coefficient estimate.
}
\references{
	FIXME - references
}
\examples{
#not run, internal function
}