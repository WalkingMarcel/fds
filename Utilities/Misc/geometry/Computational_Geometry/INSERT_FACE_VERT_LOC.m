function [NVERT,INOD,XYZVERT]=INSERT_FACE_VERT_LOC(MAXVERTS,XYZV,NVERT,XYZVERT)

global IAXIS JAXIS KAXIS GEOMEPS


for INOD=1:NVERT
   if( abs(XYZV(IAXIS)-XYZVERT(IAXIS,INOD)) > GEOMEPS ); continue; end
   if( abs(XYZV(JAXIS)-XYZVERT(JAXIS,INOD)) > GEOMEPS ); continue; end
   if( abs(XYZV(KAXIS)-XYZVERT(KAXIS,INOD)) > GEOMEPS ); continue; end
   return
end
NVERT = NVERT + 1;
INOD  = NVERT;
if (NVERT>MAXVERTS) 
    disp(['geom.f90: INSERT_FACE_VERT_LOC, NVERT' num2str(NVERT) ...
          ', higher than IBM_MAXVERTS' num2str(MAXVERTS)])
end
XYZVERT(IAXIS:KAXIS,INOD) = XYZV(IAXIS:KAXIS);

return
