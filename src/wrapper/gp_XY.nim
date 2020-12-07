{.push header: "gp_XY.hxx".}


# Constructors and methods
proc constructor_gp_XY*(): gp_XY {.constructor,importcpp: "gp_XY".}
proc constructor_gp_XY*(X: Standard_Real, Y: Standard_Real): gp_XY {.constructor,importcpp: "gp_XY".}
# proc operator new*(this: gp_XY, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_XY, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_XY, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_XY, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_XY, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_XY, void *, void *)  {.importcpp: "operator delete".}
proc SetCoord*(this: gp_XY, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
proc SetCoord*(this: gp_XY, X: Standard_Real, Y: Standard_Real)  {.importcpp: "SetCoord".}
proc SetX*(this: gp_XY, X: Standard_Real)  {.importcpp: "SetX".}
proc SetY*(this: gp_XY, Y: Standard_Real)  {.importcpp: "SetY".}
proc Coord*(this: gp_XY, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
#proc ChangeCoord*(this: gp_XY, theIndex: Standard_Integer): Standard_Real &  {.importcpp: "ChangeCoord".}
proc Coord*(this: gp_XY, X: Standard_Real, Y: Standard_Real)  {.importcpp: "Coord".}
proc X*(this: gp_XY): Standard_Real  {.importcpp: "X".}
proc Y*(this: gp_XY): Standard_Real  {.importcpp: "Y".}
proc Modulus*(this: gp_XY): Standard_Real  {.importcpp: "Modulus".}
proc SquareModulus*(this: gp_XY): Standard_Real  {.importcpp: "SquareModulus".}
proc IsEqual*(this: gp_XY, Other: gp_XY, Tolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
proc Add*(this: gp_XY, Other: gp_XY)  {.importcpp: "Add".}
#proc operator+=*(this: gp_XY, Other: gp_XY)  {.importcpp: "operator+=".}
proc Added*(this: gp_XY, Other: gp_XY): gp_XY  {.importcpp: "Added".}
#proc operator+*(this: gp_XY, Other: gp_XY): gp_XY  {.importcpp: "operator+".}
proc Crossed*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "Crossed".}
#proc operator^*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "operator^".}
proc CrossMagnitude*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "CrossMagnitude".}
proc CrossSquareMagnitude*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
proc Divide*(this: gp_XY, Scalar: Standard_Real)  {.importcpp: "Divide".}
#proc operator/=*(this: gp_XY, Scalar: Standard_Real)  {.importcpp: "operator/=".}
proc Divided*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "Divided".}
#proc operator/*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "operator/".}
proc Dot*(this: gp_XY, Other: gp_XY): Standard_Real  {.importcpp: "Dot".}
#proc operator**(this: gp_XY, Other: gp_XY): Standard_Real  {.importcpp: "operator*".}
proc Multiply*(this: gp_XY, Scalar: Standard_Real)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_XY, Scalar: Standard_Real)  {.importcpp: "operator*=".}
proc Multiply*(this: gp_XY, Other: gp_XY)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_XY, Other: gp_XY)  {.importcpp: "operator*=".}
proc Multiply*(this: gp_XY, Matrix: gp_Mat2d)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_XY, Matrix: gp_Mat2d)  {.importcpp: "operator*=".}
proc Multiplied*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "Multiplied".}
#proc operator**(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "operator*".}
proc Multiplied*(this: gp_XY, Other: gp_XY): gp_XY  {.importcpp: "Multiplied".}
proc Multiplied*(this: gp_XY, Matrix: gp_Mat2d): gp_XY  {.importcpp: "Multiplied".}
#proc operator**(this: gp_XY, Matrix: gp_Mat2d): gp_XY  {.importcpp: "operator*".}
proc Normalize*(this: gp_XY)  {.importcpp: "Normalize".}
proc Normalized*(this: gp_XY): gp_XY  {.importcpp: "Normalized".}
proc Reverse*(this: gp_XY)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_XY): gp_XY  {.importcpp: "Reversed".}
#proc operator-*(this: gp_XY): gp_XY  {.importcpp: "operator-".}
proc SetLinearForm*(this: gp_XY, A1: Standard_Real, XY1: gp_XY, A2: Standard_Real, XY2: gp_XY)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XY, A1: Standard_Real, XY1: gp_XY, A2: Standard_Real, XY2: gp_XY, XY3: gp_XY)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XY, A1: Standard_Real, XY1: gp_XY, XY2: gp_XY)  {.importcpp: "SetLinearForm".}
proc SetLinearForm*(this: gp_XY, XY1: gp_XY, XY2: gp_XY)  {.importcpp: "SetLinearForm".}
proc Subtract*(this: gp_XY, Right: gp_XY)  {.importcpp: "Subtract".}
#proc operator-=*(this: gp_XY, Right: gp_XY)  {.importcpp: "operator-=".}
proc Subtracted*(this: gp_XY, Right: gp_XY): gp_XY  {.importcpp: "Subtracted".}
#proc operator-*(this: gp_XY, Right: gp_XY): gp_XY  {.importcpp: "operator-".}
{.pop.} # header: "gp_XY.hxx
