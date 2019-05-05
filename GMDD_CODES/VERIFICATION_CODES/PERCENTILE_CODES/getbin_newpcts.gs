'reinit'
ip=1
*while (ip<=90)
'sdfopen Obs2_imdrf_0.5_'%ip%'.nc'
'set x 1 69';'set y 1 65'
'set gxout fwrite'
'set fwrite Obs2_imdrf_0.5_'%ip%'r.bin'
'd rf'
'disable fwrite'
'close 1'
*ip=ip+10
*endwhile
**************************************
id=1
while(id<=5)
ip=1
*while (ip<=90)
'sdfopen ukmo_day'%id%'rf_0.5_'%ip%'r.nc'
'set x 1 69';'set y 1 65'
'set gxout fwrite'
'set fwrite ukmo_day'%id%'rf_0.5_'%ip%'r.bin'
'd rf'
'disable fwrite'
'close 1'
*ip=ip+10
*endwhile
id=id+1
endwhile
'quit'

