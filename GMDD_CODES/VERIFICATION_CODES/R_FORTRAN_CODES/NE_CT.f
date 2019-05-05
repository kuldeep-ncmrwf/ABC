       parameter(nx=69,ny=65,nt=122)
       dimension rfo(nx,ny,nt),rf1(nx,ny,nt)
       dimension rfm(nx,ny,1),rfop(nx,ny),rf1p(nx,ny)
       dimension scores(5),raino(5947110),rainm(5947110)
       dimension rop(5947110),rmp(5947110)
       real pc,bias,xpod,far,hkscore,rnglow,rngup,hss,odr,orss,eds,seds
     > ,edi,sedi
       open (11,file='obs.bin',form='unformatted',
     > access='direct',recl=nx*ny)  
       open (12,file='fcst.bin',form='unformatted',
     > access='direct',recl=nx*ny)  
       open (13,file='rfm.grd',form='unformatted'
     >,access='direct',recl=nx*ny)
       open (14,file='obspctl.bin',form='unformatted',
     > access='direct',recl=nx*ny)  
       open (15,file='fcstpctl.bin',form='unformatted',
     > access='direct',recl=nx*ny)  
       open (21,file='scrs.txt',form='formatted')
       open (22,file='rfo.txt',form='formatted')
       open (23,file='rfm.txt',form='formatted')
       do k=1,1
c       read(11,rec=k)skip
c       read(12,rec=k)skip
       enddo
   
       read(13,rec=1)((rfm(i,j,1),i=1,nx),j=1,ny)
       read(14,rec=1)((rfop(i,j),i=1,nx),j=1,ny)
       read(15,rec=1)((rf1p(i,j),i=1,nx),j=1,ny)


       do k=1,nt
       read(11,rec=k)((rfo(i,j,k),i=1,nx),j=1,ny)
       read(12,rec=k)((rf1(i,j,k),i=1,nx),j=1,ny)
       enddo
       print *,'READING COMPLETED'
c
       idx=0
       do j=30,48
       do i=44,68
c       do j=1,ny
c       do i=1,nx
       if(rfm(i,j,1).gt.-999)then
       do k=1,nt
       idx=idx+1
c       raino(idx)=rfo(i,j,k)*10.
c       rainm(idx)=rf1(i,j,k)*10.
       raino(idx)=rfo(i,j,k)
       rainm(idx)=rf1(i,j,k)
       rop(idx)=rfop(i,j)
       rmp(idx)=rf1p(i,j)
       enddo
       endif
       enddo
       enddo
       do k=1,idx
       write(22,'(f8.3)')raino(k)
       write(23,'(f8.3)')rainm(k)
       enddo
       ntt=idx
c       do irng=1,25
       print *,'THE RANGE IS :',rnglow,' TO ',rngup
       call scores1(raino,rainm,rop,rmp,ntt,nh,nm,nf,
     > nz,ntot,nrob)
       print *,idx,nh,nm,nf,nz,ntot,nrob
       scores(1)=nrob
       scores(2)=nh
       scores(3)=nm
       scores(4)=nf
       scores(5)=nz
       write(21,'(5f10.0)')
     > (scores(i),i=1,5)
c       enddo
       stop
       end

       subroutine scores1(rfo,rf1,rop,rmp,nt,nh,nm,nf,nz,
     > ntot,nrob)
       dimension rfo(5947110), rf1(5947110)
       dimension rop(5947110), rmp(5947110)
       nh=0
       nf=0
       nm=0
       nz=0
       ntot=0
       nrob=0
       do i=1,nt
       rob=rfo(i)
       rd1=rf1(i)
       robp=rop(i)
       rd1p=rmp(i)
CCCCCCCCCCCCCCCCCCCCCCCCCCC 0.0 To 0.5 cm CCCCCCCCCCCCCCCCCCCCC       
       if (rob .ge. robp)then
        nrob=nrob+1
        if(rd1 .ge. rd1p)then
         nh=nh+1
        else
         nm=nm+1
        endif
       else
        if(rd1 .ge. rd1p)then
         nf=nf+1
        else
         nz=nz+1
        endif
       endif
CCCCCCCCCCCCCCCCCCCCCCCCCCC 0.0 To 0.5 cm CCCCCCCCCCCCCCCCCCCCC       
       enddo
       ntot=nh+nm+nf+nz
       return
       end
