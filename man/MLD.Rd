\name{MLD}
\alias{MLD}
\title{
A function to calculate the MLD 
}
\description{
This fuction calculates MLD 
}
\usage{
MLD(samps)
}
\arguments{
  \item{samps}{
a (non-empty) numeric vector of values to calculate MLD over, for example, bin mid points or samples take from a fitted distribution.
}
}
\details{
FIXME - equations
}
\value{
returns a numeric value representing the MLD
}
\references{
FIXME - references
}
\examples{
MLD(qnorm(seq(0.001,0.999,length.out = 10), mean = 100))
}