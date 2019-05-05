set -x
############for iyr in 17;do
for iyr in {07..07} ;do
OBSDIR=/home/kuldeep/verif/OBS/rain${iyr}
FCSDIR=/home/kuldeep/verif/UKMO/rain${iyr}
PCUKMODIR=/home/kuldeep/verif/PCT/UKMO
PCOBSDIR=${PCUKMODIR}
clear
rm -f ets-4.exe obs.bin fcst.bin
##xlf -o ets-4.exe ets-4_ku.f
ifort -o ets-4_ku0.5_pctl.exe WC_CT.f
ln -fs $OBSDIR/Obs2_imdrf_0.5.bin obs.bin
#ln -fs rfm_0.5.grd rfm.grd
ln -fs rfm_0.5_mihir.bin rfm.grd
#################
for iday in 1 2 3 4 5 ;do
echo $iday
for ip in 80 90;do
mkdir -p WC_scores${iyr}/scores$ip
ln -fs ${PCOBSDIR}/'Obs2_imdrf_0.5_'${ip}'r.bin' obspctl.bin
ln -fs ${PCUKMODIR}/'ukmo_day'${iday}'rf_0.5_'${ip}'r.bin' fcstpctl.bin
ln -fs ${FCSDIR}/'ukmo_day'${iday}'rf_0.5.bin' fcst.bin
./ets-4_ku0.5_pctl.exe > 'mylog'$iday'_'${ip}
#ls -lrt scrs.txt
cp scrs.txt WC_scores${iyr}/scores$ip/'ukmo_d'$iday'scr_0.5_ku.txt'
cp rfo.txt WC_scores${iyr}/scores$ip/Obs_imdrf_0.5.txt
cp rfm.txt WC_scores${iyr}/scores$ip/'ukmo_d'$iday'rf_0.5.txt'
rm -f scrs.txt
done
done
done
exit
