'reinit'
file.0='/gpfs4/home/kuldeep/verif/raghu/OBS/rain13/Obs2_imdrf_0.5.ctl'
file.1='/gpfs4/home/kuldeep/verif/raghu/OBS/rain15/Obs2_imdrf_0.5.ctl'
file.2='/gpfs4/home/kuldeep/verif/raghu/OBS/rain18/Obs2_imdrf_0.5.ctl'
*
file.3='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain13/ukmo_day3rf_0.5.ctl'
file.4='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain15/ukmo_day3rf_0.5.ctl'
file.5='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain18/ukmo_day3rf_0.5.ctl'
*
*
'query gxinfo'
rec=sublin(result,2)
wid=subwrd(rec,4)-0.05
ht=subwrd(rec,6)-0.05
*
* Number of panels per column and row^M
*
ncols=3
nrows=2
xsize=wid/ncols
ysize=ht/nrows
ifl=0
col=1
row=1
ymin=ht-ysize
while (row<=nrows)
  xmin=0
  ymax=ymin+ysize
  while (col<=ncols)
    xmax=xmin+xsize
    'set vpage 'xmin' 'xmax' 'ymin' 'ymax
****if(ifl != 1 & ifl != 2)
if(ifl=0);var=rf;endif
if(ifl=1);var=rf;endif
if(ifl=2);var=rf;endif
*
if(ifl=3);var=rain72;endif
if(ifl=4);var=rain72;endif
if(ifl=5);var=rain72;endif
*
say file.ifl
*'set mpdset indiaregions'
'set mpdset rupres'
'set map 1 1 6'
'open 'file.ifl
'set lat 8 38'
'set lon 68 98'
'set grads off';'set grid off'
*'set xlint 5';'set ylint 5'
*'set xlopts 1 5 0.2';'set ylopts 1 5 0.2'
'set xlab off';'set ylab off'
'set gxout shaded'
'set csmooth on'
'run rgbset_saji.gs'
'set clevs  10 20 30 40'
'set ccols 0 49 63 66 79'

'set t 1'
'set t 1 122'
*'run maximum 'var
*'run mnsd 'var' 1 122'
'define var1='var
'run maximum var1'
'grmask'
if(ifl=0)
'drawbox 72 78 8 23'
'drawbox 88 98 21 30'
endif


'close 1'

'set string 1 l 6'
'set strsiz 0.3'
if(ifl=0);'draw string 1 8.2 (a)OBS (2013)';endif
if(ifl=1);'draw string 1 8.2 (b)OBS (2015)';endif
if(ifl=2);'draw string 1 8.2 (c)OBS (2018)';endif
if(ifl=3);'draw string 1 8.2 (d)UKMO Day-3(2013)';endif
if(ifl=3);'draw string 3.2 7.5 N512(~25km)';endif
if(ifl=4);'draw string 1 8.2 (e)UKMO Day-3(2015)';endif
if(ifl=4);'draw string 3.2 7.5 N768(~17km)';endif
if(ifl=5);'draw string 1 8.2 (f)UKMO Day-3(2018)';endif
if(ifl=5);'draw string 3.0 7.5 N1280(~10km)';endif
if(ifl=2);'draw string 2.2 0.5 (cm)';endif
*
if(ifl=5);'run cbar_rup 5.75 0.08 H 5.5 4.45 0.08 l';endif
***endif
    xmin=xmin+xsize
    col=col+1
    ifl=ifl+1
  endwhile
  row=row+1
  col=1
  if(row=2);ncols=3;endif
  ymin=ymin-ysize
  if(ymin<0);ymin=0;endif
endwhile
'set vpage off'
'set string 4 c 6'
'set strsiz 0.22'
*'draw string 5.5 10.4 Observed and Model Forecast '
*'draw string 5.5 10.1 Mean Rainfall (cm/day)'
*'draw string 5.5 10.1 Mean Rainfall (mm/day)'
*'draw string 5.5 9.8 (JJAS 2016)'
*'printim mnrf-ukmo-2013-15-2017.gif gif gif x800 y1000 white'
'enable print uv'
'print '
'disable print'
*'!gxps -c -i uv -o mxrf-ukmo-2013-15-2017.ps'
*'!convert -density 200 -quality 100 -trim mxrf-ukmo-2013-15-2017.ps mxrf-ukmo-2013-15-2017.png'
'!gxps -c -i uv -o mxrf-ukmo-2013-15-2018.ps'
'!convert -density 200 -quality 100 -rotate 90 -trim mxrf-ukmo-2013-15-2018.ps mxrf-ukmo-2013-15-2018.png'
*'quit'
