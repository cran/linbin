% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/event_operations.R
\name{cut_events}
\alias{cut_events}
\title{Cut Events}
\usage{
cut_events(e, cuts, scaled.cols = NULL)
}
\arguments{
\item{e}{an event table.}

\item{cuts}{the cut locations. Can be either a numeric vector or an event table. If an event table that contains points, point events will be created where they intersect the interior, but not the endpoints, of line events in \code{e}.}

\item{scaled.cols}{names or indices of the event table columns to be scaled to their new length after cutting. Names are interpreted as regular expressions (\code{\link{regex}}) matching full column names.}
}
\description{
Cuts events at the specified locations.
}
\details{
Line events straddling cut locations are cut into multiple event segments. Columns \code{scaled.cols} are scaled by the fraction of the original event length in each resulting event (which assumes that these variables were uniformly distributed over the original interval). To have a record of the parents of the resulting event segments, append an unique identification field to the event table before calling this function.
}
\examples{
e <- events(c(0, 10, 20), c(10, 20, 30), x = 10)
cut_events(e, events(c(0, 5, 15)))
cut_events(e, events(c(0, 5, 15)), scaled.cols = "x")
cut_events(e, events(c(0, 5, 5, 15)), scaled.cols = "x")   # creates new points inside lines
cut_events(e, events(c(0, 10, 10, 15)), scaled.cols = "x") # but not at line event endpoints
}
\seealso{
\code{\link{crop_events}} for both cutting and removing events.
}
