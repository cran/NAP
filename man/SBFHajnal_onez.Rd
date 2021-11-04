\name{SBFHajnal_onez}
\alias{SBFHajnal_onez}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sequential Bayes Factor using the Hajnal's ratio for one-sample \eqn{z}-tests
}
\description{
In a \eqn{N(\mu,\sigma_0^2)} population with known variance \eqn{\sigma_0^2}, consider the two-sided one-sample \eqn{z}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. This function calculates the operating characteristics (OC) and average sample number (ASN) of the Sequential Bayes Factor design when the prior assumed on the standardized effect size \eqn{\mu/\sigma_0} under the alternative places equal probability at \eqn{+\delta} and \eqn{-\delta} (\eqn{\delta>0} prefixed).
}
\usage{
SBFHajnal_onez(es = c(0, 0.2, 0.3, 0.5), es1 = 0.3, 
               nmin = 1, nmax = 5000, sigma0 = 1, 
               RejectH1.threshold = exp(-3), RejectH0.threshold = exp(3), 
               batch.size.increment, nReplicate = 50000, nCore)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric vector. Standardized effect sizes \eqn{\mu/\sigma_0} where OC and ASN are desired. \strong{Default:} \code{c(0, 0.2, 0.3, 0.5)}.
}
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on the standardized effect size \eqn{\mu/\sigma_0} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
}
  \item{nmin}{
Positive integer. Minimum sample size in the sequential comparison. \strong{Default:} 1.
}
  \item{nmax}{
Positive integer. Maximum sample size in the sequential comparison. \strong{Default:} 1.
}
  \item{sigma0}{
Positive numeric. Known standard deviation in the population. \strong{Default:} 1.
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
out = SBFHajnal_onez(nmax = 100, es = c(0, 0.3), nCore = 1)
}
}
\references{
Hajnal, J. (1961). \emph{A two-sample sequential t-test.Biometrika, 48:65-75},
\href{https://academic.oup.com/biomet/article-abstract/48/1-2/65/227215}{[Article]}.

Schnuerch, M. and Erdfelder, E. (2020). \emph{A two-sample sequential t-test.Biometrika, 48:65-75}, \href{https://martinschnuerch.com/wp-content/uploads/2020/08/Schnuerch_Erdfelder_2020.pdf}{[Article]}.
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
