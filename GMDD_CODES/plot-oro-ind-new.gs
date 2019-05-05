'reinit'
'set mpdset rupres'
'set map 4 1 6'
'sdfopen elev.0.25-deg.nc'
*'set lat 5 40';'set lon 65 100'
dt=25
while(dt<=25)
'clear'
'set lat 7 38.5';'set lon 67 100.5'
'clear'
'set grads off';'set grid on 3 1'
'set xlint 5';'set ylint 5'
'set xlopts 1 6 0.14';'set ylopts 1 6 0.14'
'set gxout shaded'
'run rgbset2'
'set clevs 200 400 600 800 1000 1200 1500'
'set ccols 0 51 52 53 54 55 57 59'

*'color 0 5000 -div 10 -kind (100,100,100)->(100,150,0)->(200,50,150)'
*'color 0 8000 -div 20 -kind black->tan->rosybrown->saddlebrown'
*'color 0 5 -div 10 -kind white->tan->rosybrown->saddlebrown'
*'color 0 8000 -div 50 -kind white->gray->darkgray->slategray'
*'color -gxout contour -levs 100 200 500 1000 2000 5000'
*'d data/1000'
'd data'
'grmask'
'run cbar_rup 10 0.15 H 4.25 0.75 0.1 p'
*'set lat 5 40';'set lon 65 100'
'set lat 7 38.5';'set lon 67 100.5'
'set grads off';'set grid on 3 1'
'set xlint 5';'set ylint 5'
'set gxout contour'
'set ccolor 1'
'set clopts 1 6 0.06'
'set clevs 15000 20000'
'd data'
k=1
while(k<=2573)
ret=read('imdstnrain_03z'dt'0712.dat')
*say ret
clat=subwrd(ret,2)
clon=subwrd(ret,3)
say clon clat
'q w2xy 'clon' 'clat
    rec=sublin(result,1)
    xpt=subwrd(rec,3)
    ypt=subwrd(rec,6)
    'set string 1 c 2'
    'set strsiz 0.06'
    'set font 3'
    'draw string 'xpt' 'ypt' 4'
    'set font 1'
k=k+1
endwhile
*'set font 1'
'set line 2 1 6'
'drawbox 72 78 8 23'
'drawbox 88 100 21 30'
'set string 1 c 6'
'set strsiz 0.2'
'draw string 5.5 3.5 BAY'
'draw string 5.5 3.0 OF'
'draw string 5.5 2.5 BENGAL'
'draw string 1.25 3.0 ARABIAN'
'draw string 1.25 2.5 SEA'
'set strsiz 0.08'
'set string 1 c 5 50'
'draw string 1.25 7.5 Pakistan'
'set string 1 c 5 340'
'draw string 4.25 7.0 Nepal'
'set string 1 c 5 0'
'draw string 5.7 6.0 Bangladesh'
'printim topo'%dt%'_kul_grmask.png png x800 y1000 white'
ret=close('imdstnrain_03z'dt'0712.dat')
dt=dt+1
endwhile
