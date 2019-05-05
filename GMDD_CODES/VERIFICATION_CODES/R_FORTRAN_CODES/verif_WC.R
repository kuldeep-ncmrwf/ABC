system("rm -f wc_yr_ukmo_d1CT_80thpct.txt")
library(verification)
idx=0
DAT <- read.table("/home/kuldeep/verif/PCT/GMDD_SHARE/fortran_R_code/WC/80/yr_ukmo_new_scrs_d1CT_80pct.txt", sep="")
for (i in 1:12) {
nh <- DAT$V3[i]
nm <- DAT$V4[i]
nf <- DAT$V5[i]
nz <- DAT$V6[i]
CT <- matrix(c(nh, nm, nf, nz), ncol = 2)
A<-multi.cont(CT)
write.table(A , file = "wc_yr_ukmo_d1CT_80thpct.txt", append="T", col.names = F, row.names = F)
idx=idx+1
}

system("rm -f wc_yr_ukmo_d2CT_80thpct.txt")
library(verification)
idx=0
DAT <- read.table("/home/kuldeep/verif/PCT/GMDD_SHARE/fortran_R_code/WC/80/yr_ukmo_new_scrs_d2CT_80pct.txt", sep="")
for (i in 1:12) {
nh <- DAT$V3[i]
nm <- DAT$V4[i]
nf <- DAT$V5[i]
nz <- DAT$V6[i]
CT <- matrix(c(nh, nm, nf, nz), ncol = 2)
A<-multi.cont(CT)
write.table(A , file = "yr_ukmo_d2CT_80thpct.txt", append="T", col.names = F, row.names = F)
idx=idx+1
}
system("rm -f wc_yr_ukmo_d3CT_80thpct.txt")
library(verification)
idx=0
DAT <- read.table("/home/kuldeep/verif/PCT/GMDD_SHARE/fortran_R_code/WC/80/yr_ukmo_new_scrs_d3CT_80pct.txt", sep="")
for (i in 1:12) {
nh <- DAT$V3[i]
nm <- DAT$V4[i]
nf <- DAT$V5[i]
nz <- DAT$V6[i]
CT <- matrix(c(nh, nm, nf, nz), ncol = 2)
A<-multi.cont(CT)
write.table(A , file = "wc_yr_ukmo_d3CT_80thpct.txt", append="T", col.names = F, row.names = F)
idx=idx+1
}


system("rm -f wc_yr_ukmo_d1CT_90thpct.txt")
library(verification)
idx=0
DAT <- read.table("/home/kuldeep/verif/PCT/GMDD_SHARE/fortran_R_code/WC/90/yr_ukmo_new_scrs_d1CT_90pct.txt", sep="")
for (i in 1:12) {
nh <- DAT$V3[i]
nm <- DAT$V4[i]
nf <- DAT$V5[i]
nz <- DAT$V6[i]
CT <- matrix(c(nh, nm, nf, nz), ncol = 2)
A<-multi.cont(CT)
write.table(A , file = "wc_yr_ukmo_d1CT_90thpct.txt", append="T", col.names = F, row.names = F)
idx=idx+1
}

system("rm -f wc_yr_ukmo_d2CT_90thpct.txt")
library(verification)
idx=0
DAT <- read.table("/home/kuldeep/verif/PCT/GMDD_SHARE/fortran_R_code/WC/90/yr_ukmo_new_scrs_d2CT_90pct.txt", sep="")
for (i in 1:12) {
nh <- DAT$V3[i]
nm <- DAT$V4[i]
nf <- DAT$V5[i]
nz <- DAT$V6[i]
CT <- matrix(c(nh, nm, nf, nz), ncol = 2)
A<-multi.cont(CT)
write.table(A , file = "wc_yr_ukmo_d2CT_90thpct.txt", append="T", col.names = F, row.names = F)
idx=idx+1
}
system("rm -f wc_yr_ukmo_d3CT_90thpct.txt")
library(verification)
idx=0
DAT <- read.table("/home/kuldeep/verif/PCT/GMDD_SHARE/fortran_R_code/WC/90/yr_ukmo_new_scrs_d3CT_90pct.txt", sep="")
for (i in 1:12) {
nh <- DAT$V3[i]
nm <- DAT$V4[i]
nf <- DAT$V5[i]
nz <- DAT$V6[i]
CT <- matrix(c(nh, nm, nf, nz), ncol = 2)
A<-multi.cont(CT)
write.table(A , file = "wc_yr_ukmo_d3CT_90thpct.txt", append="T", col.names = F, row.names = F)
idx=idx+1
}
