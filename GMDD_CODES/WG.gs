'reinit'
'run rgbset2.gs'
'sdfopen umreg_oro.nc'
'clear'
'set t 1'
'set mpdset rupres'
'set map 1 1 6'
'set grads off'
*'set lat 8 38';'set lon 68 98'
'set lat 8 23';'set lon 72 78'
'set xlab on'
'set ylab on'
'set xlint 3'
'set ylint 2'
'set xlopts 1 6 0.16';'set ylopts 1 6 0.16'
'set gxout shaded'
'set csmooth on'
*'set clevs 0.5 1.0 1.5 2.0 2.5 3.0'
'set clevs 200 400 600 800 1000 1200 1500'
*'set ccols 0 71 72 73 74 75 76 77 78 79'
'set ccols 0 51 52 53 54 55 57 59'
*'set cmin 50'
'd ht'
'grmask'
*'cbarn 1 1 6.9 4'
k=1
*while(k<=2572)
while(k<=796)
*ret=read('imdstnrain_03z'dt'0712.dat')
ret=read('WC_lat_lon.txt')
say ret
clat=subwrd(ret,2)
clon=subwrd(ret,3)
say clon clat
'q w2xy 'clon' 'clat

    rec=sublin(result,1)
    xpt=subwrd(rec,3)
    ypt=subwrd(rec,6)
    say xpt
    say ypt
    'set string 1 c 2'
    'set strsiz 0.06'
    'set font 3'
    'draw string 'xpt' 'ypt' 4'
    'set font 1'
k=k+1
endwhile

*'set line 86 1 1'
*'draw shp /home/kuldeep/GRADS/dat/shapefiles/IND_adm2.shp'
*'set line 98 1 8'
*'draw shp /home/kuldeep/GRADS/dat/shapefiles/IND_WHOLE.shp'
*'draw shp IND_WHOLE'
'set strsiz 0.16'
'set string 1 c 6'
'draw string 5.5 8.0 Model Orography(m)'
*'gxprint myfile.png x1000 y800 white'
'gxprint myfile.ps white'
'!convert -density 150 -quality 150 -rotate 90 -trim myfile.ps WG_umreg_oro.png'
'!rm -f myfile.png'
'quit'
