#' @name lov
#' @title List-of-values Data Set
#' @description This is the list-of-values data set used in Van Rosmalen, Van Herk & Groenen (2010). 
#' Column names and factor labels differ slightly from that paper. Missings are coded as \code{NA} as usual.
#' @docType data
#' @usage lov
#' @format A data frame with 4514 observations on the following 12 variables.
#' \describe{ \item{Belonging}{a numeric vector}
#' \item{Excitement}{a numeric vector} \item{Relationships}{a
#' numeric vector} \item{Self-fulfilment}{a numeric vector}
#' \item{Respected}{a numeric vector} \item{Enjoyment}{a
#' numeric vector} \item{Security}{a numeric vector}
#' \item{Self-respect}{a numeric vector}
#' \item{Accomplishment}{a numeric vector} \item{Country}{a
#' factor with levels \code{Britain} \code{France} \code{Germany} \code{Italy}
#' \code{Spain}} \item{Education}{a factor with levels \code{Low}
#' \code{High}} \item{Age}{a factor with levels \code{-25} \code{25-39}
#' \code{40-54} \code{55+}} }
#' @source Joost van Rosmalen
#' @examples
#' data("lov")
#' 
#' ## Construct array
#' lovarr <- indarr(lov[, 1:9], maxcat = 9)
#' 
#' ## Run analysis
#' set.seed(13841)
#' fit <- lsbclust(data = lovarr, margin = 3, delta = c(0, 1, 0, 0), nclust = c(NA, 11, NA, 5), 
#'                  fixed = "rows", nstart = 1, iter.max = 50, nstart.kmeans = 10)
 NULL