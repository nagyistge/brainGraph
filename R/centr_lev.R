#' Calculate a vertex's leverage centrality
#'
#' This function calculates the leverage centrality of each vertex in a graph.
#'
#' The leverage centrality relates a vertex's degree with the degree of its
#' neighbors. The equation is:
#' \deqn{l_i = \frac{1}{k_i} \sum_{j \in N_i} \frac{k_i - k_j}{k_i + k_j}}
#' where \eqn{k_i} is the degree of the \eqn{i^{th}} vertex and \eqn{N_i} is the
#' set of neighbors of \emph{i}. This function replaces \emph{NaN} with
#' \emph{NA} (for functions that have the argument \emph{na.rm}).
#'
#' This function was adapted from the igraph wiki (http://igraph.wikidot.com).
#'
#' @param g The igraph graph object
#' @export
#'
#' @return A vector of the leverage centrality for all vertices.
#'
#' @author Christopher G. Watson, \email{cgwatson@@bu.edu}
#' @references Joyce K.E., Laurienti P.J., Burdette J.H., Hayasaka S. (2010)
#' \emph{A new measure of centrality for brain networks}. PLoS One, 5(8):e12200.

centr_lev <- function(g) {
  k <- degree(g)
  n <- vcount(g)
  lev.cent <- vector('numeric', length=n)

  lev.cent <- sapply(seq_len(n), function(v) mean((k[v] - k[neighbors(g, v)]) /
                                                  (k[v] + k[neighbors(g, v)])))
  lev.cent <- ifelse(is.nan(lev.cent), NA, lev.cent)
}