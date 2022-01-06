\name{NAPBF_onet}
\alias{NAPBF_onet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bayes factor in favor of the NAP in one-sample \eqn{t} tests
}
\description{
In a \eqn{N(\mu,\sigma^2)} population with unknown variance \eqn{\sigma^2}, consider the two-sided one-sample \eqn{t}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. Based on an observed data, this function calculates the Bayes factor in favor of \eqn{H_1} when a \emph{normal moment prior} is assumed on the standardized effect size \eqn{\mu/\sigma} under the alternative. Under both hypotheses, the Jeffrey's prior \eqn{\pi(\sigma^2) \propto 1/\sigma^2} is assumed on \eqn{\sigma^2}.
}
\usage{
NAPBF_onet(obs, nObs, mean.obs, sd.obs, 
           test.statistic, tau.NAP = 0.3/sqrt(2))
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
  \item{sd.obs}{
Positive numeric or numeric vector. Sample standard deviation(s). Same as \code{sd(obs)} when numeric.
}
  \item{test.statistic}{
Numeric or numeric vector. Test-statistic value(s).
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt2}. This places the prior modes of the standardized effect size \eqn{\mu/\sigma} at \eqn{0.3} and \eqn{-0.3}.
}
}
\details{
\itemize{
  \item Users can either specify \code{obs}, or \code{nObs}, \code{mean.obs} and \code{sd.obs}, or \code{nObs} and \code{test.statistic}.
  \item If \code{obs} is provided, it returns the corresponding Bayes factor value.
  \item If \code{nObs}, \code{mean.obs} and \code{sd.obs} are provided, the function is vectorized over the arguments. Bayes factor values corresponding to the values therein are returned.
  \item If \code{nObs} and \code{test.statistic} are provided, the function is vectorized over the arguments. Bayes factor values corresponding to the values therein are returned.
}
}
\value{
Positive numeric or numeric vector. The Bayes factor value(s).
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
NAPBF_onet(obs = rnorm(100))
}
\references{
Pramanik, S. and Johnson, V. (2022). \emph{Efficient Alternatives for Bayesian Hypothesis Tests in Psychology. Psychological Methods. Just accepted.}

Johnson, V. and Rossell, R. (2010). \emph{On the use of non-local prior densities in Bayesian hypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.}
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}
}
