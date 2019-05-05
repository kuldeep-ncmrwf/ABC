set -x
OUTDIR_80=/home/kuldeep/verif/PERCENTILS/scores-pctl/paper_work_2018/NE/80
OUTDIR_90=/home/kuldeep/verif/PERCENTILS/scores-pctl/paper_work_2018/NE/90
Rscript verif_NE.R
awk '{printf "%.2f %.2f %.2f %.2f %.2f\n",$1, $2, $3, $4, $5}' yr_ukmo_d1CT_80thpct.txt |awk 'NR % 2 == 1' >${OUTDIR_80}/yr_ukmo_new_scrs_d1scr_80pct.txt
awk '{printf "%.2f %.2f %.2f %.2f %.2f\n",$1, $2, $3, $4, $5}' yr_ukmo_d1CT_80thpct.txt |awk 'NR % 2 == 1' >${OUTDIR_80}/yr_ukmo_new_scrs_d2scr_80pct.txt
awk '{printf "%.2f %.2f %.2f %.2f %.2f\n",$1, $2, $3, $4, $5}' yr_ukmo_d1CT_80thpct.txt |awk 'NR % 2 == 1' >${OUTDIR_80}/yr_ukmo_new_scrs_d3scr_80pct.txt
awk '{printf "%.2f %.2f %.2f %.2f %.2f\n",$1, $2, $3, $4, $5}' yr_ukmo_d1CT_80thpct.txt |awk 'NR % 2 == 1' >${OUTDIR_90}/yr_ukmo_new_scrs_d1scr_90pct.txt
awk '{printf "%.2f %.2f %.2f %.2f %.2f\n",$1, $2, $3, $4, $5}' yr_ukmo_d1CT_80thpct.txt |awk 'NR % 2 == 1' >${OUTDIR_90}/yr_ukmo_new_scrs_d2scr_90pct.txt
awk '{printf "%.2f %.2f %.2f %.2f %.2f\n",$1, $2, $3, $4, $5}' yr_ukmo_d1CT_80thpct.txt |awk 'NR % 2 == 1' >${OUTDIR_90}/yr_ukmo_new_scrs_d3scr_90pct.txt
exit 
