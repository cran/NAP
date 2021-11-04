\name{NAPBF_onez}
\alias{NAPBF_onez}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bayes factor in favor of the NAP in one-sample \eqn{z} tests
}
\description{
In a \eqn{N(\mu,\sigma_0^2)} population with known variance \eqn{\sigma_0^2}, consider the two-sided one-sample \eqn{z}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. Based on an observed data, this function calculates the Bayes factor in favor of \eqn{H_1} when a \emph{normal moment prior} is assumed on the standardized effect size \eqn{\mu/\sigma_0} under the alternative.
}
\usage{
NAPBF_onez(obs, nObs, mean.obs, test.statistic,
           tau.NAP = 0.3/sqrt(2), sigma0 = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{
Numeric vector. Observed vector of data.
}
  \item{nObs}{
Numeric or numeric vector. Sample size(s). Same as \code{length(obs)} when numeric.
}
  \item{mean.obs}{
Numeric or numeric vector. Sample mean(s). Same as \code{mean(obs)} when numeric.
}
  \item{test.statistic}{
Numeric or numeric vector. Test-statistic value(s).
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of the standardized effect size \eqn{\mu/\sigma_0} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{sigma0}{
Positive numeric. Known standard deviation in the population. \strong{Default:} 1.
}
}
\details{
\itemize{
  \item Users can either specify \code{obs}, or \code{nObs} and \code{mean.obs}, or \code{nObs} and \code{test.statistic}.
  \item If \code{obs} is provided, it returns the corresponding Bayes factor value.
  \item If \code{nObs} and \code{mean.obs} are provided, the function is vectorized over both arguments. Bayes factor values corresponding to the values therein are returned.
  \item If \code{nObs} and \code{test.statistic} are provided, the function is vectorized over both arguments. Bayes factor values corresponding to the values therein are returned.
}
}
\value{
Positive numeric or numeric vector. The Bayes factor value(s).
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
NAPBF_onez(obs = rnorm(100))
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
