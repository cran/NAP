\name{fixedHajnal.twot_n}
\alias{fixedHajnal.twot_n}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fixed-design two-sample \eqn{t}-tests using Hajnal's ratio and a pre-fixed sample size
}
\description{
In two-sided fixed design two-sample \eqn{t}-tests with \emph{composite alternative prior} assumed on the standardized effect size \eqn{(\mu_2 - \mu_1)/\sigma} under the alternative and a prefixed sample size, this function calculates the expected log(Hajnal's ratio) at a varied range of differences between standardized effect sizes.
}
\usage{
fixedHajnal.twot_n(es1 = 0.3, es = c(0, 0.2, 0.3, 0.5), 
                   n1.fixed = 20, n2.fixed = 20, 
                   nReplicate = 50000, nCore)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on \eqn{(\mu_2 - \mu_1)/\sigma} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
}
  \item{es}{
Numeric vector. Standardized effect size differences \eqn{(\mu_2 - \mu_1)/\sigma} where the expected weights of evidence is desired. \strong{Default:} \code{c(0, 0.2, 0.3, 0.5)}.
}
  \item{n1.fixed}{
Positive integer. Prefixed sample size from Group-1. \strong{Default:} 20.
}
  \item{n2.fixed}{
Positive integer. Prefixed sample size from Group-2. \strong{Default:} 20.
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

\code{$summary} is a data frame with columns \code{effect.size} containing the values in \code{es} and \code{avg.logBF} containing the expected log(Hajnal's ratios) at those values.

\code{$BF} is a matrix of dimension \code{length(es)} by \code{nReplicate}. Each row contains the Hajnal's ratios at the corresponding standardized effec size in \code{nReplicate} replicated studies.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
\donttest{
out = fixedHajnal.twot_n(n1.fixed = 20, n2.fixed = 20, es = c(0, 0.3), nCore = 1)
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
