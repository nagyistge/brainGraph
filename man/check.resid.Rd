% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_resid.R
\name{check.resid}
\alias{check.resid}
\title{Check model residuals for each brain region}
\usage{
check.resid(resids, cols = FALSE)
}
\arguments{
\item{resids}{Data table of model residuals for all brain regions}

\item{cols}{Logical indicating whether to color by group (default: FALSE)}
}
\value{
A list of \code{\link[ggplot2]{ggplot}} objects
}
\description{
This function checks the model residuals for each brain region in the
analysis. It simply does a qqplot of the studentized residuals (but uses
\code{ggplot2} functions).
}
\examples{
\dontrun{
p.resids <- check.resid(resids.all)
lapply(p.resids, function(x) {dev.new(); print(x)})
}
}
\author{
Christopher G. Watson, \email{cgwatson@bu.edu}
}
\seealso{
\code{\link[stats]{qqnorm}}
}

