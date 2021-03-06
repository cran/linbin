% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/event_creation.R
\name{read_events}
\alias{read_events}
\title{Read File as Event Table}
\usage{
read_events(file, from.col = 1, to.col = 2, sep = "", header = TRUE, ...)
}
\arguments{
\item{file}{Name, \code{\link{connection}}, or \code{\link{url}} of the file to be read as an event table.}

\item{from.col, to.col}{Names or indices of the columns containing event endpoints. Values are swapped as needed to ensure that \code{to > or = from} on all rows.}

\item{sep}{Character separating values on each line of the file. If \code{sep = ""} (the default), the separator is 'white space' (that is, any combination of one or more spaces, tabs, newlines and carriage returns).}

\item{header}{Logical value indicating whether the file contains column names as its first line. If \code{FALSE}, columns will be named "V" followed by the column number, unless \code{col.names} (a vector of optional column names) is provided as an additional argument.}

\item{...}{Additional arguments, of the form \code{tag = value}, to be passed directly to \code{\link{read.table}} to control how the file is read.}
}
\description{
Reads a file in table format and attempts to coerce it to an event table.
}
\details{
The file is read into R by calling \code{\link{read.table}}. Any of its arguments can be set by passing additional \code{tag = value} pairs. \code{from.col} and \code{to.col} are renamed to "from" and "to" as needed. Since these column names must be unique, other columns cannot also be called "from" or "to".
}
\seealso{
\code{\link{read.table}}.

\code{\link{events}} and \code{\link{as_events}} for creating event tables from existing objects.
}
