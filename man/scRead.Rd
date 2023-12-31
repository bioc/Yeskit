% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scRead.R
\name{scRead}
\alias{scRead}
\title{scRead function}
\usage{
scRead(
  sample_name = NULL,
  data_dir = NULL,
  gene_column = 2,
  min_cells = 5,
  min_features = 200,
  min_rnas = 1000,
  percent_mito = 20,
  mito_pattern = "^GRCh38_MT-|^mm10___mt-|^MT-|^mt-",
  project_name = "Seurat",
  group_name = NULL,
  strip_suffix = TRUE,
  meta_file = NULL,
  human.prefix = "GRCh38_",
  mouse.prefix = "mm10___",
  organism.thres = 0.9,
  organism.use = NULL,
  meta_features = NULL
)
}
\arguments{
\item{sample_name}{Name of the sample}

\item{data_dir}{Directory containing the quantification matrix
(matrix.mtx, features.tsv, and barcodes.tsv)}

\item{gene_column}{Column of genes.tsv to use for gene names,
default is 2}

\item{min_cells}{Minimum number of cells express this feature}

\item{min_features}{Minimum number of features expressed in this cell}

\item{min_rnas}{Minimum number of molecules detected within a cell.}

\item{percent_mito}{Maximum percent of mito in a cell}

\item{mito_pattern}{regex pattern for mitochondrial genes, 
default is '^GRCh38_MT-|^mm10___mt-|^MT-|^mt-'}

\item{project_name}{Project name for the Seurat object}

\item{group_name}{Group name for the Seurat object}

\item{strip_suffix}{Remove trailing '-1' in cell barcodes}

\item{meta_file}{Meta file to use}

\item{human.prefix}{The prefix denoting rownames for human cells. 
Default is 'GRCh38_'. Just for PDX samples}

\item{mouse.prefix}{The prefix denoting rownames for mouse cells. 
Default is 'mm10___'. Just for PDX samples}

\item{organism.thres}{Threshould fraction of reads to separate organism 
and background, Default is 0.9. Just for PDX samples}

\item{organism.use}{Which organism is used. Default is NULL, 
means all organisms will be used. Just for PDX samples}

\item{meta_features}{Features used to store in the meta.data slot}
}
\value{
A Seurat object.
}
\description{
A function to read single-cell expression matrix
}
\details{
read scRNA matrix

It supports read gene expression matrix and microbiome
quantification matrix simultaneously
}
\examples{
x <- scRead(sample_name = "Infected", 
  data_dir = system.file("extdata/H3N2_10X_matrix/Infected/",
                         package="Yeskit"), 
  gene_column = 2, 
  project_name = "H3N2", 
  group_name = "Infected",
  meta_file = system.file("extdata/H3N2_10X_matrix/Infected/microbes.tsv",
                          package="Yeskit"),
)    
x

}
\references{
Inspired by Stuart and Butler et al, Cell (2019)
}
