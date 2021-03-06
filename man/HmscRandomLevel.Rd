% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HmscRandomLevel.R
\docType{class}
\name{HmscRandomLevel}
\alias{HmscRandomLevel}
\title{Single level of random factors in HMSC}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
HmscRandomLevel
}
\arguments{
\item{pi}{determines the unique IDs for the distinct units on this level of random factors}

\item{s}{matrix of coordinates in the}

\item{sDim}{number of spatial dimensions}

\item{N}{number of unique units on this level}
}
\description{
Specifies the structure for the single level of random factors, whether the level
 is assumed to be spatial or not, the spatial coordinates,
}
\examples{
HmscRandomLevel$new(data.frame(s1=c(1:10),s2=c(10:1)))
HmscRandomLevel$new(pi=as.factor(1:10))

}
\keyword{datasets}
