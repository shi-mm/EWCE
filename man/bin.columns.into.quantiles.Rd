% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin.columns.into.quantiles.r
\name{bin.columns.into.quantiles}
\alias{bin.columns.into.quantiles}
\title{bin.columns.into.quantiles}
\usage{
bin.columns.into.quantiles(matrixIn, numberOfBins = 40)
}
\arguments{
\item{matrixIn}{The matrix of specificity values}

\item{numberOfBins}{Number of quantile 'bins' to use (40 is recommended)}
}
\value{
A matrix with same shape as matrixIn but with columns storing quantiles instead of specificity
}
\description{
\code{bin.columns.into.quantiles} is an internal function used to convert a matrix of specificity (with columns of cell types) intom a matrix of specificity quantiles
}
\examples{
data(ctd)
ctd[[1]]$specificity_quantiles = apply(ctd[[1]]$specificity,2,
                                       FUN=bin.columns.into.quantiles,
                                       numberOfBins=40)
}
