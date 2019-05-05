set -x
SCRDIR=/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ
DATADIR=/home/kuldeep/verif/PCT/UKMO/scores-pctl/
REG=WC
for REG in WC NE;do
#rm -f ukmo_d?scr_0.5_ku_pctl.txt
for iyr in 07 08 09 10 11 12 13 14 15 16 17 18 ;do
#for iyr in 18 ;do
OUTDIR=/home/kuldeep/verif/PCT/UKMO/scores-pctl/FREQ/${REG}/scores${iyr}
mkdir ${OUTDIR}
for ip in 1 10 20 30 40 50 60 70 80 90;do
cat ${DATADIR}/${REG}_scores${iyr}/scores${ip}/ukmo_d1scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d1scr_0.5_ku_pctl.txt
cat ${DATADIR}/${REG}_scores${iyr}/scores${ip}/ukmo_d2scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d2scr_0.5_ku_pctl.txt
cat ${DATADIR}/${REG}_scores${iyr}/scores${ip}/ukmo_d3scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d3scr_0.5_ku_pctl.txt
cat ${DATADIR}/${REG}_scores${iyr}/scores${ip}/ukmo_d4scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d4scr_0.5_ku_pctl.txt
cat ${DATADIR}/${REG}_scores${iyr}/scores${ip}/ukmo_d5scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d5scr_0.5_ku_pctl.txt
done
done
done
exit

