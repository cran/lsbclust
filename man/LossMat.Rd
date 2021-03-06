% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{LossMat}
\alias{LossMat}
\title{C++ Function for Interaction Loss Function}
\arguments{
\item{x}{The data matrix, with the N slices strung out as vectors in the columns.}

\item{y}{The matrix of cluster means, with each mean represented by a row.}
}
\value{
A numeric matrix with \code{nclust} rows and \code{N} columns.
}
\description{
This function calculates the loss function for the interaction clustering
for all data slices and clusters means. The inputs are numeric matrices.
}
