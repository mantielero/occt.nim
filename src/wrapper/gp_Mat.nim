{.push header: "gp_Mat.hxx".}


# Constructors and methods
proc constructor_gp_Mat*(): gp_Mat {.constructor,importcpp: "gp_Mat".}
proc constructor_gp_Mat*(a11: Standard_Real, a12: Standard_Real, a13: Standard_Real, a21: Standard_Real, a22: Standard_Real, a23: Standard_Real, a31: Standard_Real, a32: Standard_Real, a33: Standard_Real): gp_Mat {.constructor,importcpp: "gp_Mat".}
proc constructor_gp_Mat*(Col1: gp_XYZ, Col2: gp_XYZ, Col3: gp_XYZ): gp_Mat {.constructor,importcpp: "gp_Mat".}
# proc operator new*(this: gp_Mat, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Mat, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Mat, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Mat, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Mat, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Mat, void *, void *)  {.importcpp: "operator delete".}
proc SetCol*(this: gp_Mat, Col: Standard_Integer, Value: gp_XYZ)  {.importcpp: "SetCol".}
proc SetCols*(this: gp_Mat, Col1: gp_XYZ, Col2: gp_XYZ, Col3: gp_XYZ)  {.importcpp: "SetCols".}
proc SetCross*(this: gp_Mat, Ref: gp_XYZ)  {.importcpp: "SetCross".}
proc SetDiagonal*(this: gp_Mat, X1: Standard_Real, X2: Standard_Real, X3: Standard_Real)  {.importcpp: "SetDiagonal".}
proc SetDot*(this: gp_Mat, Ref: gp_XYZ)  {.importcpp: "SetDot".}
proc SetIdentity*(this: gp_Mat)  {.importcpp: "SetIdentity".}
proc SetRotation*(this: gp_Mat, Axis: gp_XYZ, Ang: Standard_Real)  {.importcpp: "SetRotation".}
proc SetRow*(this: gp_Mat, Row: Standard_Integer, Value: gp_XYZ)  {.importcpp: "SetRow".}
proc SetRows*(this: gp_Mat, Row1: gp_XYZ, Row2: gp_XYZ, Row3: gp_XYZ)  {.importcpp: "SetRows".}
proc SetScale*(this: gp_Mat, S: Standard_Real)  {.importcpp: "SetScale".}
proc SetValue*(this: gp_Mat, Row: Standard_Integer, Col: Standard_Integer, Value: Standard_Real)  {.importcpp: "SetValue".}
proc Column*(this: gp_Mat, Col: Standard_Integer): gp_XYZ  {.importcpp: "Column".}
proc Determinant*(this: gp_Mat): Standard_Real  {.importcpp: "Determinant".}
proc Diagonal*(this: gp_Mat): gp_XYZ  {.importcpp: "Diagonal".}
proc Row*(this: gp_Mat, Row: Standard_Integer): gp_XYZ  {.importcpp: "Row".}
#proc Value*(this: gp_Mat, Row: Standard_Integer, Col: Standard_Integer): const Standard_Real &  {.importcpp: "Value".}
#proc operator()*(this: gp_Mat, Row: Standard_Integer, Col: Standard_Integer): const Standard_Real &  {.importcpp: "operator()".}
#proc ChangeValue*(this: gp_Mat, Row: Standard_Integer, Col: Standard_Integer): Standard_Real &  {.importcpp: "ChangeValue".}
#proc operator()*(this: gp_Mat, Row: Standard_Integer, Col: Standard_Integer): Standard_Real &  {.importcpp: "operator()".}
proc IsSingular*(this: gp_Mat): Standard_Boolean  {.importcpp: "IsSingular".}
proc Add*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "Add".}
#proc operator+=*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "operator+=".}
proc Added*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "Added".}
#proc operator+*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "operator+".}
proc Divide*(this: gp_Mat, Scalar: Standard_Real)  {.importcpp: "Divide".}
#proc operator/=*(this: gp_Mat, Scalar: Standard_Real)  {.importcpp: "operator/=".}
proc Divided*(this: gp_Mat, Scalar: Standard_Real): gp_Mat  {.importcpp: "Divided".}
#proc operator/*(this: gp_Mat, Scalar: Standard_Real): gp_Mat  {.importcpp: "operator/".}
proc Invert*(this: gp_Mat)  {.importcpp: "Invert".}
proc Inverted*(this: gp_Mat): gp_Mat  {.importcpp: "Inverted".}
proc Multiplied*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "operator*".}
proc Multiply*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "operator*=".}
proc PreMultiply*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "PreMultiply".}
proc Multiplied*(this: gp_Mat, Scalar: Standard_Real): gp_Mat  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Mat, Scalar: Standard_Real): gp_Mat  {.importcpp: "operator*".}
proc Multiply*(this: gp_Mat, Scalar: Standard_Real)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Mat, Scalar: Standard_Real)  {.importcpp: "operator*=".}
proc Power*(this: gp_Mat, N: Standard_Integer)  {.importcpp: "Power".}
proc Powered*(this: gp_Mat, N: Standard_Integer): gp_Mat  {.importcpp: "Powered".}
proc Subtract*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "Subtract".}
#proc operator-=*(this: gp_Mat, Other: gp_Mat)  {.importcpp: "operator-=".}
proc Subtracted*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "Subtracted".}
#proc operator-*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "operator-".}
proc Transpose*(this: gp_Mat)  {.importcpp: "Transpose".}
proc Transposed*(this: gp_Mat): gp_Mat  {.importcpp: "Transposed".}
#proc DumpJson*(this: gp_Mat, theOStream: Standard_OStream, theDepth: Standard_Integer)  {.importcpp: "DumpJson".}
{.pop.} # header: "gp_Mat.hxx
