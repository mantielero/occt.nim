{.push header: "gp_Pnt2d.hxx".}


# Constructors and methods
proc constructor_gp_Pnt2d*(): gp_Pnt2d {.constructor,importcpp: "gp_Pnt2d".}
proc constructor_gp_Pnt2d*(Coord: gp_XY): gp_Pnt2d {.constructor,importcpp: "gp_Pnt2d".}
proc constructor_gp_Pnt2d*(Xp: Standard_Real, Yp: Standard_Real): gp_Pnt2d {.constructor,importcpp: "gp_Pnt2d".}
# proc operator new*(this: gp_Pnt2d, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Pnt2d, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Pnt2d, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Pnt2d, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Pnt2d, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Pnt2d, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_Pnt2d, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_Pnt2d, Xp: Standard_Real, Yp: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_Pnt2d, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_Pnt2d, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetXY*(this: gp_Pnt2d, Coord: gp_XY)  {.importcpp: "SetXY".}
proc Coord*(this: gp_Pnt2d, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
proc Coord*(this: gp_Pnt2d, Xp: Standard_Real, Yp: Standard_Real)  {.importcpp: "Coord".}
proc X*(this: gp_Pnt2d): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_Pnt2d): Standard_Real  {.importcpp: "Y".}
# proc XY*(this: gp_Pnt2d): const gp_XY &  {.importcpp: "XY".}
# proc Coord*(this: gp_Pnt2d): const gp_XY &  {.importcpp: "Coord".}
# proc ChangeCoord*(this: gp_Pnt2d): gp_XY &  {.importcpp: "ChangeCoord".}
proc IsEqual*(this: gp_Pnt2d, Other: gp_Pnt2d, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc Distance*(this: gp_Pnt2d, Other: gp_Pnt2d): Standard_Real  {.importcpp: "Distance".}
proc SquareDistance*(this: gp_Pnt2d, Other: gp_Pnt2d): Standard_Real  {.importcpp: "SquareDistance".}
proc Mirror*(this: gp_Pnt2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Pnt2d, P: gp_Pnt2d): gp_Pnt2d  {.importcpp: "Mirrored".}
proc Mirror*(this: gp_Pnt2d, A: gp_Ax2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Pnt2d, A: gp_Ax2d): gp_Pnt2d  {.importcpp: "Mirrored".}
proc Rotate*(this: gp_Pnt2d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "Rotate".}
proc Rotated*(this: gp_Pnt2d, P: gp_Pnt2d, Ang: Standard_Real): gp_Pnt2d  {.importcpp: "Rotated".}
proc Scale*(this: gp_Pnt2d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "Scale".}
proc Scaled*(this: gp_Pnt2d, P: gp_Pnt2d, S: Standard_Real): gp_Pnt2d  {.importcpp: "Scaled".}
proc Transform*(this: gp_Pnt2d, T: gp_Trsf2d)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Pnt2d, T: gp_Trsf2d): gp_Pnt2d  {.importcpp: "Transformed".}
proc Translate*(this: gp_Pnt2d, V: gp_Vec2d)  {.importcpp: "Translate".}
proc Translated*(this: gp_Pnt2d, V: gp_Vec2d): gp_Pnt2d  {.importcpp: "Translated".}
proc Translate*(this: gp_Pnt2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}
proc Translated*(this: gp_Pnt2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Pnt2d  {.importcpp: "Translated".}
{.pop.} # header: "gp_Pnt2d.hxx
