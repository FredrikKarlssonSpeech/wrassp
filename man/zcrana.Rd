% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zcrana.R
\name{zcrana}
\alias{zcrana}
\title{zcrana}
\usage{
zcrana(listOfFiles = NULL, optLogFilePath = NULL, beginTime = 0,
  centerTime = FALSE, endTime = 0, windowShift = 5, windowSize = 25,
  toFile = TRUE, explicitExt = NULL, outputDirectory = NULL,
  forceToLog = useWrasspLogger, verbose = TRUE)
}
\arguments{
\item{listOfFiles}{vector of file paths to be processed by function}

\item{optLogFilePath}{path to option log file}

\item{beginTime}{= <time>: set begin of analysis interval to <time> seconds (default: begin of file)}

\item{centerTime}{= <time>  set single-frame analysis with the analysis window centred at <time> seconds; 
overrules beginTime, endTime and windowShift options}

\item{endTime}{= <time>: set end of analysis interval to <time> seconds (default: end of file)}

\item{windowShift}{= <dur>: set analysis window shift to <dur> ms (default: 5.0)}

\item{windowSize}{= <dur>:  set analysis window size to <dur> ms (default: 25.0)}

\item{toFile}{write results to file (default extension is .zcr)}

\item{explicitExt}{set if you wish to overwride the default extension}

\item{outputDirectory}{directory in which output files are stored. Defaults to NULL, i.e.
the directory of the input files}

\item{forceToLog}{is set by the global package variable useWrasspLogger. This is set
to FALSE by default and should be set to TRUE is logging is desired.}

\item{verbose}{display infos & show progress bar}
}
\value{
nrOfProcessedFiles or if only one file to process return AsspDataObj of that file
}
\description{
zcrana function adapted from libassp
}
\details{
Analysis of the averages of the short-term positive and
negative zero-crossing rates of the signal in <listOfFiles>.
Analysis results will be written to a file with the
base name of the input file and extension '.zcr'.
Default output is in SSFF binary format (track 'zcr').
}
\examples{
# get path to audio file
path2wav <- list.files(system.file("extdata", package = "wrassp"), 
                       pattern = glob2rx("*.wav"), 
                       full.names = TRUE)[1]

# calculate zcr values
res <- zcrana(path2wav, toFile=FALSE)

# plot zcr values
plot(seq(0,numRecs.AsspDataObj(res) - 1) / rate.AsspDataObj(res) +
       attr(res, 'startTime'),
     res$zcr, 
     type='l', 
     xlab='time (s)', 
     ylab='ZCR values')

}
\author{
Raphael Winkelmann

Lasse Bombien
}
