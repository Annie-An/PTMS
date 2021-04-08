library(animation)
saveHTML(
{
  ani.options( interval = 0.2, nmax = 50)
  flip.coin(faces = 2, prob = NULL, border = "white", grid = "white", col = 1:2, 
          type = "p", pch = 21, bg = "transparent", digits = 3)},img.name = "coin_flip",
imgdir = "coin_flip", htmlfile = "coin_flip.html", 
autobrowse = FALSE, title = "coin flip", description = c("flip coins , it's interesting")
)