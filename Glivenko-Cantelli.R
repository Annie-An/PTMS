library(animation)
des = c("the Glivenko-Cantelli Theorem Demonstrate that the empirical distribution tends to the theoretical distribution as sample size increases by comparing with the theoretical cumulative distribution function")
#生成300个标准正态分布随机数

x<-rnorm(300)

y<-seq(-4,4,0.1)

#在saveHTML（）函数中加入循环过程，生成图像并保存

saveHTML({ani.options(interval=0.1,nmax=300)
for(i in 2:300){#绘制经验分布函数

plot(ecdf(x[1:i]),verticals=T,do.p=F,xlim=c(-4,4))

#绘制总体分布函数

lines(y,pnorm(y),col="red")}},img.name = "Glivenko_plot", imgdir = "Glivenko_dir", htmlfile = "Glivenko.html", 
autobrowse = FALSE, title = "Glivenko-Cantelli Theorem", description = des)