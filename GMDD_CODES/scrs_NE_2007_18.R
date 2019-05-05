D1=read.table("80/yr_ukmo_new_scrs_d1scr_80pct.txt",head=F)
D2=read.table("80/yr_ukmo_new_scrs_d2scr_80pct.txt",head=F)
D3=read.table("80/yr_ukmo_new_scrs_d3scr_80pct.txt",head=F)
D4=read.table("90/yr_ukmo_new_scrs_d3scr_90pct.txt",head=F)
D5=read.table("90/yr_ukmo_new_scrs_d3scr_90pct.txt",head=F)
D6=read.table("90/yr_ukmo_new_scrs_d3scr_90pct.txt",head=F)

#png(filename = "test.png", width = 1024, height = 768, units = "px", pointsize = 18, bg = "white",  res = NA)
#tiff("test.tiff", units="in", width=5, height=5, res=200)
png("ukmo_scrs_NE_2007_18.png", units="in", width=5, height=5, res=400)
#png(filename = "test.png", width = 1024, height = 768, res = 200)
#par(mar=c(0.7, 0.7, 1, 1)+0.3,mfrow=c(4,3),oma = c(5, 5, 0.8, 0.8))
par(mar=c(0.4, 0.4, 0, 0)+0,mfrow=c(4,3),oma = c(3, 4, 4.8, 0.8))

#at1<- seq(1,122)
x<- D1$V1
plot(x,D1$V8,type='l',col='black',ylim=c(0,2),cex.axis=1.2,xaxt="n",main="",lwd=1.5,las=2,ylab="Bias")
lines(x,D4$V8,col='red',lwd=1.5)

plot(x,D2$V8,type='l',col='black',ylim=c(0,2),cex.axis=1.2,xaxt="n",yaxt="n",main="",lwd=1.5)
lines(x,D5$V8,col='red',lwd=1.5)

plot(x,D3$V8,type='l',col='black',ylim=c(0,2),cex.axis=1.2,xaxt="n",yaxt="n",main="",lwd=1.5)
lines(x,D6$V8,col='red',lwd=1.5)
legend("bottomright", legend=c("RF(>80th PCT)", "RF(>90th PCT)"),col=c("black", "red"), lty=1.2,lwd=1.2, cex=0.8)


plot(x,D1$V9,type='l',col='black',ylim=c(0,0.5),cex.axis=1.2,xaxt="n",main="",lwd=1.5,las=2)
lines(x,D4$V9,col='red',lwd=1.5)

plot(x,D2$V9,type='l',col='black',ylim=c(0,0.5),cex.axis=1.2,xaxt="n",yaxt="n",main="",lwd=1.5)
lines(x,D5$V9,col='red',lwd=1.5)

plot(x,D3$V9,type='l',col='black',ylim=c(0,0.5),cex.axis=1.2,xaxt="n",yaxt="n",main="",lwd=1.5)
lines(x,D6$V9,col='red',lwd=1.5)

plot(x,D1$V11,type='l',col='black',ylim=c(0,1),cex.axis=1.2,xaxt="n",main="",lwd=1.5,las=2)
lines(x,D4$V11,col='red',lwd=1.5)

plot(x,D2$V11,type='l',col='black',ylim=c(0,1),cex.axis=1.2,xaxt="n",yaxt="n",main="",lwd=1.5)
lines(x,D5$V11,col='red',lwd=1.5)

plot(x,D3$V11,type='l',col='black',ylim=c(0,1),cex.axis=1.2,xaxt="n",yaxt="n",main="",lwd=1.5)
lines(x,D6$V11,col='red',lwd=1.5)

plot(x,D1$V13,type='l',col='black',ylim=c(0,0.4),cex.axis=1.2,main="",lwd=1.5,las=2)
lines(x,D4$V13,col='red',lwd=1.5)


plot(x,D2$V13,type='l',col='black',ylim=c(0,0.4),cex.axis=1.2,main="",yaxt="n",lwd=1.5,las=2)
lines(x,D5$V13,col='red',lwd=1.5)

plot(x,D3$V13,type='l',col='black',ylim=c(0,0.4),cex.axis=1.2,main="",yaxt="n",lwd=1.5,las=2)
lines(x,D6$V13,col='red',lwd=1.5)

mtext('BIAS',at=0.88,side=2,outer=T,line=2.2,cex=1.0,col="blue")
mtext('POD',at=0.62,side=2,outer=T,line=2.2,cex=1.0,col="blue")
mtext('FAR',at=0.38,side=2,outer=T,line=2.2,cex=1.0,col="blue")
mtext('CSI',at=0.14,side=2,outer=T,line=2.2,cex=1.0,col="blue")
mtext('Verification Scores',at=.50,side=3,outer=T,line=1.2,cex=1.2,col="blue")
mtext('North-East Region(88-100E,21-30N)',at=.50,side=3,outer=T,line=0.2,cex=0.8,col="blue")
mtext('Day-1',at=.16,side=3,outer=T,line=-0.8,cex=0.5,col="blue")
mtext('Day-2',at=.50,side=3,outer=T,line=-0.8,cex=0.5,col="blue")
mtext('Day-3',at=.84,side=3,outer=T,line=-0.8,cex=0.5,col="blue")
mtext('(a)',at=.025,side=3,outer=T,line=-0.8,cex=0.5,col="blue")
mtext('(b)',at=.36,side=3,outer=T,line=-0.8,cex=0.5,col="blue")
mtext('(c)',at=.69,side=3,outer=T,line=-0.8,cex=0.5,col="blue")

mtext('(d)',at=.025,side=3,outer=T,line=-8.3,cex=0.5,col="blue")
mtext('(e)',at=.36,side=3,outer=T,line=-8.3,cex=0.5,col="blue")
mtext('(f)',at=.69,side=3,outer=T,line=-8.3,cex=0.5,col="blue")
mtext('(g)',at=.025,side=3,outer=T,line=-15.8,cex=0.5,col="blue")
mtext('(e)',at=.36,side=3,outer=T,line=-15.8,cex=0.5,col="blue")
mtext('(i)',at=.69,side=3,outer=T,line=-15.8,cex=0.5,col="blue")
mtext('(j)',at=.025,side=3,outer=T,line=-23.3,cex=0.5,col="blue")
mtext('(k)',at=.36,side=3,outer=T,line=-23.3,cex=0.5,col="blue")
mtext('(l)',at=.69,side=3,outer=T,line=-23.3,cex=0.5,col="blue")
#mtext('North-East Region',at=.50,side=3,outer=T,line=2,cex=1.2,col="blue")
#mtext('JJAS 2017',at=.5,side=1,outer=T,line=2.5,cex=1.2,col="blue")
#mtext(expression(bold("Ajoy")), outer=TRUE,  cex=1.5, line=-1.0)
dev.off()
