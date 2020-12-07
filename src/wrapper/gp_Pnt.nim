{.push header: "gp_Pnt.hxx".}


# Constructors and methods
proc constructor_gp_Pnt*(): gp_Pnt {.constructor,importcpp: "gp_Pnt".}
proc constructor_gp_Pnt*(Coord: gp_XYZ): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
proc constructor_gp_Pnt(Xp: Standard_Real, Yp: Standard_Real, Zp: Standard_Real): gp_Pnt {.constructor, importcpp: "gp_Pnt(@)".}
#proc operator new*(this: gp_Pnt, theSize: int)  {.importcpp: "operator new".}
#proc operator delete*(this: gp_Pnt, theAddress: void *)  {.importcpp: "operator delete".}
#proc operator new[]*(this: gp_Pnt, theSize: int)  {.importcpp: "operator new[]".}
#proc operator delete[]*(this: gp_Pnt, theAddress: void *)  {.importcpp: "operator delete[]".}
#proc operator new*(this: gp_Pnt, int, theAddress: void *)  {.importcpp: "operator new".}
#proc operator delete*(this: gp_Pnt, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_Pnt, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_Pnt, Xp: Standard_Real, Yp: Standard_Real, Zp: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: var gp_Pnt, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_Pnt, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetZ*(this: gp_Pnt, Z: Standard_Real)  {.importcpp: "SetZ".}
proc SetXYZ*(this: gp_Pnt, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
proc Coord*(this: gp_Pnt, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
proc Coord*(this: gp_Pnt, Xp: Standard_Real, Yp: Standard_Real, Zp: Standard_Real)  {.importcpp: "Coord".}
proc X(this: gp_Pnt): Standard_Real  {.importcpp: "X".}
proc Y(this: gp_Pnt): Standard_Real  {.importcpp: "Y".}
proc Z(this: gp_Pnt): Standard_Real  {.importcpp: "Z".}
#proc XYZ*(this: gp_Pnt): const gp_XYZ &  {.importcpp: "XYZ".}
#proc Coord*(this: gp_Pnt): const gp_XYZ &  {.importcpp: "Coord".}
#proc ChangeCoord*(this: gp_Pnt): gp_XYZ &  {.importcpp: "ChangeCoord".}
proc BaryCenter*(this: gp_Pnt, Alpha: Standard_Real, P: gp_Pnt, Beta: Standard_Real)  {.importcpp: "BaryCenter".}
proc IsEqual*(this: gp_Pnt, Other: gp_Pnt, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc Distance*(this: gp_Pnt, Other: gp_Pnt): Standard_Real  {.importcpp: "Distance".}
proc SquareDistance*(this: gp_Pnt, Other: gp_Pnt): Standard_Real  {.importcpp: "SquareDistance".}
proc Mirror*(this: gp_Pnt, P: gp_Pnt)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Pnt, P: gp_Pnt): gp_Pnt  {.importcpp: "Mirrored".}
proc Mirror*(this: gp_Pnt, A1: gp_Ax1)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Pnt, A1: gp_Ax1): gp_Pnt  {.importcpp: "Mirrored".}
#proc Mirror*(this: gp_Pnt, A2: gp_Ax2)  {.importcpp: "Mirror".}
#proc Mirrored*(this: gp_Pnt, A2: gp_Ax2): gp_Pnt  {.importcpp: "Mirrored".}
#proc Rotate*(this: gp_Pnt, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}
#proc Rotated*(this: gp_Pnt, A1: gp_Ax1, Ang: Standard_Real): gp_Pnt  {.importcpp: "Rotated".}
proc Scale*(this: gp_Pnt, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}
proc Scaled*(this: gp_Pnt, P: gp_Pnt, S: Standard_Real): gp_Pnt  {.importcpp: "Scaled".}
proc Transform*(this: gp_Pnt, T: gp_Trsf)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Pnt, T: gp_Trsf): gp_Pnt  {.importcpp: "Transformed".}
proc Translate*(this: gp_Pnt, V: gp_Vec)  {.importcpp: "Translate".}
proc Translated*(this: gp_Pnt, V: gp_Vec): gp_Pnt  {.importcpp: "Translated".}
proc Translate*(this: gp_Pnt, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}
proc Translated*(this: gp_Pnt, P1: gp_Pnt, P2: gp_Pnt): gp_Pnt  {.importcpp: "Translated".}
{.pop.} # header: "gp_Pnt.hxx

#---------------
proc Pnt*(x,y,z:float):gp_Pnt =
  constructor_gp_Pnt(x.Standard_Real, y.Standard_Real, z.Standard_Real)

proc x*(pnt:gp_Pnt):float =
  pnt.X.float

proc y*(pnt:gp_Pnt):float =
  pnt.Y.float

proc z*(pnt:gp_Pnt):float =
  pnt.Z.float

proc `x=`*(this:var gp_Pnt, val:float) =
  this.SetX( val.Standard_Real )

proc `y=`*(this:var gp_Pnt, val:float) =
  this.SetY( val.Standard_Real )

proc `z=`*(this:var gp_Pnt, val:float) =
  this.SetZ( val.Standard_Real )

proc `$`*(this:gp_Pnt):string =
  result = "Pnt(x:" & $this.x & ", y:" & $this.y & ", z:" & $this.z & ")"