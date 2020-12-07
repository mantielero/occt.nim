{.push header: "gp_Dir.hxx".}


# Constructors and methods
proc constructor_gp_Dir*(): gp_Dir {.constructor,importcpp: "gp_Dir".}
proc constructor_gp_Dir*(V: gp_Vec): gp_Dir {.constructor,importcpp: "gp_Dir(@)".}
proc constructor_gp_Dir*(Coord: gp_XYZ): gp_Dir {.constructor,importcpp: "gp_Dir(@)".}
proc constructor_gp_Dir*(Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real): gp_Dir {.constructor,importcpp: "gp_Dir(@)".}
# proc operator new*(this: gp_Dir, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Dir, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Dir, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Dir, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Dir, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Dir, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_Dir, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_Dir, Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_Dir, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_Dir, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetZ*(this: gp_Dir, Z: Standard_Real)  {.importcpp: "SetZ".}
proc SetXYZ*(this: gp_Dir, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
proc Coord*(this: gp_Dir, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
proc Coord*(this: gp_Dir, Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real)  {.importcpp: "Coord".}
proc X*(this: gp_Dir): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_Dir): Standard_Real  {.importcpp: "Y".}
proc Z*(this: gp_Dir): Standard_Real  {.importcpp: "Z".}
#proc XYZ*(this: gp_Dir): const gp_XYZ &  {.importcpp: "XYZ".}
proc IsEqual*(this: gp_Dir, Other: gp_Dir, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc IsNormal*(this: gp_Dir, Other: gp_Dir, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
proc IsOpposite*(this: gp_Dir, Other: gp_Dir, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
proc IsParallel*(this: gp_Dir, Other: gp_Dir, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
proc Angle*(this: gp_Dir, Other: gp_Dir): Standard_Real  {.importcpp: "Angle".}
proc AngleWithRef*(this: gp_Dir, Other: gp_Dir, VRef: gp_Dir): Standard_Real  {.importcpp: "AngleWithRef".}
proc Cross*(this: gp_Dir, Right: gp_Dir)  {.importcpp: "Cross".}
#proc operator^=*(this: gp_Dir, Right: gp_Dir)  {.importcpp: "operator^=".}
proc Crossed*(this: gp_Dir, Right: gp_Dir): gp_Dir  {.importcpp: "Crossed".}
#proc operator^*(this: gp_Dir, Right: gp_Dir): gp_Dir  {.importcpp: "operator^".}
proc CrossCross*(this: gp_Dir, V1: gp_Dir, V2: gp_Dir)  {.importcpp: "CrossCross".}
proc CrossCrossed*(this: gp_Dir, V1: gp_Dir, V2: gp_Dir): gp_Dir  {.importcpp: "CrossCrossed".}
proc Dot*(this: gp_Dir, Other: gp_Dir): Standard_Real  {.importcpp: "Dot".}
#proc operator**(this: gp_Dir, Other: gp_Dir): Standard_Real  {.importcpp: "operator*".}
proc DotCross*(this: gp_Dir, V1: gp_Dir, V2: gp_Dir): Standard_Real  {.importcpp: "DotCross".}
proc Reverse*(this: gp_Dir)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_Dir): gp_Dir  {.importcpp: "Reversed".}
#proc operator-*(this: gp_Dir): gp_Dir  {.importcpp: "operator-".}
proc Mirror*(this: gp_Dir, V: gp_Dir)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Dir, V: gp_Dir): gp_Dir  {.importcpp: "Mirrored".}
#proc Mirror*(this: gp_Dir, A1: gp_Ax1)  {.importcpp: "Mirror".}
#proc Mirrored*(this: gp_Dir, A1: gp_Ax1): gp_Dir  {.importcpp: "Mirrored".}
#proc Mirror*(this: gp_Dir, A2: gp_Ax2)  {.importcpp: "Mirror".}
#proc Mirrored*(this: gp_Dir, A2: gp_Ax2): gp_Dir  {.importcpp: "Mirrored".}
#proc Rotate*(this: gp_Dir, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}
#proc Rotated*(this: gp_Dir, A1: gp_Ax1, Ang: Standard_Real): gp_Dir  {.importcpp: "Rotated".}
proc Transform*(this: gp_Dir, T: gp_Trsf)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Dir, T: gp_Trsf): gp_Dir  {.importcpp: "Transformed".}
{.pop.} # header: "gp_Dir.hxx

#--------------
proc Dir*(x,y,z:float):gp_Dir =
  constructor_gp_Dir(x.Standard_Real, y.Standard_Real, z.Standard_Real)