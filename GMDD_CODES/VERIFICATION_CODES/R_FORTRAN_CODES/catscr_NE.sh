set -x
DATADIR=/home/kuldeep/verif/PERCENTILS/scores-pctl
rm -f ukmo_d?scr_0.5_ku_pctl.txt
for iyr in 07 08 09 10 11 12 13 14 15 16 17 18 ;do
for ip in 80 ;do
OUTDIR=/home/kuldeep/verif/PERCENTILS/scores-pctl/paper_work_2018/NE/${ip}
mkdir -p ${OUTDIR}
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d1scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d1scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d2scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d2scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d3scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d3scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d4scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d4scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d5scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d5scr_0.5_ku_pctl.txt
done
done
for i in 1 2 3 4 5;do
paste year.txt ${OUTDIR}/ukmo_d${i}scr_0.5_ku_pctl.txt >${OUTDIR}/yr_ukmo_new_scrs_d${i}CT_80pct.txt
done

for iyr in 07 08 09 10 11 12 13 14 15 16 17 18 ;do
for ip in 90 ;do
OUTDIR=/home/kuldeep/verif/PERCENTILS/scores-pctl/paper_work_2018/NE/${ip}
mkdir -p ${OUTDIR}
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d1scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d1scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d2scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d2scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d3scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d3scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d4scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d4scr_0.5_ku_pctl.txt
cat ${DATADIR}/NE_scores${iyr}/scores${ip}/ukmo_d5scr_0.5_ku.txt >> ${OUTDIR}/ukmo_d5scr_0.5_ku_pctl.txt
done
done
for i in 1 2 3 4 5;do
paste year.txt ${OUTDIR}/ukmo_d${i}scr_0.5_ku_pctl.txt >${OUTDIR}/yr_ukmo_new_scrs_d${i}CT_90pct.txt
done
exit

