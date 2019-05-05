set -x
cdo -f nc import_binary Obs2_imdrf_0.5.ctl Obs2_imdrf_0.5.nc
cdo timmin Obs2_imdrf_0.5.nc minfile
cdo timmax Obs2_imdrf_0.5.nc maxfile
for rt in 1 5 10 20 30 40 50 60 70 80 90 95 99;do
cdo timpctl,${rt} Obs2_imdrf_0.5.nc -timmin minfile -timmax maxfile Obs2_imdrf_0.5_${rt}.nc
done
for id in 1 2 3 4 5;do
cdo -f nc import_binary ukmo_day${id}rf_0.5.ctl ukmo_day${id}rf_0.5.nc
cdo timmin ukmo_day${id}rf_0.5.nc minfile
cdo timmax ukmo_day${id}rf_0.5.nc maxfile
for rt in 1 5 10 20 30 40 50 60 70 80 90 95 99;do
cdo timpctl,${rt} ukmo_day${id}rf_0.5.nc -timmin minfile -timmax maxfile ukmo_day${id}rf_0.5_${rt}r.nc
done
done
exit

