% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/divcells.R
\name{celltdiv}
\alias{celltdiv}
\title{celltdiv}
\usage{
celltdiv(cdata, cellsets = NULL)
}
\arguments{
\item{cdata}{A dataframe with row names for sample names
and column names containing at least three cell type names.}

\item{cellsets}{A vector containing the names of
the cell types(length(cellsets)>=3) of interest.}
}
\value{
a dataframe which the row names are the sample names,
and the column names are sample (sample name), divscore (diversity score of
the interested cell types), and condition respectively.
}
\description{
Calculate diversity scores(without metadata)
}
\examples{
cellsets <- c("B.cells.naive", "B.cells.memory", "Plasma.cells")
cdata <- matrix(1:12, 3, 4)
row.names(cdata) <- c("A", "B", "C")
colnames(cdata) <- c("B.cells.naive", "B.cells.memory", "Plasma.cells",  "T.cells.CD8")
cdata <- cbind(as.data.frame(cdata), condition = c("R", "D", "R"))
celltdiv(cdata = cdata, cellsets = cellsets)
}
\author{
W Xie
}
