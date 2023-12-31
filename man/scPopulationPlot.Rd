% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scPopulationPlot.R
\name{scPopulationPlot}
\alias{scPopulationPlot}
\title{scPopulationPlot}
\usage{
scPopulationPlot(
  object = NULL,
  by = c("sample", "cluster"),
  order = NULL,
  cols = NULL
)
}
\arguments{
\item{object}{Seurat object}

\item{by}{String used to separate cluster/sample, 
only 'cluster' or 'sample' is accepted}

\item{order}{A vector to set the order of samples}

\item{cols}{Vector of colors, each color corresponds to an identity class. 
  Use ggplot2's default colors by default.
We include a pallete called 'sc' which consists of 36 colors}
}
\value{
A dataframe that used to draw this plot
}
\description{
Population plot by clusters or samples
}
\examples{
data("H3N2_small")
scPopulationPlot(object = H3N2_small,
  by = "sample",
  cols = NULL,
  order = c("Bystander", "Infected")
)

}
