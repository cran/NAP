\name{SBFNAP_twoz}
\alias{SBFNAP_twoz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sequential Bayes Factor using the NAP for two-sample \eqn{z}-tests
}
\description{
In case of two independent populations \eqn{N(\mu_1,\sigma_0^2)} and \eqn{N(\mu_2,\sigma_0^2)} with known common variance \eqn{\sigma_0^2}, consider the two-sample \eqn{z}-test for testing the point null hypothesis of difference in their means \eqn{H_0 : \mu_2 - \mu_1 = 0} against \eqn{H_1 : \mu_2 - \mu_1 \neq 0}. This function calculates the operating characteristics (OC) and average sample number (ASN) of the Sequential Bayes Factor design when a \emph{normal moment prior} is assumed on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} under the alternative.
}
\usage{
SBFNAP_twoz(es = c(0, 0.2, 0.3, 0.5), n1min = 1, n2min = 1, 
            n1max = 5000, n2max = 5000, 
            tau.NAP = 0.3/sqrt(2), sigma0 = 1, 
            RejectH1.threshold = exp(-3), RejectH0.threshold = exp(3), 
            batch1.size.increment, batch2.size.increment, 
            nReplicate = 50000, nCore)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric vector. Standardized effect size differences \eqn{(\mu_2 - \mu_1)/\sigma_0} where OC and ASN are desired. \strong{Default:} \code{c(0, 0.2, 0.3, 0.5)}.
}
  \item{n1min}{
Positive integer. Minimum sample size from Group-1 in the sequential comparison. \strong{Default:} 1.
}
  \item{n2min}{
Positive integer. Minimum sample size from Group-2 in the sequential comparison. \strong{Default:} 1.
}
  \item{n1max}{
Positive integer. Maximum sample size from Group-1 in the sequential comparison. \strong{Default:} 1.
}
  \item{n2max}{
Positive integer. Maximum sample size from Group-2 in the sequential comparison. \strong{Default:} 1.
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt{2}}. This places the prior modes of \eqn{(\mu_2 - \mu_1)/\sigma_0} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{sigma0}{
Positive numeric. Known common standard deviation of the populations. \strong{Default:} 1.
}
  \item{RejectH1.threshold}{
Positive numeric. \eqn{H_0} is accepted if \eqn{BF \le}\code{RejectH1.threshold}. \strong{Default:} \code{exp(-3)}.
}
  \item{RejectH0.threshold}{
Positive numeric. \eqn{H_0} is rejected if \eqn{BF \ge}\code{RejectH0.threshold}. \strong{Default:} \code{exp(3)}.
}
  \item{batch1.size.increment}{
function. Increment in sample size from Group-1 at each sequential step. \strong{Default:} \code{function(narg){20}}. This means an increment of 20 samples at each step.
}
  \item{batch2.size.increment}{
function. Increment in sample size from Group-2 at each sequential step. \strong{Default:} \code{function(narg){20}}. This means an increment of 20 samples at each step.
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
out = SBFNAP_twoz(n1max = 100, n2max = 100, es = c(0, 0.3), nCore = 1)
}
}
\references{
Pramanik, S. and Johnson, V. (2022). \emph{Efficient Alternatives for Bayesian Hypothesis Tests in Psychology. Psychological Methods. Just accepted.}

Johnson, V. and Rossell, R. (2010). \emph{On the use of non-local prior densities in Bayesian hypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.}
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}
}
