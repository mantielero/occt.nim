{.push header: "gp_Vec2d.hxx".}


# Constructors and methods
proc constructor_gp_Vec2d*(): gp_Vec2d {.constructor,importcpp: "gp_Vec2d".}
proc constructor_gp_Vec2d*(V: gp_Dir2d): gp_Vec2d {.constructor,importcpp: "gp_Vec2d".}
proc constructor_gp_Vec2d*(Coord: gp_XY): gp_Vec2d {.constructor,importcpp: "gp_Vec2d".}
proc constructor_gp_Vec2d*(Xv: Standard_Real, Yv: Standard_Real): gp_Vec2d {.constructor,importcpp: "gp_Vec2d".}
proc constructor_gp_Vec2d*(P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Vec2d {.constructor,importcpp: "gp_Vec2d".}
# proc operator new*(this: gp_Vec2d, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Vec2d, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Vec2d, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Vec2d, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Vec2d, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Vec2d, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_Vec2d, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_Vec2d, Xv: Standard_Real, Yv: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_Vec2d, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_Vec2d, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetXY*(this: gp_Vec2d, Coord: gp_XY)  {.importcpp: "SetXY".}
proc Coord*(this: gp_Vec2d, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
proc Coord*(this: gp_Vec2d, Xv: Standard_Real, Yv: Standard_Real)  {.importcpp: "Coord".}
proc X*(this: gp_Vec2d): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_Vec2d): Standard_Real  {.importcpp: "Y".}
#proc XY*(this: gp_Vec2d): const gp_XY &  {.importcpp: "XY".}
proc IsEqual*(this: gp_Vec2d, Other: gp_Vec2d, LinearTolerance: Standard_Real, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc IsNormal*(this: gp_Vec2d, Other: gp_Vec2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
proc IsOpposite*(this: gp_Vec2d, Other: gp_Vec2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
proc IsParallel*(this: gp_Vec2d, Other: gp_Vec2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
proc Angle*(this: gp_Vec2d, Other: gp_Vec2d): Standard_Real  {.importcpp: "Angle".}
proc Magnitude*(this: gp_Vec2d): Standard_Real  {.importcpp: "Magnitude".}
proc SquareMagnitude*(this: gp_Vec2d): Standard_Real  {.importcpp: "SquareMagnitude".}
proc Add*(this: gp_Vec2d, Other: gp_Vec2d)  {.importcpp: "Add".}
#proc operator+=*(this: gp_Vec2d, Other: gp_Vec2d)  {.importcpp: "operator+=".}
proc Added*(this: gp_Vec2d, Other: gp_Vec2d): gp_Vec2d  {.importcpp: "Added".}
#proc operator+*(this: gp_Vec2d, Other: gp_Vec2d): gp_Vec2d  {.importcpp: "operator+".}
proc Crossed*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "Crossed".}
#proc operator^*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "operator^".}
proc CrossMagnitude*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "CrossMagnitude".}
proc CrossSquareMagnitude*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
proc Divide*(this: gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "Divide".}
#proc operator/=*(this: gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "operator/=".}
proc Divided*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "Divided".}
#proc operator/*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "operator/".}
proc Dot*(this: gp_Vec2d, Other: gp_Vec2d): Standard_Real  {.importcpp: "Dot".}
#proc operator**(this: gp_Vec2d, Other: gp_Vec2d): Standard_Real  {.importcpp: "operator*".}
proc GetNormal*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "GetNormal".}
proc Multiply*(this: gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "operator*=".}
proc Multiplied*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "operator*".}
proc Normalize*(this: gp_Vec2d)  {.importcpp: "Normalize".}
proc Normalized*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "Normalized".}
proc Reverse*(this: gp_Vec2d)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "Reversed".}
#proc operator-*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "operator-".}
proc Subtract*(this: gp_Vec2d, Right: gp_Vec2d)  {.importcpp: "Subtract".}
#proc operator-=*(this: gp_Vec2d, Right: gp_Vec2d)  {.importcpp: "operator-=".}
proc Subtracted*(this: gp_Vec2d, Right: gp_Vec2d): gp_Vec2d  {.importcpp: "Subtracted".}
#proc operator-*(this: gp_Vec2d, Right: gp_Vec2d): gp_Vec2d  {.importcpp: "operator-".}
proc SetLinearForm*(this: gp_Vec2d, A1: Standard_Real, V1: gp_Vec2d, A2: Standard_Real, V2: gp_Vec2d, V3: gp_Vec2d)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec2d, A1: Standard_Real, V1: gp_Vec2d, A2: Standard_Real, V2: gp_Vec2d)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec2d, A1: Standard_Real, V1: gp_Vec2d, V2: gp_Vec2d)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec2d, Left: gp_Vec2d, Right: gp_Vec2d)  {.importcpp: "SetLinearForm".}
proc Mirror*(this: gp_Vec2d, V: gp_Vec2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Vec2d, V: gp_Vec2d): gp_Vec2d  {.importcpp: "Mirrored".}
proc Mirror*(this: gp_Vec2d, A1: gp_Ax2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Vec2d, A1: gp_Ax2d): gp_Vec2d  {.importcpp: "Mirrored".}
proc Rotate*(this: gp_Vec2d, Ang: Standard_Real)  {.importcpp: "Rotate".}
proc Rotated*(this: gp_Vec2d, Ang: Standard_Real): gp_Vec2d  {.importcpp: "Rotated".}
proc Scale*(this: gp_Vec2d, S: Standard_Real)  {.importcpp: "Scale".}
proc Scaled*(this: gp_Vec2d, S: Standard_Real): gp_Vec2d  {.importcpp: "Scaled".}
proc Transform*(this: gp_Vec2d, T: gp_Trsf2d)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Vec2d, T: gp_Trsf2d): gp_Vec2d  {.importcpp: "Transformed".}
{.pop.} # header: "gp_Vec2d.hxx
