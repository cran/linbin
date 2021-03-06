% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time.R
\name{to_date}
\alias{to_date}
\title{Convert event endpoints to dates}
\usage{
to_date(e, origin = as.Date("1970-01-01"))
}
\arguments{
\item{e}{Event table or atomic vector.}

\item{origin}{Date object (see \code{\link[base]{as.Date}}).}
}
\description{
Convert event endpoints to dates
}
\examples{
t <- as.Date("1970-01-01") + 0:4
e <- events(t)
to_date(e)
to_date(e$from)
}
