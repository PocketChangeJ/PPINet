% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PPIConstruction.R
\name{NetSimplify}
\alias{NetSimplify}
\title{PPI network simplification}
\usage{
NetSimplify(net, p.values, STRINGTheta = 0)
}
\arguments{
\item{net}{Edgelist from \code{\link{PPIFromString}}, 
\code{\link{PPIFromStringEnsembl}} and \code{\link{PPIFromBioGRID}}}

\item{p.values}{The p-values vector}

\item{savename}{Name for saving PPI edge list as plain file and also saving 
nodes in largest connected component and figure as eps format by default}
}
\value{
a list containing module size, best score, module as a list of nodes
}
\description{
Simplify protenin-protein interaction network, for module identification
}
\examples{
require(genalg)
Sp <- NetSimplify(net,0)
GA_result <- GA_search_connected(lambda=0.5,Sp$node_score,Sp$edge_score,
Sp$Edgelist,num_iter=1000, muCh=0.05, zToR=10, minsize=10)

}
\author{
Dong Li, \email{dxl466@cs.bham.ac.uk}
}
\seealso{
\code{\link{PPIFromString}}, \code{\link{PPIFromStringEnsembl}} 
and \code{\link{PPIFromBioGRID}}
}
\keyword{CONSTRUCTION}
\keyword{STRING}

