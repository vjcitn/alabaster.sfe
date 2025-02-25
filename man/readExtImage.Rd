% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readImages.R
\name{readExtImage}
\alias{readExtImage}
\title{Read \code{ExtImage} from disk}
\usage{
readExtImage(path, metadata = NULL, ...)
}
\arguments{
\item{path}{String containing a path to a directory, itself created with a \code{\link[alabaster.base]{saveObject}} method.}

\item{metadata}{Named list containing metadata for the object - most importantly, the \code{type} field that controls dispatch to the correct loading function.
If \code{NULL}, this is automatically read by \code{\link[alabaster.base]{readObjectFile}(path)}.}

\item{...}{Arguments passed to \code{\link{readImage}}.}
}
\value{
A \code{\link{ExtImage}} object for SFE.
}
\description{
Read \code{ExtImage} from disk
}
\examples{
library(SFEData)
fp <- tempfile()
fsave <- file.path(fp, "exi")
x1 <- XeniumOutput(dataset = "v1", file_path = file.path(fp, "xenium1"))
sfe <- readXenium(x1)
bfi <- getImg(sfe)
exi <- toExtImage(bfi)
saveObject(exi, fsave)
exi2 <- readObject(fsave)
unlink(fsave, recursive = TRUE)

}
\seealso{
Other readObject-SFE-image: 
\code{\link{readBioFormatsImage}()},
\code{\link{readSpatRaster}()}
}
\concept{readObject-SFE-image}
