#' Plot method for class 'ovl.kmeans'
#' 
#' Simple plot method for object of class 'ovl.kmeans' as output by \code{\link{orc.lsbclust}}.
#' 
#' @param x An object of class \code{ovl.kmeans}
#' @param which Which type of plot to produce. Currently only \code{which = 1} is implemented.
#' @param \dots additional arguments passed to \code{\link{theme}}.
#' @keywords hplot
#' @author Pieter C. Schoonees
#' @method plot ovl.kmeans
#' @export
#' @examples
#' data("dcars")
#' m <- orc.lsbclust(data = dcars, margin = 3, delta = c(1,1,1,1), nclust = 5, type = "overall")
#' plot(m)
plot.ovl.kmeans <- function(x, which = 1L, ...){
  
  ## Avoid global variable issues
  Cluster <- Mean <- Size <- NULL
  
  ## Set up show
  show <- rep(FALSE, 1)
  show[which] <- TRUE
  
  ## Determine lengths etc.
  k <- length(x$size)
  df <- data.frame(Mean = as.numeric(x$centers), 
                   Cluster = factor(paste0("O", 1:nrow(x$centers))),
                   Size = paste("n =", tabulate(x$cluster)))
  if(show[1L]){
    plot1 <- ggplot(data = df) + geom_bar(aes(x = Cluster, y = Mean), stat = "identity") +
      geom_text(aes(x = Cluster, y = Mean, ymax = Mean, label = Size), vjust = -0.5, 
                position = position_dodge(height = 1)) + 
      theme(...) + ggtitle("Overall means")
  }
  mget(paste0("plot", which))
}
