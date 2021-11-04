\name{fixedNAP.onet_es}
\alias{fixedNAP.onet_es}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design one-sample \eqn{t}-tests with NAP for varied sample sizes
}
\description{
In two-sided fixed design one-sample \eqn{t}-tests with \emph{normal moment prior} assumed on the standardized effect size \eqn{\mu/\sigma} under the alternative, this function calculates the expected weights of evidence (that is, expected log(Bayes Factor)) of the test at a prefixed standardized effect size for a varied range of sample sizes.
}
\usage{
fixedNAP.onet_es(es = 0, nmin = 20, nmax = 5000, 
                 tau.NAP = 0.3/sqrt(2),
                 batch.size.increment, nReplicate = 50000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric. Standardized effect size where the expected weights of evidence is desired. \strong{Default:} \code{0}.
}
  \item{nmin}{
Positive integer. Minimum sample size to be considered. \strong{Default:} 20.
}
  \item{nmax}{
Positive integer. Maximum sample size to be considered. \strong{Default:} 5000.
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of the standardized effect size \eqn{\mu/\sigma} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{batch.size.increment}{
Positive numeric. Increment in sample size. The sequence of sample size thus considered for the fixed design test is from \code{nmin} to \code{nmax} with an increment of \code{batch.size.increment}. \strong{Default:} \code{function(narg){20}}. This means an increment of 20 samples at each step.
}
  \item{nReplicate}{
Positve integer. Number of replicated studies based on which the expected weights of evidence is calculated.  \strong{Default:} 50,000.
}
}
\value{
A list with two components named \code{summary} and \code{BF}. 

\code{$summary} is a data frame with columns \code{n} containing the values of sample sizes and \code{avg.logBF} containing the expected weight of evidence values at those values.

\code{$BF} is a matrix of dimension \code{number of sample sizes considered} by \code{nReplicate}. Each row contains the Bayes factor values at the corresponding sample size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
out = fixedNAP.onet_es(nmax = 100)
}
\references{
Johnson, V. and Rossell, R. (2010) \emph{On the use of non-local prior densities in Bayesianhypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.},
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
