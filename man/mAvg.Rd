\name{mAvg}
\alias{mAvg}

\title{
A simple function to perfom model averaging using pre-calculated weights.
}
\description{
This function takes weights and parameters and returns model averaged parameters using the weights.
}
\usage{
mAvg(params, ws)
}
\arguments{
  \item{params}{
a (non-empty) numeric vector of parameters
}
  \item{ws}{
a (non-empty) numeric vector of weights corresponding to params.
}
}
\value{
Returns a numeric vector of model averaged parameters.
}
\examples{
#not run, iternal function
}