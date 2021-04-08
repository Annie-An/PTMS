library(animation)
## standard normal distribution;population mean = 0,times = 30
saveHTML({
ani.options(interval = 0.1, nmax = 150)
lln.ani(cex = 0.6)},img.name = "normlln", imgdir = "lln_dir", htmlfile = "lln.html", 
autobrowse = FALSE, title = "the Law of Large Numbers", description = c("the Law of Large Numbers:standard normal distribution")
)
## chi-square distribution; population mean = df
saveHTML({
ani.options(interval = 0.1, nmax = 150)
lln.ani(FUN = function(n, mu) rchisq(n, df = mu), mu = 5, cex = 0.6)},
img.name = "chi_lln", imgdir = "lln_dir", htmlfile = "lln.html", 
autobrowse = FALSE, title = "the Law of Large Numbers", description = c("the Law of Large Numbers:chi-square distribution; population mean = 5")
)

