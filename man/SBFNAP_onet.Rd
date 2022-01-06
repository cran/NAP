\name{SBFNAP_onet}
\alias{SBFNAP_onet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sequential Bayes Factor using the NAP for one-sample \eqn{t}-tests
}
\description{
In a \eqn{N(\mu,\sigma^2)} population with unknown variance \eqn{\sigma^2}, consider the two-sided one-sample \eqn{t}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. This function calculates the operating characteristics (OC) and average sample number (ASN) of the Sequential Bayes Factor design when a \emph{normal moment prior} is assumed on the standardized effect size \eqn{\mu/\sigma} under the alternative.
}
\usage{
SBFNAP_onet(es = c(0, 0.2, 0.3, 0.5), nmin = 2, nmax = 5000, 
            tau.NAP = 0.3/sqrt(2), 
            RejectH1.threshold = exp(-3), RejectH0.threshold = exp(3),
            batch.size.increment, nReplicate = 50000, nCore)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric vector. Standardized effect sizes \eqn{\mu/\sigma} where OC and ASN are desired. \strong{Default:} \code{c(0, 0.2, 0.3, 0.5)}.
}
  \item{nmin}{
Positive integer. Minimum sample size in the sequential comparison. Should be at least 2. \strong{Default:} 1.
}
  \item{nmax}{
Positive integer. Maximum sample size in the sequential comparison. \strong{Default:} 1.
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of the standardized effect size \eqn{\mu/\sigma} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{RejectH1.threshold}{
Positive numeric. \eqn{H_0} is accepted if \eqn{BF \le}\code{RejectH1.threshold}. \strong{Default:} \code{exp(-3)}.
}
  \item{RejectH0.threshold}{
Positive numeric. \eqn{H_0} is rejected if \eqn{BF \ge}\code{RejectH0.threshold}. \strong{Default:} \code{exp(3)}.
}
  \item{batch.size.increment}{
function. Increment in sample size at each sequential step. \strong{Default:} \code{function(narg){20}}. This means an increment of 20 samples at each step.
}
\item{nReplicate}{
Positve integer. Number of replicated studies based on which the OC and ASN are calculated.  \strong{Default:} 50,000.
}
  \item{nCore}{
Positive integer. \strong{Default:} One less than the total number of available cores.
}
}
\value{
A list with three components named \code{summary}, \code{BF}, and \code{N}. 

\code{$summary} is a data frame with columns \code{effect.size} containing the values in \code{es}. At those values, \code{acceptH0} contains the proportion of times \code{H_0} is accepted, \code{rejectH0} contains the proportion of times \code{H_0} is rejected, \code{inconclusive} contains the proportion of times the test is inconclusive, \code{ASN} contains the ASN, and \code{avg.logBF} contains the expected weight of evidence values.

\code{$BF} is a matrix of dimension \code{length(es)} by \code{nReplicate}. Each row contains the Bayes factor values at the corresponding standardized effec size in \code{nReplicate} replicated studies.

\code{$N} is a matrix of the same dimension as \code{$BF}. Each row contains the sample size required to reach a decision at the corresponding standardized effec size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
\donttest{
out = SBFNAP_onet(nmax = 100, es = c(0, 0.3), nCore = 1)
}
}
\references{
Pramanik, S. and Johnson, V. (2022). \emph{Efficient Alternatives for Bayesian Hypothesis Tests in Psychology. Psychological Methods. Just accepted.}

Johnson, V. and Rossell, R. (2010). \emph{On the use of non-local prior densities in Bayesian hypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.}
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}
}
