% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AsspDataObj.R
\name{read.AsspDataObj}
\alias{read.AsspDataObj}
\alias{getAsspDataObj}
\title{read.AsspDataObj from a signal/parameter file}
\usage{
read.AsspDataObj(fname, begin = 0, end = 0, samples = FALSE)
}
\arguments{
\item{fname}{filename of the signal or parameter file}

\item{begin}{begin time (default is in ms) of segment to retrieve}

\item{end}{end time (default is in ms) of segment to retrieve}

\item{samples}{(BOOL) if set to false ms values of begin/end are sample numbers}
}
\value{
list object containing file data
}
\description{
read.AsspDataObj creates an object of class dobj from a signal or parameter 
file readable by the ASSP Library (WAVE, SSFF, AU, ...)
}
\author{
Lasse Bombien
}
