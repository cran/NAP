\name{fixedNAP.onet_n}
\alias{fixedNAP.onet_n}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design one-sample \eqn{t}-tests with NAP and a pre-fixed sample size
}
\description{
In two-sided fixed design one-sample \eqn{t}-tests with \emph{normal moment prior} assumed on the standardized effect size \eqn{\mu/\sigma} under the alternative and a prefixed sample size, this function calculates the expected weights of evidence (that is, expected log(Bayes Factor)) of the test at a varied range of standardized effect sizes.
}
\usage{
fixedNAP.onet_n(es = c(0, 0.2, 0.3, 0.5), n.fixed = 20, 
                tau.NAP = 0.3/sqrt(2), 
                nReplicate = 50000, nCore)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric vector. Standardized effect sizes \eqn{\mu/\sigma} where the expected weights of evidence is desired. \strong{Default:} \code{c(0, 0.2, 0.3, 0.5)}.
}
  \item{n.fixed}{
Positive integer. Prefixed sample size. \strong{Default:} 20.
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of the standardized effect size \eqn{\mu/\sigma} at \eqn{0.3} and \eqn{-0.3}.
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

\code{$BF} is a matrix of dimension \code{length(es)} by \code{nReplicate}. Each row contains the Bayes factor values at the corresponding standardized effec size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
\donttest{
out = fixedNAP.onet_n(n.fixed = 20, es = c(0, 0.3), nCore = 1)
}
}
\references{
Pramanik, S. and Johnson, V. (2022). \emph{Efficient Alternatives for Bayesian Hypothesis Tests in Psychology. Psychological Methods. Just accepted.}

Johnson, V. and Rossell, R. (2010). \emph{On the use of non-local prior densities in Bayesian hypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.}
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}
}
