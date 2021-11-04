\name{fixedNAP.twoz_n}
\alias{fixedNAP.twoz_n}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design two-sample \eqn{z}-tests with NAP and a pre-fixed sample size
}
\description{
In two-sided fixed design two-sample \eqn{z}-tests with \emph{normal moment prior} assumed on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} under the alternative and a prefixed sample size, this function calculates the expected weights of evidence (that is, expected log(Bayes Factor)) of the test at a varied range of differences between standardized effect sizes.
}
\usage{
fixedNAP.twoz_n(es = c(0, 0.2, 0.3, 0.5), n1.fixed = 20, n2.fixed = 20,
                tau.NAP = 0.3/sqrt(2), sigma0 = 1, 
                nReplicate = 50000, nCore)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric vector. Standardized effect size differences \eqn{(\mu_2 - \mu_1)/\sigma_0} where the expected weights of evidence is desired. \strong{Default:} \code{c(0, 0.2, 0.3, 0.5)}.
}
  \item{n1.fixed}{
Positive integer. Prefixed sample size from Group-1. \strong{Default:} 20.
}
  \item{n2.fixed}{
Positive integer. Prefixed sample size from Group-2. \strong{Default:} 20.
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of \eqn{(\mu_2 - \mu_1)/\sigma_0} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{sigma0}{
Positive numeric. Known common standard deviation of the populations. \strong{Default:} 1.
}
  \item{nReplicate}{
Positve integer. Number of replicated studies based on which the expected weights of evidence is calculated.  \strong{Default:} 50,000.
}
  \item{nCore}{
Positive integer. \strong{Default:} One less than the total number of available cores.
}
}
\value{
A list with two components named \code{summary} and \code{BF}. 

\code{$summary} is a data frame with columns \code{effect.size} containing the values in \code{es} and \code{avg.logBF} containing the expected weight of evidence values at those values.

\code{$BF} is a matrix of dimension \code{length(es)} by \code{nReplicate}. Each row contains the Bayes factor values at the corresponding standardized effec size differences in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
\donttest{
out = fixedNAP.twoz_n(n1.fixed = 20, n2.fixed = 20, es = c(0, 0.3), nCore = 1)
}
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
