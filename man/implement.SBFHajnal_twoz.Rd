\name{implement.SBFHajnal_twoz}
\alias{implement.SBFHajnal_twoz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Implement Sequential Bayes Factor using the NAP for two-sample \eqn{z}-tests
}
\description{
In case of two independent populations \eqn{N(\mu_1,\sigma_0^2)} and \eqn{N(\mu_2,\sigma_0^2)} with known common variance \eqn{\sigma_0^2}, consider the two-sample \eqn{z}-test for testing the point null hypothesis of difference in their means \eqn{H_0 : \mu_2 - \mu_1 = 0} against \eqn{H_1 : \mu_2 - \mu_1 \neq 0}. For a sequentially observed data, this function implements the Sequential Bayes Factor design when a \emph{normal moment prior} is assumed on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} under the alternative.
}
\usage{
implement.SBFHajnal_twoz(obs1, obs2, es1 = 0.3, sigma0 = 1,
                         RejectH1.threshold = exp(-3), RejectH0.threshold = exp(3), 
                         batch1.size, batch2.size, return.plot = TRUE, 
                         until.decision.reached = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs1}{
Numeric vector. The vector of sequentially observed data from Group-1.
}
  \item{obs2}{
Numeric vector. The vector of sequentially observed data from Group-2.
}
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on \eqn{(\mu_2 - \mu_1)/\sigma_0} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
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
  \item{batch1.size}{
Integer vector. The vector of batch sizes from Group-1 at each sequential comparison. \strong{Default:} \code{rep(1, length(obs1))}.
}
  \item{batch2.size}{
Integer vector. The vector of batch sizes from Group-2 at each sequential comparison. \strong{Default:} \code{rep(1, length(obs2))}.
}
  \item{return.plot}{
Logical. Whether a sequential comparison plot to be returned. \strong{Default:} \code{TRUE}.
}
  \item{until.decision.reached}{
Logical. Whether the sequential comparison is performed until a decision is reached or until the data is observed. \strong{Default:} \code{TRUE}. This means the comparison is performed until a decision is reached.
}
}
\value{
A list with three components named \code{N1}, \code{N2}, \code{BF}, and \code{decision}.

\code{$N1} and \code{$N2} contains the number of sample size used from Group-1 and 2.

\code{$BF} contains the Bayes factor values at each sequential comparison.

\code{$decision} contains the decision reached. \code{'A'} indicates acceptance of \eqn{H_0}, \code{'R'} indicates rejection of \eqn{H_0}, and \code{'I'} indicates inconclusive.
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
out = implement.SBFHajnal_twoz(obs1 = rnorm(100), obs2 = rnorm(100))
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
