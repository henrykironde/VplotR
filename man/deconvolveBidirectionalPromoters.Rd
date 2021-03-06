% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{deconvolveBidirectionalPromoters}
\alias{deconvolveBidirectionalPromoters}
\title{A function to duplicate bi-directional GRanges}
\usage{
deconvolveBidirectionalPromoters(granges)
}
\arguments{
\item{granges}{A stranded GRanges object}
}
\value{
GRanges with only '+' and '-' strands. GRanges with '*' strand 
have been duplicated and split into forward and reverse strands.
}
\description{
This function splits bi-directional ranges into + and - 
stranded ranges. It duplicates the ranges which are '*'.
}
\examples{
data(ce11_all_REs)
library(GenomicRanges)
proms <- ce11_all_REs[grepl('prom', ce11_all_REs$regulatory_class)]
proms
table(strand(proms))
proms <- deconvolveBidirectionalPromoters(proms)
proms
table(strand(proms))
}
