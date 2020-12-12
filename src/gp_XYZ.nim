#import wrapper/gp/gp

#---- Pnt
proc XYZ*():gp_XYZ = 
  constructor_gp_XYZ()

proc XYZ*[X,Y,Z:SomeNumber](x:X,y:Y,z:Z):gp_XYZ =
  constructor_gp_XYZ(x.cdouble, y.cdouble, z.cdouble)

proc `$`*(pnt:gp_XYZ):string =
  result = "XYZ(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc set*[X,Y,Z:SomeNumber](pnt:var gp_XYZ, x:X, y:Y, z:Z) =
  pnt.SetCoord(x.cdouble, y.cdouble, z.cdouble)

proc `[]`*[I:SomeInteger](pnt:gp_XYZ, idx:I):float =
  pnt.Coord(idx.cint).float

#--------

proc modulus*(p:gp_XYZ):float =
  p.Modulus.float


proc squareModulus*(p:gp_XYZ):float =
  p.SquareModulus.float

proc add*(p:var gp_XYZ,q:gp_XYZ) =
  ## Add in place
  p.Add(q)

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

