des = c("The bean machine, also known as the quincunx or Galton box, is a device invented by Sir Francis Galton to demonstrate the law of error and the normal distribution.\n\n
        balls are dropped from the top and cascade randomly through rows of alternating offset pins, landing in compartments at the bottom as a binomial or approximately normal distribution1.")
library(animation)
saveHTML(
{
set.seed(123)
ani.options(nmax = 200 + 15 - 2, 2)
freq = quincunx(balls = 200, col.balls = rainbow(200))
barplot(freq, space = 0)
},img.name = "Galton_Box", imgdir = "Galton_Box", htmlfile = "Galton_Box.html", 
autobrowse = FALSE, title = "Galton Box", description = des
)