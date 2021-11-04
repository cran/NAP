\name{fixedHajnal.twoz_es}
\alias{fixedHajnal.twoz_es}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design two-sample \eqn{z}-tests with NAP for varied sample sizes
}
\description{
In two-sided fixed design two-sample \eqn{z}-tests with \emph{composite alternative prior} assumed on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} under the alternative, this function calculates the expected log(Hajnal's ratio) at a prefixed standardized effect size for a varied range of sample sizes.
}
\usage{
fixedHajnal.twoz_es(es = 0, es1 = 0.3, n1min = 20, n2min = 20, 
                    n1max = 5000, n2max = 5000, sigma0 = 1, 
                    batch1.size.increment, batch2.size.increment, 
                    nReplicate = 50000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric. Difference between standardized effect sizes where the expected weights of evidence is desired. \strong{Default:} \code{0}.
}
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on \eqn{(\mu_2 - \mu_1)/\sigma_0} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
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
\value{
A list with two components named \code{summary} and \code{BF}. 

\code{$summary} is a data frame with columns \code{n} containing the values of sample sizes and \code{avg.logBF} containing the expected log(Hajnal's ratios) at those values.

\code{$BF} is a matrix of dimension \code{number of sample sizes considered} by \code{nReplicate}. Each row contains the Hajnal's ratios at the corresponding sample size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
out = fixedHajnal.twoz_es(n1max = 100, n2max = 100)
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
