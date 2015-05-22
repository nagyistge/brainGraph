#' Count number of inter-lobar connections from a given major lobe
#'
#' This function will count the number of edges between all vertices in one
#' major lobe (e.g. Frontal) and all other major lobes.
#'
#' @param g The igraph graph object
#' @param lobe A character string indicating the lobe to count from (uppercase)
#' @param atlas.list A list with specific atlas data
#' @export
#'
#' @return An integer of the edge counts
#'
#' @author Christopher G. Watson, \email{cgwatson@@bu.edu}
#' @examples
#' \dontrun{
#' atlas.list <- eval(parse(text=data(list=g1[[N]]$atlas)))
#' g1.frontal <- count_interlobar(g1[[N]], 'Frontal', atlas.list)
#' }

count_interlobar <- function(g, lobe, atlas.list) {
  lobe.names <- levels(atlas.list$lobe)
  if (! lobe %in% lobe.names) {
    stop('Incorrect lobe name!')
  }

  id <- which(lobe == lobe.names)
  total <- length(E(g)[which(V(g)$lobe == id) %--% V(g)])
  intra <- length(E(g)[which(V(g)$lobe == id) %--% which(V(g)$lobe == id)])
  inter <- total - intra

  DT <- data.table(total=total, intra=intra, inter=inter)
  return(DT)
}