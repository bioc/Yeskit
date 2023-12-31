% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scPathogenRatioPlot.R
\name{scPathogenRatioPlot}
\alias{scPathogenRatioPlot}
\title{scPathogenRatioPlot function}
\usage{
scPathogenRatioPlot(
  object = NULL,
  species = NULL,
  cols = NULL,
  split.by = NULL,
  ncol = NULL
)
}
\arguments{
\item{object}{Seurat object}

\item{species}{Name of pathogen species}

\item{cols}{Colors to plot}

\item{split.by}{Name of a metadata column to split plot by}

\item{ncol}{Number of columns for display the plots}
}
\value{
A ggplot object
}
\description{
pathogen population plot by clusters
}
\examples{
data("H3N2_small")
scPathogenRatioPlot(object = H3N2_small,
  species = "H3N2",
  split.by = "sample",
  ncol = 2
)

}
