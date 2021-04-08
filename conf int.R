library(animation)
set.seed(369)
saveHTML(
  {
    ani.options(interval = 0.1, nmax = 100)
    ## 95% interval
    conf.int(level = 0.95, main = "Demonstration of Confidence Intervals")
  },
  
  img.name = "conf_int",imgdir = "conf_int",htmlfile = "conf_int.html",
  autobrowse = F,title = "Confidence intervals",
  decription = c("This animation shows the concept of the confidence interval which depends on the observations: if the samples change, the interval changes too. At last we can see that the coverage rate will be approximate to the confidence level.")
)