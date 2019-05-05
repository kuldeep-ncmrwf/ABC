set -x
for iyr in {07..18};do
OBSDIR=/home/kuldeep/verif/OBS/rain${iyr}
cat ${OBSDIR}/Obs2_imdrf_0.5.bin >> Obs2_imdrf_0.5.bin
UKMODIR=/home/kuldeep/verif/raghu/UKMO/rain${iyr}
for id in 1 2 3 4 5;do
cat ${UKMODIR}/ukmo_day${id}rf_0.5.bin >> ukmo_day${id}rf_0.5.bin
done
done
exit
