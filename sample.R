library(animation)
##the simple random sampling without replacement
saveHTML(
  {
    
    ani.options(nmax = 50)
    par(mar = rep(1, 4))
    sample.simple()
  },img.name = "simple", imgdir = "sample_dir",htmlfile = "sample.html",
  autobrowse = FALSE, navigator = FALSE, title = "Four methods of sampling",
  description = c("Each member of the population has an equal and known chance of being selected.")
)
##the stratified sampling
saveHTML(
  {
    ani.options(nmax = 50)
    par(mar = rep(1, 4), lwd = 2)
    sample.strat(col = c("bisque", "white"))
  },img.name = "stratified", imgdir = "sample_dir",htmlfile = "sample.html",
  autobrowse = FALSE, navigator = FALSE,title = "Four methods of sampling",
  description = c("Each rectangle stands for a stratum, and the simple random sampling without replacement is performed within each stratum. The points being sampled are marked out (by red circles by default.")
)
##the systematic sampling
saveHTML(
  {
    ani.options(nmax = 50)
    par(mar = rep(1, 4), lwd = 2)
    sample.system()
  },img.name = "systematic", imgdir = "sample_dir",htmlfile = "sample.html",
  autobrowse = FALSE, navigator = FALSE,title = "Four methods of sampling",
  description = c("the sample points with equal intervals are drawn out according to a random starting point.")
)
##the cluster sampling
saveHTML(
  {
    ani.options(nmax = 50)
    par(mar = rep(1, 4))
    sample.cluster(col = c("bisque", "white"))
  },img.name = "systematic", imgdir = "sample_dir",htmlfile = "sample2.html"
  ,autobrowse = FALSE, navigator = FALSE,title = "Four methods of sampling",
  description = c("Each rectangle stands for a cluster, and the simple random sampling without replacement is performed for each cluster. ")
)