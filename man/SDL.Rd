\name{SDL}
\alias{SDL}
\title{
A function to calculate the SDL 
}
\description{
This fuction calculates SDL 
}
\usage{
SDL(samps)
}
\arguments{
  \item{samps}{
a (non-empty) numeric vector of values to calculate SDL over, for example, bin mid points or samples take from a fitted distribution.
}
}
\details{
FIXME - equations
}
\value{
returns a numeric value representing the SLD
}
\references{
FIXME - references
}
\examples{
SDL(qnorm(seq(0.001,0.999,length.out = 10), mean = 100))
}