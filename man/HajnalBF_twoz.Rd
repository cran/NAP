\name{HajnalBF_twoz}
\alias{HajnalBF_twoz}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Hajnal's ratio in two-sample \eqn{z} tests
}
\description{
In case of two independent populations \eqn{N(\mu_1,\sigma_0^2)} and \eqn{N(\mu_2,\sigma_0^2)} with known common variance \eqn{\sigma_0^2}, consider the two-sample \eqn{z}-test for testing the point null hypothesis of difference in their means \eqn{H_0 : \mu_2 - \mu_1 = 0} against \eqn{H_1 : \mu_2 - \mu_1 \neq 0}. Based on an observed data, this function calculates the Hajnal's ratio in favor of \eqn{H_1} when the prior assumed under the alternative on the difference between standardized effect sizes \eqn{(\mu_2 - \mu_1)/\sigma_0} places equal probability at \eqn{+\delta} and \eqn{-\delta} (\eqn{\delta>0} prefixed).
}
\usage{
HajnalBF_twoz(obs1, obs2, n1Obs, n2Obs, mean.obs1, mean.obs2, 
              test.statistic, es1 = 0.3, sigma0 = 1)
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
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on \eqn{(\mu_2 - \mu_1)/\sigma_0} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
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
Positive numeric or numeric vector. The Hajnal's ratio(s).
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
HajnalBF_twoz(obs1 = rnorm(100), obs2 = rnorm(100))
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
