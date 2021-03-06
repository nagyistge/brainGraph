# brainGraph
[![Linux Build Status](https://travis-ci.org/cwatson/brainGraph.svg)](https://travis-ci.org/cwatson/brainGraph)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/brainGraph)](http://cran.rstudio.com/web/packages/brainGraph/index.html)
[![](http://cranlogs.r-pkg.org/badges/grand-total/brainGraph)](http://cran.rstudio.com/web/packages/brainGraph/index.html)

*brainGraph* is an R package that is used to perform graph theory analyses of
brain MRI data. It is currently most useful in atlas-based analyses (e.g. using
an atlas such as AAL or one from Freesurfer); however, the computations will
still work with any graph. There is a plotting GUI for fast and easy data
exploration that will *not* work without data from a standard atlas (ideally to
be fixed some time in the future).

# Installation
There are two ways to install this package:

* Directly from CRAN:
``` r
install.packages('brainGraph')
```

* For development versions, using the *devtools* package (install first, if
necessary):
``` r
devtools::install_github('cwatson/brainGraph')
```
This should install all of the dependencies needed along with the package
itself.

# Usage
To see the *User Guide*, please use
[this link.](https://dl.dropboxusercontent.com/s/wmupawb39bcdho3/brainGraph_UserGuide.pdf) (NOTE: you will be asked to download the PDF)

# Getting Help
For bug reports, feature requests, help with usage/code/etc., please use the
*Google Group*
[brainGraph-help](https://groups.google.com/forum/?hl=en#!forum/brainGraph-help).
