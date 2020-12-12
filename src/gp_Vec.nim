#import wrapper/gp/gp

#---- Pnt
proc Vec*(): gp_Vec =
  ## Creates a zero vector.
  constructor_gp_Vec()

proc Vec*(v: gp_Dir): gp_Vec =
  ## Creates a unitary vector from a direction V.
  constructor_gp_Vec(v)

proc Vec*(coord: gp_XYZ): gp_Vec =
  ## Creates a vector with a triplet of coordinates.
  constructor_gp_Vec(coord)

proc Vec*(x,y,z:float): gp_Vec =
  ## Creates a point with its three cartesian coordinates.
  constructor_gp_Vec(x.cdouble, y.cdouble, z.cdouble)

proc Vec*(p1: gp_Pnt, p2: gp_Pnt): gp_Vec =
  ## Creates a vector from two points. The length of the vector is the
  ## distance between P1 and P2
  constructor_gp_Vec(p1,p2)


proc `$`*(pnt:gp_Vec):string =
  result = "Vec(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"



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

