\name{HajnalBF_onez}
\alias{HajnalBF_onez}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Hajnal's ratio in one-sample \eqn{z} tests
}
\description{
In a \eqn{N(\mu,\sigma_0^2)} population with known variance \eqn{\sigma_0^2}, consider the two-sided one-sample \eqn{z}-test for testing the point null hypothesis \eqn{H_0 : \mu = 0} against \eqn{H_1 : \mu \neq 0}. Based on an observed data, this function calculates the Hajnal's ratio in favor of \eqn{H_1} when the prior assumed on the standardized effect size \eqn{\mu/\sigma_0} under the alternative places equal probability at \eqn{+\delta} and \eqn{-\delta} (\eqn{\delta>0} prefixed).
}
\usage{
HajnalBF_onez(obs, nObs, mean.obs, test.statistic, 
              es1 = 0.3, sigma0 = 1)
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
  \item{es1}{
Positive numeric. \eqn{\delta} as above. \strong{Default:} \eqn{0.3}. For this, the prior on the standardized effect size \eqn{\mu/\sigma_0} takes values \eqn{0.3} and \eqn{-0.3} each with equal probability 1/2.
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
Positive numeric or numeric vector. The Hajnal's ratio(s).
}
\author{
Sandipan Pramanik and Valen E. Johnson
}
\examples{
HajnalBF_onez(obs = rnorm(100))
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
