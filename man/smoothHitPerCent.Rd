% Generated by roxygen2 (4.0.2): do not edit by hand
\name{smoothHitPerCent}
\alias{smoothHitPerCent}
\title{Smooth the hits of neighboring fragments}
\usage{
smoothHitPerCent(object, binWidth = 101, thresh = 1)
}
\arguments{
\item{object}{A \code{FourC} object.}

\item{binWidth}{Integer vector of odd numbers.}

\item{thresh}{Single integer defining the threshold for calling a fragment a hit.}
}
\value{
Returns an updated \code{FourC} object with smoothed counts
for each binWidth as new assays.
}
\description{
Counts are transformed to a hit if they exceed the given threshold.
Hits are then smoothed using the number of fragments provided by binWidth.
binWidth has to be an odd number so that an equal number of fragments
to each side of the current fragment are used for smoothing.
}
\examples{
data(fc, package="FourCSeq")

fc <- smoothHitPerCent(fc)
fc
}
\author{
Felix A. Klein, \email{felix.klein@embl.de}
}
\seealso{
\code{\link{FourC}}
}

