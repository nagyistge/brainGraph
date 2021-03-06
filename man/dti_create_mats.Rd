% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dti_create_mats.R
\name{dti_create_mats}
\alias{dti_create_mats}
\title{Create connection matrices for tractography analysis}
\usage{
dti_create_mats(A.files, divisor = c("none", "waytotal", "size", "rowSums"),
  div.files = NULL, mat.thresh = 0, sub.thresh = 0.5, inds,
  algo = c("probabilistic", "deterministic"), P = 5000)
}
\arguments{
\item{A.files}{A character vector of the filenames with connection matrices}

\item{divisor}{A character string indicating how to normalize the connection
matrices; either 'none' (default), 'waytotal', 'size', or 'rowSums'}

\item{div.files}{A character vector of the filenames with the data to
normalize by (e.g. a list of \emph{waytotal} files) (default: NULL)}

\item{mat.thresh}{A numeric (vector) for thresholding connection matrices
(default: 0)}

\item{sub.thresh}{A numeric (between 0 and 1) for thresholding by subject
numbers (default: 0.5)}

\item{inds}{A list (length equal to number of groups) of integers; each list
element should be a vector of length equal to the group sizes}

\item{algo}{Character string of the tractography algorithm used (default:
'probabilistic')}

\item{P}{Number of samples generated using FSL (default: 5000)}
}
\value{
A list containing:
\item{A}{A 3-d array of the raw connection matrices}
\item{A.norm}{A 3-d array of the normalized connection matrices}
\item{A.bin}{A 3-d array of binarized connection matrices}
\item{A.bin.sums}{A list of 2-d arrays of connection matrices, with each
entry signifying the number of subjects with a connection present; the number
of list elements equals the length of \code{mat.thresh}}
\item{A.inds}{A list of arrays of binarized connection matrices, containing 1
if that entry is to be included}
\item{A.norm.sub}{A list of 3-d arrays of the normalized connection matrices
for all given thresholds}
\item{A.norm.mean}{A list of 2-d arrays of the normalized connection matrices
averaged for each group}
}
\description{
This function will take a vector of filenames which contain connection
matrices (e.g. the \emph{fdt_network_matrix} files from FSL) and create
arrays of this data. You may choose to normalize these matrices by the
\emph{waytotal} or \emph{region size} (which both require a character vector
of filenames), or not at all.
}
\details{
The argument \code{mat.thresh} allows you to choose a numeric threshold,
below which the connections will be replaced with 0; this argument will also
accept a numeric vector. The argument \code{sub.thresh} will keep only those
connections for which at least \emph{X}\% of subjects have a positive entry
(the default is 0.5, or 50\%).
}
\examples{
\dontrun{
thresholds <- seq(from=0.001, to=0.01, by=0.001)
my.mats <- dti_create_mats(f.A, 'waytotal', f.way, thresholds,
  sub.thresh=0.5, inds)
my.mats <- dti_create_mats(f.A, 'size', f.size, thresholds,
  sub.thresh=0.5, inds, P=5000)
}
}
\author{
Christopher G. Watson, \email{cgwatson@bu.edu}
}

