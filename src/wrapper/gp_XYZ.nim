{.push header: "gp_XYZ.hxx".}


# Constructors and methods
proc constructor_gp_XYZ*(): gp_XYZ {.constructor,importcpp: "gp_XYZ".}
proc constructor_gp_XYZ*(X: Standard_Real, Y: Standard_Real, Z: Standard_Real): gp_XYZ {.constructor,importcpp: "gp_XYZ".}
# proc operator new*(this: gp_XYZ, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_XYZ, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_XYZ, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_XYZ, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_XYZ, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_XYZ, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_XYZ, X: Standard_Real, Y: Standard_Real, Z: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_XYZ, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_XYZ, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_XYZ, Y: Standard_Real)  {.importcpp: "SetY".}
proc SetZ*(this: gp_XYZ, Z: Standard_Real)  {.importcpp: "SetZ".}
proc Coord*(this: gp_XYZ, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
#proc ChangeCoord*(this: gp_XYZ, theIndex: Standard_Integer): Standard_Real &  {.importcpp: "ChangeCoord".}
proc Coord*(this: gp_XYZ, X: Standard_Real, Y: Standard_Real, Z: Standard_Real)  {.importcpp: "Coord".}
#proc GetData*(this: gp_XYZ): const Standard_Real *  {.importcpp: "GetData".}
#proc ChangeData*(this: gp_XYZ): Standard_Real *  {.importcpp: "ChangeData".}
proc X*(this: gp_XYZ): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_XYZ): Standard_Real  {.importcpp: "Y".}
proc Z*(this: gp_XYZ): Standard_Real  {.importcpp: "Z".}
proc Modulus*(this: gp_XYZ): Standard_Real  {.importcpp: "Modulus".}
proc SquareModulus*(this: gp_XYZ): Standard_Real  {.importcpp: "SquareModulus".}
proc IsEqual*(this: gp_XYZ, Other: gp_XYZ, Tolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc Add*(this: gp_XYZ, Other: gp_XYZ)  {.importcpp: "Add".}
#proc operator+=*(this: gp_XYZ, Other: gp_XYZ)  {.importcpp: "operator+=".}
proc Added*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "Added".}
#proc operator+*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "operator+".}
proc Cross*(this: gp_XYZ, Right: gp_XYZ)  {.importcpp: "Cross".}
#proc operator^=*(this: gp_XYZ, Right: gp_XYZ)  {.importcpp: "operator^=".}
proc Crossed*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "Crossed".}
#proc operator^*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "operator^".}
proc CrossMagnitude*(this: gp_XYZ, Right: gp_XYZ): Standard_Real  {.importcpp: "CrossMagnitude".}
proc CrossSquareMagnitude*(this: gp_XYZ, Right: gp_XYZ): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
proc CrossCross*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ)  {.importcpp: "CrossCross".}
proc CrossCrossed*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ): gp_XYZ  {.importcpp: "CrossCrossed".}
proc Divide*(this: gp_XYZ, Scalar: Standard_Real)  {.importcpp: "Divide".}
#proc operator/=*(this: gp_XYZ, Scalar: Standard_Real)  {.importcpp: "operator/=".}
proc Divided*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "Divided".}
#proc operator/*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "operator/".}
proc Dot*(this: gp_XYZ, Other: gp_XYZ): Standard_Real  {.importcpp: "Dot".}
#proc operator**(this: gp_XYZ, Other: gp_XYZ): Standard_Real  {.importcpp: "operator*".}
proc DotCross*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ): Standard_Real  {.importcpp: "DotCross".}
proc Multiply*(this: gp_XYZ, Scalar: Standard_Real)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_XYZ, Scalar: Standard_Real)  {.importcpp: "operator*=".}
proc Multiply*(this: gp_XYZ, Other: gp_XYZ)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_XYZ, Other: gp_XYZ)  {.importcpp: "operator*=".}
proc Multiply*(this: gp_XYZ, Matrix: gp_Mat)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_XYZ, Matrix: gp_Mat)  {.importcpp: "operator*=".}
proc Multiplied*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "Multiplied".}
#proc operator**(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "operator*".}
proc Multiplied*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "Multiplied".}
proc Multiplied*(this: gp_XYZ, Matrix: gp_Mat): gp_XYZ  {.importcpp: "Multiplied".}
#proc operator**(this: gp_XYZ, Matrix: gp_Mat): gp_XYZ  {.importcpp: "operator*".}
proc Normalize*(this: gp_XYZ)  {.importcpp: "Normalize".}
proc Normalized*(this: gp_XYZ): gp_XYZ  {.importcpp: "Normalized".}
proc Reverse*(this: gp_XYZ)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_XYZ): gp_XYZ  {.importcpp: "Reversed".}
proc Subtract*(this: gp_XYZ, Right: gp_XYZ)  {.importcpp: "Subtract".}
#proc operator-=*(this: gp_XYZ, Right: gp_XYZ)  {.importcpp: "operator-=".}
proc Subtracted*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "Subtracted".}
#proc operator-*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "operator-".}
proc SetLinearForm*(this: gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ, A3: Standard_Real, XYZ3: gp_XYZ, XYZ4: gp_XYZ)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ, A3: Standard_Real, XYZ3: gp_XYZ)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ, XYZ3: gp_XYZ)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XYZ, XYZ1: gp_XYZ, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
#proc DumpJson*(this: gp_XYZ, theOStream: Standard_OStream, theDepth: Standard_Integer)  {.importcpp: "DumpJson".}
{.pop.} # header: "gp_XYZ.hxx
