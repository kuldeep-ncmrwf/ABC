1)first, we have observed(shared) and UKMO model forecasts(can't share) grads binary files JJAS 2007-18 over a domain of 66.5-100.5E and 6.5-38.5N
2)the resolution of the data is 0.5x0.5
3)At a first step, we computed percentiles(1,10,20...80,90) from 2007-2018. To prepare it, 
 (i)we concatenate all the bins (observed and binary) : PERCENTILE_CODES/catfiles_UKMO_OBS.sh
 (ii) we cobverted bins (using corresponding ctls) in to netcdf files and computed percentiles using CDO : PERCENTILE_CODES/getclims_UKMO_OBS.sh
 (iii) these percentiles files converted to bin files using grads script : PERCENTILE_CODES/getbin.gs
4)Now the two fortran codes (NE_CT.f and WC_CT.f) have been used to prepapre the elements of contingency table for two rainfall thresholds (80th and 90th  percentiles) for each year. for this to run, we made two script, (NE_CT.sh and WC_CT.sh). 
5)once this elements of contingeny Tables are ready, we computed the scores (BIAS,POD,FAR and CSI) using R software. The R software has a verification package which can compute these scores. (verif_NE.R/verif_WC.R). for arranging the scores for plotting, we used verifi_NE.sh/verif_WC.sh.
6)once, the data is arranged, the R plotting scripts (extreme_scrs_NE_2007_18.R,extreme_scrs_WC_2007_18.R,scrs_NE_2007_18.R,scrs_WC_2007_18.R) have been utilized.
