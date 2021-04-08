library(animation)
set.seed(123)
##CLT:normal distribution
saveHTML(
  {
    ani.options(interval = 0.5, nmax = 150)
    par(mar = c(3, 3, .2, 0.1), mgp = c(1.5, 0.5, 0), tcl = -0.3) 
    clt.ani(FUN=runif, mean=.5, sd=sqrt(1/12),type = "s")
  },img.name = "CLT_norm", imgdir = "CLT_dir", htmlfile = "CLT.html",
  autobrowse = FALSE, description = c("CLT:normal distribution")
)
##CLT:exp distribution,mean = 1, sd = 1
saveHTML(
  {
    ani.options(interval = 0.5, nmax = 150)
    par(mar = c(3, 3, .2, 0.1), mgp = c(1.5, 0.5, 0), tcl = -0.3)
    clt.ani(type = "s")
  }, img.name = "CLT_exp", imgdir = "CLT_dir", htmlfile = "CLT.html",
  autobrowse = FALSE, description = c("CLT:exp distribution")
)

##Chi-square with df = 5 (mean = df, var = 2*df)
saveHTML(
  {
    ani.options(interval = 0.5, nmax = 150)
    par(mar = c(3, 3, 1, 0.5), mgp = c(1.5, 0.5, 0), tcl = -0.3)
    f = function(n) rchisq(n, 5)
    clt.ani(FUN = f, mean = 5, sd = sqrt(2 * 5))
  }, img.name = "CLT_chi", imgdir = "CLT_dir", htmlfile = "CLT.html",
  autobrowse = FALSE, description = c("CLT:Chi-square distribution")
)
##CLT:Cauchy distribution
saveHTML(
  {
    ani.options(interval = 0.5, nmax = 150)
    par(mar = c(3, 3, .2, 0.1), mgp = c(1.5, 0.5, 0), tcl = -0.3)
    clt.ani(type = "s")
  }, img.name = "CLT_exp", imgdir = "CLT_dir", htmlfile = "CLT.html",
  autobrowse = FALSE, description = c("CLT:exp distribution")
)

##Chi-square with df = 5 (mean = df, var = 2*df)
saveHTML(
  {
    ani.options(interval = 0.5, nmax = 150)
    par(mar = c(3, 3, .2, 0.1), mgp = c(1.5, 0.5, 0), tcl = -0.3) 
    clt.ani(FUN=rcauchy, mean=NULL)
  }, img.name = "CLT_cauchy", imgdir = "CLT_dir", htmlfile = "CLT.html",
  autobrowse = FALSE, description = c("the variance of the Cauchy distribution does 
                                      not exist.")
)

