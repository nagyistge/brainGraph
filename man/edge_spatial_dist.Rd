% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_dist.R
\name{edge_spatial_dist}
\alias{edge_spatial_dist}
\title{Calculate Euclidean distance of edges}
\usage{
edge_spatial_dist(g)
}
\arguments{
\item{g}{An igraph graph object}
}
\value{
A numeric vector with length equal to the edge count of the input
graph
}
\description{
This function calculates the Euclidean distance of edges between vertices of
a graph. The distances are in \emph{mm} and based on MNI space. The distances
are \emph{NOT} along the cortical surface, so can only be considered
approximations, particularly concerning inter-hemispheric connections. The
input graph must have \emph{atlas} as a graph-level attribute.
}
\author{
Christopher G. Watson, \email{cgwatson@bu.edu}
}

