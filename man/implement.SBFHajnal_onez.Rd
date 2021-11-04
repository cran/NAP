\name{implement.SBFHajnal_onez}
\alias{implement.SBFHajnal_onez}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Implement Sequential Bayes Factor using the Hajnal's ratio for one-sample \eqn{z}-tests
}
\description{
In a \eqn{N(\mu,\sigma_0^2)} population with known variance \eqn{\sigma_0^2}, consider the two-sided one-sample \eqn{z}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. For a sequentially observed data, this function implements the Sequential Bayes Factor design when the prior assumed on the standardized effect size \eqn{\mu/\sigma_0} under the alternative places equal probability at \eqn{+\delta} and \eqn{-\delta} (\eqn{\delta>0} prefixed).
}
\usage{
implement.SBFHajnal_onez(obs, es1 = 0.3, sigma0 = 1, 
                         RejectH1.threshold = exp(-3), RejectH0.threshold = exp(3), 
                         batch.size, return.plot = TRUE, until.decision.reached = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{
Numeric vector. The vector of sequentially observed data.
}
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on the standardized effect size \eqn{\mu/\sigma_0} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
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
  \item{batch.size}{
Integer vector. The vector of batch sizes at each sequential comparison. \strong{Default:} \code{rep(1, length(obs))}.
}
  \item{return.plot}{
Logical. Whether a sequential comparison plot to be returned. \strong{Default:} \code{TRUE}.
}
  \item{until.decision.reached}{
Logical. Whether the sequential comparison is performed until a decision is reached or until the data is observed. \strong{Default:} \code{TRUE}. This means the comparison is performed until a decision is reached.
}
}
\value{
A list with three components named \code{N}, \code{BF}, and \code{decision}.

\code{$N} contains the number of sample size used.

\code{$BF} contains the Bayes factor values at each sequential comparison.

\code{$decision} contains the decision reached. \code{'A'} indicates acceptance of \eqn{H_0}, \code{'R'} indicates rejection of \eqn{H_0}, and \code{'I'} indicates inconclusive.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
out = implement.SBFHajnal_onez(obs = rnorm(100))
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
