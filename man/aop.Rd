% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/individ_contrib.R
\name{aop}
\alias{aop}
\title{"Add-one-patient" approach to estimate individual network contribution}
\usage{
aop(resids, index, corr.mat, level = c("global", "regional"))
}
\arguments{
\item{resids}{Data table of model residuals}

\item{index}{Integer; the row number (in the residuals data table) of the
subject to be added}

\item{corr.mat}{Correlation matrix of the control group}

\item{level}{Character string; the level at which you want to calculate
contributions (either \emph{global} or \emph{regional})}
}
\value{
A \code{data.table} with columns for
  \item{Study.ID}{Subject identifier}
  \item{Group}{Group membership}
  \item{IC}{The value of the individual contribution}
}
\description{
Calculates the individual contribution to group network data for each subject
in each group using a "add-one-patient" approach. The residuals of a single
patient are added to those of a control group, and a correlation matrix is
created. This is compared to the original correlation matrix using the Mantel
test.
}
\examples{
\dontrun{
IC <- adply(which(resids.all[, Group == groups[2]]), .margins=1, function(x)
            aop(resids.all, x, corrs[[1]][[1]]$R),
            .parallel=T, .id=NULL)
}
}
\author{
Christopher G. Watson, \email{cgwatson@bu.edu}
}
\references{
Saggar M., Hosseini S.M.H., Buno J.L., Quintin E., Raman M.M.,
  Kesler S.R., Reiss A.L. (2015) \emph{Estimating individual contributions
  from group-based structural correlations networks}. NeuroImage, 120:274-284.
  doi:10.1016/j.neuroimage.2015.07.006
}

