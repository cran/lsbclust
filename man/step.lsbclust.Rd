% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/step.lsbclust.R
\name{step.lsbclust}
\alias{step.lsbclust}
\title{Model Search for lsbclust}
\usage{
step.lsbclust(data, margin = 3L, delta = c(1, 1, 1, 1), nclust,
  ndim = 2, fixed = c("none", "rows", "columns"), nstart = 20,
  starts = NULL, nstart.kmeans = 500, alpha = 0.5,
  parallel = FALSE, maxit = 100, verbose = -1, type = NULL, ...)
}
\arguments{
\item{data}{A three-way array representing the data.}

\item{margin}{An integer giving the single subscript of \code{data} over which the clustering 
will be applied.}

\item{delta}{A four-element binary vector (logical or numeric) indicating which sum-to-zero 
constraints must be enforced.}

\item{nclust}{Either a vector giving the number of clusters which will be applied to each element
of the model, that is to (a subset of) the overall mean, row margins, column margins and 
interactions. If it is a list, arguments are matched by the names \code{"overall"}, \code{"rows"}
\code{"columns"} and \code{"interactions"}. If the list does not have names, the components are 
extracted in the aforementioned order.}

\item{ndim}{The required rank for the approximation of the interactions (a scalar).}

\item{fixed}{One of \code{"none"}, \code{"rows"} or \code{"columns"} indicating whether to fix neither
sets of coordinates, or whether to fix the row or column coordinates across clusters respectively.
If a vector is supplied, only the first element will be used (passed to \code{\link{int.lsbclust}}).}

\item{nstart}{The number of random starts to use for the interaction clustering.}

\item{starts}{A list containing starting configurations for the cluster membership vector. If not
supplied, random initializations will be generated (passed to \code{\link{int.lsbclust}}).}

\item{nstart.kmeans}{The number of random starts to use in \code{\link{kmeans}}.}

\item{alpha}{Numeric value in [0, 1] which determines how the singular values are distributed
between rows and columns (passed to \code{\link{int.lsbclust}}).}

\item{parallel}{Logical indicating whether to parallelize over different starts or not 
(passed to \code{\link{int.lsbclust}}).}

\item{maxit}{The maximum number of iterations allowed in the interaction clustering.}

\item{verbose}{The number of iterations after which information on progress is provided 
(passed to \code{\link{int.lsbclust}}).}

\item{type}{One of \code{"rows"}, \code{"columns"} or \code{"overall"} (or a unique abbreviation of 
one of these) indicating whether clustering should be done on row margins, column margins or
the overall means of the two-way slices respectively. If more than one opion are supplied, the
algorithm is run for all (unique) options supplied (passed to \code{\link{orc.lsbclust}}). This
is an optional argument.}

\item{\dots}{Additional arguments passed to \code{\link{kmeans}}.}
}
\description{
Fit \code{\link{lsbclust}} models for different numbers of clusters and/or different values of 
\code{delta}. The resulting output can be inspected through its \code{plot} method to facilitate 
model selection. Each component of the model is fitted separately.
}
\examples{
m <- step.lsbclust(data = dcars, margin = 3, delta = c(1, 0, 1, 0), nclust = 4:5, 
                     ndim = 2, fixed = "columns", nstart = 1, nstart.kmeans = 100, 
                     parallel = FALSE)
                     
## For a list of all deltas                     
delta <- expand.grid(replicate(4, c(0,1), simplify = FALSE))
delta <- with(delta, delta[!(Var1 == 0 & Var3 == 1), ])
delta <- with(delta, delta[!(Var2 == 0 & Var4 == 1),])
delta <- delta[-4,]
delta <- as.list(as.data.frame(t(delta)))
m2 <- step.lsbclust(data = dcars, margin = 3, delta = delta, nclust = 4:5, 
                     ndim = 2, fixed = "columns", nstart = 1, nstart.kmeans = 100, 
                     parallel = FALSE)
}
