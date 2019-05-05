'reinit'
file.0='/gpfs4/home/kuldeep/verif/raghu/OBS/rain13/Obs2_imdrf_0.5.ctl'
file.1='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain13/ukmo_day3rf_0.5.ctl'
file.2='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain13/ukmo_day3rf_0.5.ctl'

file.3='/gpfs4/home/kuldeep/verif/raghu/OBS/rain15/Obs2_imdrf_0.5.ctl'
file.4='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain15/ukmo_day3rf_0.5.ctl'
file.5='/gpfs4/home/kuldeep/verif/raghu/UKMO/rain15/ukmo_day3rf_0.5.ctl'

file.6='/gpfs4/home/kuldeep/verif/raghu/OBS/rain18/Obs2_imdrf_0.5.ctl'
file.7='/gpfs4/home/kuldeep/verif/raghu//UKMO/rain18/ukmo_day3rf_0.5.ctl'
file.8='/gpfs4/home/kuldeep/verif/raghu//UKMO/rain18/ukmo_day3rf_0.5.ctl'
*
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
nrows=3
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
if(ifl=1);var=rain72;endif
if(ifl=2);var=rain72;endif
*
if(ifl=3);var=rf;endif
if(ifl=4);var=rain72;endif
if(ifl=5);var=rain72;endif

if(ifl=6);var=rf;endif
if(ifl=7);var=rain72;endif
if(ifl=8);var=rain72;endif
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
'set t 1'
*'run maximum 'var
'run mnsd 'var' 1 122'
if(ifl=0)
'define mn0=mn'
endif
if(ifl=1)
'define mn1=mn'
endif
if(ifl=2)
'define mn2=mn1-mn0'
endif
if(ifl=3)
'define mn3=mn'
endif

if(ifl=4)
'define mn4=mn'
endif

if(ifl=5)
'define mn5=mn4-mn3'
endif

if(ifl=6)
'define mn6=mn'
endif

if(ifl=7)
'define mn7=mn'
endif

if(ifl=8)
'define mn8=mn7-mn6'
endif


if(ifl=0)
*'set clevs 2 4 6 8 10 15 20 25'
'set clevs 0.2 0.4 0.6 0.8 1.0 1.5 2.0 2.5'
'set ccols 0 33 39 43 53 49 63 66 79'
'd mn0'
*'grmask'
'drawbox 72 78 8 23'
'drawbox 88 98 21 30'
endif

if(ifl=1)
'set clevs 0.2 0.4 0.6 0.8 1.0 1.5 2.0 2.5'
'set ccols 0 33 39 43 53 49 63 66 79'
'd mn1'
*'grmask'
*'drawbox 72 78 8 23'
endif

if(ifl=2)
'set clevs -1.0 -.8 -.6 -.4 -.2 0 .2 .4 .6 .8 1.0 '
*'set clevs -10 -8 -6 -4 -2 0 2 4 6 8 10 '
'set ccols 49 47 45 43 42 41 21 22 23 25 27 29'
'd mn1-mn0'
*'grmask'
*'drawbox 68 88 18 28'
endif

if(ifl=3)
'set clevs 0.2 0.4 0.6 0.8 1.0 1.5 2.0 2.5'
*'set clevs 2 4 6 8 10 15 20 25'
'set ccols 0 33 39 43 53 49 63 66 79'
'd mn3'
*'grmask'
*'drawbox 68 88 18 28'
endif

if(ifl=4)
'set clevs 0.2 0.4 0.6 0.8 1.0 1.5 2.0 2.5'
*'set clevs 2 4 6 8 10 15 20 25'
'set ccols 0 33 39 43 53 49 63 66 79'
'd mn4'
*'grmask'
*'drawbox 68 88 18 28'
endif

if(ifl=5)
'set clevs -1.0 -.8 -.6 -.4 -.2 0 .2 .4 .6 .8 1.0 '
*'set clevs -10 -8 -6 -4 -2 0 2 4 6 8 10 '
'set ccols 49 47 45 43 42 41 21 22 23 25 27 29'
'd mn4-mn3'
*'grmask'
*'drawbox 68 88 18 28'
endif

if(ifl=6)
'set clevs 0.2 0.4 0.6 0.8 1.0 1.5 2.0 2.5'
*'set clevs 2 4 6 8 10 15 20 25'
'set ccols 0 33 39 43 53 49 63 66 79'
'd mn6'
*'grmask'
*'drawbox 68 88 18 28'
endif

if(ifl=7)
'set clevs 0.2 0.4 0.6 0.8 1.0 1.5 2.0 2.5'
*'set clevs 2 4 6 8 10 15 20 25'
'set ccols 0 33 39 43 53 49 63 66 79'
'd mn7'
*'grmask'
*'drawbox 68 88 18 28'
endif

if(ifl=8)
*'set clevs -10 -8 -6 -4 -2 0 2 4 6 8 10 '
'set clevs -1.0 -.8 -.6 -.4 -.2 0 .2 .4 .6 .8 1.0 '
'set ccols 49 47 45 43 42 41 21 22 23 25 27 29'
'd mn7-mn6'
*'grmask'
*'drawbox 68 88 18 28'
endif

'close 1'
'set string 1 l 6'
'set strsiz 0.3'
if(ifl=0);'draw string 1 10.25 (a)OBS (2013)';endif
if(ifl=1);'draw string 1 10.25 (b)N512 UKMO-Day-3 (2013)';endif
if(ifl=2);'draw string 1 10.25 (c)Mean Error (2013)';endif
if(ifl=3);'draw string 1 10.25 (d)OBS (2015)';endif
if(ifl=4);'draw string 1 10.25 (e)N768 UKMO-Day-3 (2015)';endif
if(ifl=5);'draw string 1 10.25 (f)Mean Error (2015)';endif
if(ifl=6);'draw string 1 10.25 (g)OBS (2018)';endif
if(ifl=7);'draw string 1 10.25 (h)N1280 UKMO-Day-3(2018)';endif
if(ifl=8);'draw string 1 10.25 (i)Mean Error (2018)';endif
if(ifl=1);'run cbar_rup 4.75 0.08 H 2.25 7.35 0.08 p';endif
if(ifl=5);'run cbar_rup 4.75 0.1 H 5.8 3.7 0.1 p';endif
***endif
    xmin=xmin+xsize
    col=col+1
    ifl=ifl+1
  endwhile
  row=row+1
  col=1
  if(row=3);ncols=3;endif
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
*'printim mnrf-ncum-2013-2017.gif gif gif x800 y1000 white'
'enable print uv'
'print '
'disable print'
*'!gxps -c -i uv -o mnrf-ukmo-2013-15-2017.ps'
*'!convert -density 200 -quality 100 -trim mnrf-ukmo-2013-15-2017.ps mnrf-ukmo-2013-15-2017.png'
'!gxps -c -i uv -o mnrf-ukmo-2013-15-2018.ps'
'!convert -density 200 -quality 100 -trim mnrf-ukmo-2013-15-2018.ps mnrf-ukmo-2013-15-2018_wo_grmask.png'
*'quit'
