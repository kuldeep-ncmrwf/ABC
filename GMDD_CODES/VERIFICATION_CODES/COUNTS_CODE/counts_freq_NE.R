png(filename = "counts_new_NE_1.png", units="in", width=7, height=7, res=400)
#idx=0
#DAT <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/pct.txt", sep="")
DAT07 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores07/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT08 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores08/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT09 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores09/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT10 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores10/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT11 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores11/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT12 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores12/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT13 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores13/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT14 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores14/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT15 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores15/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT16 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores16/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT17 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores17/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
DAT18 <- read.table("/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/NE/scores18/ukmo_d1scr_0.5_ku_pctl.txt", sep="")
#x<- DAT$V1
xlimit=c(1,90)
at1<- c(1, 10, 20, 30, 40, 50, 60, 70,80,90)
lablesx=c("1", "10", "20", "30", "40", "50", "60", "70","80","90")
a1<-DAT07$V1
a2<-DAT08$V1
a3<-DAT09$V1
a4<-DAT10$V1
a5<-DAT11$V1
a6<-DAT12$V1
a7<-DAT13$V1
a8<-DAT14$V1
a9<-DAT15$V1
a10<-DAT16$V1
a11<-DAT17$V1
a12<-DAT18$V1
y1<- a1
y2<- a2
y3<- a3
y4<- a4
y5<- a5
y6<- a6
y7<- a7
y8<- a8
y9<- a9
y10<- a10
y11<- a11
y12<- a12
plot(at1,y1,type = "o",col = "black", cex.lab=1.5,cex.axis=1.5,xaxt="n",xlim=xlimit,ylim = c(0, 12500),xlab = "Rainfall Thresholds(Percentiles)", ylab = "Grid Count",main = "Observed Grid Count: 2007-2018 (JJAS)")
axis(side=1,at=at1,labels=lablesx,cex.lab=1.5,cex.axis=1.5)
lines(at1,y2, type = "o", col = "red")
lines(at1,y3, type = "o", col = "blue")
lines(at1,y4, type = "o", col = "green")
lines(at1,y5, type = "o", col = "deepskyblue")
lines(at1,y6, type = "o", col = "tomato")
lines(at1,y7, type = "o", col = "brown")
lines(at1,y8, type = "o", col = "orange")
lines(at1,y9, type = "o", col = "yellow")
lines(at1,y10, type = "o", col = "cyan")
lines(at1,y11, type = "o", col = "magenta")
lines(at1,y12, type = "o", col = "violet")
mtext('Northeast Region(88-100E,21-30N)',at=.53,side=3,outer=T,line=-3.9,cex=1.2,col="black")
#mtext('Westcoast Region(72-78E,8-23N)',at=0.3,side=3,outer=T,line=-0.42,cex=0.8,col="blue")
legend ('topright',c("2007","2008","2009","2010","2011","2012","2013","2014","2015","2016","2017","2018"),lty=c(1,1),lwd=c(2.5,2.5),col=c("black","red","blue","green","deepskyblue","tomato","brown","orange","yellow","cyan","magenta","violet"))
dev.off()
