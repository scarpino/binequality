\name{theilInd}
\alias{theilInd}
\title{
A function to calculate the Theil
}
\description{
This fuction calculates the Theil Index.
}
\usage{
theilInd(samps)
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
returns a numeric value representing the Theil Index
}
\references{
FIXME - references
}
\examples{
theilInd(qnorm(seq(0.001,0.999,length.out = 10), mean = 100))
}