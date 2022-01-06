\name{fixedNAP.twoz_es}
\alias{fixedNAP.twoz_es}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design two-sample \eqn{z}-tests with NAP for varied sample sizes
}
\description{
In two-sided fixed design two-sample \eqn{z}-tests with \emph{normal moment prior} assumed on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} under the alternative, this function calculates the expected weights of evidence (that is, expected log(Bayes Factor)) of the test at a prefixed differences between standardized effect size for a varied range of sample sizes.
}
\usage{
fixedNAP.twoz_es(es = 0, n1min = 20, n2min = 20, 
                 n1max = 5000, n2max = 5000, 
                 tau.NAP = 0.3/sqrt(2), sigma0 = 1, 
                 batch1.size.increment, batch2.size.increment, 
                 nReplicate = 50000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric. Difference between standardized effect sizes where the expected weights of evidence is desired. \strong{Default:} \code{0}.
}
  \item{n1min}{
Positive integer. Minimum sample size from Grpup-1 to be considered. \strong{Default:} 20.
}
  \item{n2min}{
Positive integer. Minimum sample size from Grpup-2 to be considered. \strong{Default:} 20.
}
  \item{n1max}{
Positive integer. Maximum sample size from Grpup-1 to be considered. \strong{Default:} 5000.
}
  \item{n2max}{
Positive integer. Maximum sample size from Grpup-2 to be considered. \strong{Default:} 5000.
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of \eqn{(\mu_2 - \mu_1)/\sigma_0} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{sigma0}{
Positive numeric. Known common standard deviation of the populations. \strong{Default:} 1.
}
  \item{batch1.size.increment}{
Positive numeric. Increment in sample size from Group-1. The sequence of sample size thus considered from Group-1 for the fixed design test is from \code{n1min} to \code{n1max} with an increment of \code{batch1.size.increment}. \strong{Default:} \code{function(narg){20}}. This means an increment of 20 samples from Group-1 at each step.
}
  \item{batch2.size.increment}{
Positive numeric. Increment in sample size from Group-2. The sequence of sample size thus considered from Group-2 for the fixed design test is from \code{n2min} to \code{n2max} with an increment of \code{batch2.size.increment}. \strong{Default:} \code{function(narg){20}}. This means an increment of 20 samples from Group-2 at each step.
}
  \item{nReplicate}{
Positve integer. Number of replicated studies based on which the expected weights of evidence is calculated.  \strong{Default:} 50,000.
}
}
\details{
\code{n1min}, \code{n1max}, \code{batch1.size.increment}, and \code{n2min}, \code{n2max}, \code{batch2.size.increment} should be chosen such that the length of sample sizes considered from Group 1 and 2 are equal.
}
\value{
A list with two components named \code{summary} and \code{BF}. 

\code{$summary} is a data frame with columns \code{n1} containing the sample sizes from Group-1, \code{n2} containing the sample sizes from Group-2, and \code{avg.logBF} containing the expected weight of evidence values at those values.

\code{$BF} is a matrix of dimension \code{number of sample sizes considered} by \code{nReplicate}. Each row contains the Bayes factor values at the corresponding sample size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
out = fixedNAP.twoz_es(n1max = 100, n2max = 100)
}
\references{
Pramanik, S. and Johnson, V. (2022). \emph{Efficient Alternatives for Bayesian Hypothesis Tests in Psychology. Psychological Methods. Just accepted.}

Johnson, V. and Rossell, R. (2010). \emph{On the use of non-local prior densities in Bayesian hypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.}
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}
}
