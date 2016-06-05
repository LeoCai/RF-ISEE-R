realPos = read.csv("./real.csv",header = T)


plotReal = function(expId){
  png(paste(expId,".png",sep = ""))
  pos = realPos[realPos$exp==expId,]
  plot(pos$x,pos$y,col=2,xlim = c(-2,2),ylim = c(0,3.8),pch = 16,cex = 2.3)
  text(pos$x+0.1,pos$y,labels = 1:8,cex = 1.5)
  text(pos$x+0.3,pos$y,labels = pos$height,cex = 1)
  dev.off()
}

plotReal(1)
plotReal(2)
plotReal(3)
plotReal(4)



