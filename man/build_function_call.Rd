% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_events.R
\name{build_function_call}
\alias{build_function_call}
\title{Build Function Call}
\usage{
build_function_call(
  fun,
  bin.col,
  data.cols,
  arg.cols = NULL,
  group.cols = NULL,
  arglist = NULL
)
}
\arguments{
\item{fun}{Function to use.}

\item{bin.col}{Column defining the grouping of bins.}

\item{data.cols}{Columns to each be passed as first argument to the function.}

\item{arg.cols}{Columns to be passed as the second, third, ... arguments of the function.}

\item{group.cols}{Columns to be used as factors.}

\item{arglist}{Additional arguments to pass to function \code{fun}.}
}
\value{
A function whose parent environment encloses all of its fixed arguments.
}
\description{
Helper function for \code{\link{sampling_functions}}. Builds a function call in a enclosed environment with all fixed arguments and column indices so that the function can later be passed row subsets of an event table for sampling.
}
\keyword{internal}
