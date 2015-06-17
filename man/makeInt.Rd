\name{makeInt}
\alias{makeInt}
\title{
A function to create a survival object from bin counts.
}
\description{
This function creates a survival object from bin counts, these data cannot be right censored.  There is a separate function for the right censored bins.
}
\usage{
makeInt(ints, hb, trans = NULL)
}
\arguments{
  \item{ints}{
a (non-empty) numeric matrix containing the bin end points, there must be as many rows as length(hb) and the lower bin should be on the left.
}
  \item{hb}{
a (non-empty) numeric vector of bin heights.  
}
  \item{trans}{
an optional function to transform the bins.
}
}
\details{
Creates a survival object.  FIXME - reference to survival package and Surv function.
}
\value{
Returns an object of class "Surv"
}
\seealso{
 FIXME - reference to survival package and Surv function.
}
\examples{
#not run, internal function
}