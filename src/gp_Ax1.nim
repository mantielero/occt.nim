#import wrapper/gp/gp

#---- Pnt
proc Ax1*():gp_Ax1 = 
  constructor_gp_Ax1()

proc Ax1*(pnt:gp_Pnt, vec:gp_Vec):gp_Ax1 = 
  constructor_gp_Ax1(pnt, vec)

#proc `$`*(pnt:gp_Ax1):string =
#  result = "XYZ(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"



#--------


#proc `+=`*(p:var gp_XYZ,q:gp_XYZ) =
#   p += q
#[


proc squareDistance*(p1, p2: gp_Pnt): float =
  p1.SquareDistance(p2).float

#proc mirrored*(p1,p:gp_Pnt): gp_Pnt =
#    p1.Mirrored( p )

proc mirror*(p1: var gp_Pnt,p:gp_Pnt) =
    p1.Mirror( p )
]#

