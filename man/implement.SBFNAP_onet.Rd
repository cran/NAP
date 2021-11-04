\name{implement.SBFNAP_onet}
\alias{implement.SBFNAP_onet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Implement Sequential Bayes Factor using the NAP for one-sample \eqn{t}-tests
}
\description{
In a \eqn{N(\mu,\sigma^2)} population with unknown variance \eqn{\sigma^2}, consider the two-sided one-sample \eqn{t}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. For a sequentially observed data, this function implements the Sequential Bayes Factor design when a \emph{normal moment prior} is assumed on the standardized effect size \eqn{\mu/\sigma} under the alternative.
}
\usage{
implement.SBFNAP_onet(obs, tau.NAP = 0.3/sqrt(2), 
                      RejectH1.threshold = exp(-3), RejectH0.threshold = exp(3),
                      batch.size, return.plot = TRUE, until.decision.reached = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{
Numeric vector. The vector of sequentially observed data.
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
  \item{batch.size}{
Integer vector. The vector of batch sizes at each sequential comparison. The first element (the first batch size) needs to be at least 2. \strong{Default:} \code{c(2, rep(1, length(obs)-2))}.
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
out = implement.SBFNAP_onet(obs = rnorm(100))
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
