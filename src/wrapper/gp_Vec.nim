{.push header: "gp_Vec.hxx".}


# Constructors and methods
proc constructor_gp_Vec*(): gp_Vec {.constructor,importcpp: "gp_Vec".}
proc constructor_gp_Vec*(V: gp_Dir): gp_Vec {.constructor,importcpp: "gp_Vec".}
proc constructor_gp_Vec*(Coord: gp_XYZ): gp_Vec {.constructor,importcpp: "gp_Vec".}
proc constructor_gp_Vec*(Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real): gp_Vec {.constructor,importcpp: "gp_Vec".}
proc constructor_gp_Vec*(P1: gp_Pnt, P2: gp_Pnt): gp_Vec {.constructor,importcpp: "gp_Vec".}
# proc operator new*(this: gp_Vec, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Vec, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Vec, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Vec, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Vec, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Vec, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_Vec, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_Vec, Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_Vec, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_Vec, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetZ*(this: gp_Vec, Z: Standard_Real)  {.importcpp: "SetZ".}
proc SetXYZ*(this: gp_Vec, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
proc Coord*(this: gp_Vec, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
proc Coord*(this: gp_Vec, Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real)  {.importcpp: "Coord".}
proc X*(this: gp_Vec): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_Vec): Standard_Real  {.importcpp: "Y".}
proc Z*(this: gp_Vec): Standard_Real  {.importcpp: "Z".}
#proc XYZ*(this: gp_Vec): const gp_XYZ &  {.importcpp: "XYZ".}
proc IsEqual*(this: gp_Vec, Other: gp_Vec, LinearTolerance: Standard_Real, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc IsNormal*(this: gp_Vec, Other: gp_Vec, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
proc IsOpposite*(this: gp_Vec, Other: gp_Vec, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
proc IsParallel*(this: gp_Vec, Other: gp_Vec, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
proc Angle*(this: gp_Vec, Other: gp_Vec): Standard_Real  {.importcpp: "Angle".}
proc AngleWithRef*(this: gp_Vec, Other: gp_Vec, VRef: gp_Vec): Standard_Real  {.importcpp: "AngleWithRef".}
proc Magnitude*(this: gp_Vec): Standard_Real  {.importcpp: "Magnitude".}
proc SquareMagnitude*(this: gp_Vec): Standard_Real  {.importcpp: "SquareMagnitude".}
proc Add*(this: gp_Vec, Other: gp_Vec)  {.importcpp: "Add".}
#proc operator+=*(this: gp_Vec, Other: gp_Vec)  {.importcpp: "operator+=".}
proc Added*(this: gp_Vec, Other: gp_Vec): gp_Vec  {.importcpp: "Added".}
#proc operator+*(this: gp_Vec, Other: gp_Vec): gp_Vec  {.importcpp: "operator+".}
proc Subtract*(this: gp_Vec, Right: gp_Vec)  {.importcpp: "Subtract".}
#proc operator-=*(this: gp_Vec, Right: gp_Vec)  {.importcpp: "operator-=".}
proc Subtracted*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "Subtracted".}
#proc operator-*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "operator-".}
proc Multiply*(this: gp_Vec, Scalar: Standard_Real)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Vec, Scalar: Standard_Real)  {.importcpp: "operator*=".}
proc Multiplied*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "operator*".}
proc Divide*(this: gp_Vec, Scalar: Standard_Real)  {.importcpp: "Divide".}
#proc operator/=*(this: gp_Vec, Scalar: Standard_Real)  {.importcpp: "operator/=".}
proc Divided*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "Divided".}
#proc operator/*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "operator/".}
proc Cross*(this: gp_Vec, Right: gp_Vec)  {.importcpp: "Cross".}
#proc operator^=*(this: gp_Vec, Right: gp_Vec)  {.importcpp: "operator^=".}
proc Crossed*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "Crossed".}
#proc operator^*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "operator^".}
proc CrossMagnitude*(this: gp_Vec, Right: gp_Vec): Standard_Real  {.importcpp: "CrossMagnitude".}
proc CrossSquareMagnitude*(this: gp_Vec, Right: gp_Vec): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
proc CrossCross*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "CrossCross".}
proc CrossCrossed*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec): gp_Vec  {.importcpp: "CrossCrossed".}
proc Dot*(this: gp_Vec, Other: gp_Vec): Standard_Real  {.importcpp: "Dot".}
#proc operator**(this: gp_Vec, Other: gp_Vec): Standard_Real  {.importcpp: "operator*".}
proc DotCross*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec): Standard_Real  {.importcpp: "DotCross".}
proc Normalize*(this: gp_Vec)  {.importcpp: "Normalize".}
proc Normalized*(this: gp_Vec): gp_Vec  {.importcpp: "Normalized".}
proc Reverse*(this: gp_Vec)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_Vec): gp_Vec  {.importcpp: "Reversed".}
#proc operator-*(this: gp_Vec): gp_Vec  {.importcpp: "operator-".}
proc SetLinearForm*(this: gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec, A3: Standard_Real, V3: gp_Vec, V4: gp_Vec)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec, A3: Standard_Real, V3: gp_Vec)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec, V3: gp_Vec)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec, A1: Standard_Real, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
proc Mirror*(this: gp_Vec, V: gp_Vec)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Vec, V: gp_Vec): gp_Vec  {.importcpp: "Mirrored".}
#proc Mirror*(this: gp_Vec, A1: gp_Ax1)  {.importcpp: "Mirror".}
#proc Mirrored*(this: gp_Vec, A1: gp_Ax1): gp_Vec  {.importcpp: "Mirrored".}
#proc Mirror*(this: gp_Vec, A2: gp_Ax2)  {.importcpp: "Mirror".}
#proc Mirrored*(this: gp_Vec, A2: gp_Ax2): gp_Vec  {.importcpp: "Mirrored".}
#proc Rotate*(this: gp_Vec, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}
#proc Rotated*(this: gp_Vec, A1: gp_Ax1, Ang: Standard_Real): gp_Vec  {.importcpp: "Rotated".}
proc Scale*(this: gp_Vec, S: Standard_Real)  {.importcpp: "Scale".}
proc Scaled*(this: gp_Vec, S: Standard_Real): gp_Vec  {.importcpp: "Scaled".}
proc Transform*(this: gp_Vec, T: gp_Trsf)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Vec, T: gp_Trsf): gp_Vec  {.importcpp: "Transformed".}
{.pop.} # header: "gp_Vec.hxx
