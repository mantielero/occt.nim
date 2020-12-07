{.push header: "gp_Dir2d.hxx".}


# Constructors and methods
proc constructor_gp_Dir2d*(): gp_Dir2d {.constructor,importcpp: "gp_Dir2d".}
proc constructor_gp_Dir2d*(V: gp_Vec2d): gp_Dir2d {.constructor,importcpp: "gp_Dir2d".}
proc constructor_gp_Dir2d*(Coord: gp_XY): gp_Dir2d {.constructor,importcpp: "gp_Dir2d".}
proc constructor_gp_Dir2d*(Xv: Standard_Real, Yv: Standard_Real): gp_Dir2d {.constructor,importcpp: "gp_Dir2d".}
# proc operator new*(this: gp_Dir2d, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Dir2d, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Dir2d, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Dir2d, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Dir2d, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Dir2d, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_Dir2d, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_Dir2d, Xv: Standard_Real, Yv: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_Dir2d, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_Dir2d, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetXY*(this: gp_Dir2d, Coord: gp_XY)  {.importcpp: "SetXY".}
proc Coord*(this: gp_Dir2d, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
proc Coord*(this: gp_Dir2d, Xv: Standard_Real, Yv: Standard_Real)  {.importcpp: "Coord".}
proc X*(this: gp_Dir2d): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_Dir2d): Standard_Real  {.importcpp: "Y".}
#proc XY*(this: gp_Dir2d): const gp_XY &  {.importcpp: "XY".}
proc IsEqual*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc IsNormal*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
proc IsOpposite*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
proc IsParallel*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
proc Angle*(this: gp_Dir2d, Other: gp_Dir2d): Standard_Real  {.importcpp: "Angle".}
proc Crossed*(this: gp_Dir2d, Right: gp_Dir2d): Standard_Real  {.importcpp: "Crossed".}
#proc operator^*(this: gp_Dir2d, Right: gp_Dir2d): Standard_Real  {.importcpp: "operator^".}
proc Dot*(this: gp_Dir2d, Other: gp_Dir2d): Standard_Real  {.importcpp: "Dot".}
#proc operator**(this: gp_Dir2d, Other: gp_Dir2d): Standard_Real  {.importcpp: "operator*".}
proc Reverse*(this: gp_Dir2d)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_Dir2d): gp_Dir2d  {.importcpp: "Reversed".}
#proc operator-*(this: gp_Dir2d): gp_Dir2d  {.importcpp: "operator-".}
proc Mirror*(this: gp_Dir2d, V: gp_Dir2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Dir2d, V: gp_Dir2d): gp_Dir2d  {.importcpp: "Mirrored".}
proc Mirror*(this: gp_Dir2d, A: gp_Ax2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Dir2d, A: gp_Ax2d): gp_Dir2d  {.importcpp: "Mirrored".}
proc Rotate*(this: gp_Dir2d, Ang: Standard_Real)  {.importcpp: "Rotate".}
proc Rotated*(this: gp_Dir2d, Ang: Standard_Real): gp_Dir2d  {.importcpp: "Rotated".}
proc Transform*(this: gp_Dir2d, T: gp_Trsf2d)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Dir2d, T: gp_Trsf2d): gp_Dir2d  {.importcpp: "Transformed".}
{.pop.} # header: "gp_Dir2d.hxx
