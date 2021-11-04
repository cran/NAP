\name{fixedHajnal.onet_es}
\alias{fixedHajnal.onet_es}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design one-sample \eqn{t}-tests using Hajnal's ratio for varied sample sizes
}
\description{
In two-sided fixed design one-sample \eqn{t}-tests with \emph{composite alternative prior} assumed on the standardized effect size \eqn{\mu/\sigma} under the alternative, this function calculates the expected log(Hajnal's ratio) at a prefixed standardized effect size for a varied range of sample sizes.
}
\usage{
fixedHajnal.onet_es(es = 0, es1 = 0.3, nmin = 20, nmax = 5000, 
                    batch.size.increment, nReplicate = 50000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es}{
Numeric. Standardized effect size where the expected weights of evidence is desired. \strong{Default:} \code{0}.
}
  \item{es1}{
Positive numeric. \strong{Default:} \eqn{0.3}. For this, the composite alternative prior on the standardized effect size \eqn{\mu/\sigma} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
}
  \item{nmin}{
Positive integer. Minimum sample size to be considered. \strong{Default:} 20.
}
  \item{nmax}{
Positive integer. Maximum sample size to be considered. \strong{Default:} 5000.
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

\code{$summary} is a data frame with columns \code{n} containing the values of sample sizes and \code{avg.logBF} containing the expected log(Hajnal's ratios) at those values.

\code{$BF} is a matrix of dimension \code{number of sample sizes considered} by \code{nReplicate}. Each row contains the Hajnal's ratios at the corresponding sample size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
out = fixedHajnal.onet_es(nmax = 100)
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
