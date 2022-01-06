\name{NAPBF_twoz}
\alias{NAPBF_twoz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bayes factor in favor of the NAP in two-sample \eqn{z} tests
}
\description{
In case of two independent populations \eqn{N(\mu_1,\sigma_0^2)} and \eqn{N(\mu_2,\sigma_0^2)} with known common variance \eqn{\sigma_0^2}, consider the two-sample \eqn{z}-test for testing the point null hypothesis of difference in their means \eqn{H_0 : \mu_2 - \mu_1 = 0} against \eqn{H_1 : \mu_2 - \mu_1 \neq 0}. Based on an observed data, this function calculates the Bayes factor in favor of \eqn{H_1} when a \emph{normal moment prior} is assumed on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} under the alternative.
}
\usage{
NAPBF_twoz(obs1, obs2, n1Obs, n2Obs, 
           mean.obs1, mean.obs2, test.statistic, 
           tau.NAP = 0.3/sqrt(2), sigma0 = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs1}{
Numeric vector. Observed vector of data from Group-1.
}
  \item{obs2}{
Numeric vector. Observed vector of data from Group-2.
}
  \item{n1Obs}{
Numeric or numeric vector. Sample size(s) from Group-1. Same as \code{length(obs1)} when numeric.
}
  \item{n2Obs}{
Numeric or numeric vector. Sample size(s) from Group-2. Same as \code{length(obs2)} when numeric.
}
  \item{mean.obs1}{
Numeric or numeric vector. Sample mean(s) from Group-1. Same as \code{mean(obs1)} when numeric.
}
  \item{mean.obs2}{
Numeric or numeric vector. Sample mean(s) from Group-2. Same as \code{mean(obs2)} when numeric.
}
  \item{test.statistic}{
Numeric or numeric vector. Test-statistic value(s).
}
  \item{tau.NAP}{
Positive numeric. Parameter in the moment prior. \strong{Default:} \eqn{0.3/\sqrt{2}}. This places the prior modes of \eqn{(\mu_2 - \mu_1)/\sigma_0} at \eqn{0.3} and \eqn{-0.3}.
}
  \item{sigma0}{
Positive numeric. Known common standard deviation of the populations. \strong{Default:} 1.
}
}
\details{
\itemize{
  \item A user can either specify \code{obs1} and \code{obs2}, or \code{n1Obs}, \code{n2Obs}, \code{mean.obs1} and \code{mean.obs2}, or \code{n1Obs}, \code{n2Obs}, and \code{test.statistic}.
  \item If \code{obs1} and \code{obs2} are provided, it returns the corresponding Bayes factor value.
  \item If \code{n1Obs}, \code{n2Obs}, \code{mean.obs1} and \code{mean.obs2} are provided, the function is vectorized over the arguments. Bayes factor values corresponding to the values therein are returned.
  \item If \code{n1Obs}, \code{n2Obs}, and \code{test.statistic} are provided, the function is vectorized over each of the arguments. Bayes factor values corresponding to the values therein are returned.
}
}
\value{
Positive numeric or numeric vector. The Bayes factor value(s).
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
NAPBF_twoz(obs1 = rnorm(100), obs2 = rnorm(100))
}
\references{
Pramanik, S. and Johnson, V. (2022). \emph{Efficient Alternatives for Bayesian Hypothesis Tests in Psychology. Psychological Methods. Just accepted.}

Johnson, V. and Rossell, R. (2010). \emph{On the use of non-local prior densities in Bayesian hypothesis tests. Journal of the Royal Statistical Society: Series B, 72:143-170.}
\href{https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-9868.2009.00730.x}{[Article]}
}
