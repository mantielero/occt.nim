{.push header: "gp_Mat2d.hxx".}


# Constructors and methods
proc constructor_gp_Mat2d*(): gp_Mat2d {.constructor,importcpp: "gp_Mat2d".}
proc constructor_gp_Mat2d*(Col1: gp_XY, Col2: gp_XY): gp_Mat2d {.constructor,importcpp: "gp_Mat2d".}
# proc operator new*(this: gp_Mat2d, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Mat2d, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Mat2d, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Mat2d, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Mat2d, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Mat2d, void *, void *)  {.importcpp: "operator delete".}
proc SetCol*(this: gp_Mat2d, Col: Standard_Integer, Value: gp_XY)  {.importcpp: "SetCol".}
proc SetCols*(this: gp_Mat2d, Col1: gp_XY, Col2: gp_XY)  {.importcpp: "SetCols".}
proc SetDiagonal*(this: gp_Mat2d, X1: Standard_Real, X2: Standard_Real)  {.importcpp: "SetDiagonal".}
proc SetIdentity*(this: gp_Mat2d)  {.importcpp: "SetIdentity".}
proc SetRotation*(this: gp_Mat2d, Ang: Standard_Real)  {.importcpp: "SetRotation".}
proc SetRow*(this: gp_Mat2d, Row: Standard_Integer, Value: gp_XY)  {.importcpp: "SetRow".}
proc SetRows*(this: gp_Mat2d, Row1: gp_XY, Row2: gp_XY)  {.importcpp: "SetRows".}
proc SetScale*(this: gp_Mat2d, S: Standard_Real)  {.importcpp: "SetScale".}
proc SetValue*(this: gp_Mat2d, Row: Standard_Integer, Col: Standard_Integer, Value: Standard_Real)  {.importcpp: "SetValue".}
proc Column*(this: gp_Mat2d, Col: Standard_Integer): gp_XY  {.importcpp: "Column".}
proc Determinant*(this: gp_Mat2d): Standard_Real  {.importcpp: "Determinant".}
proc Diagonal*(this: gp_Mat2d): gp_XY  {.importcpp: "Diagonal".}
proc Row*(this: gp_Mat2d, Row: Standard_Integer): gp_XY  {.importcpp: "Row".}
#proc Value*(this: gp_Mat2d, Row: Standard_Integer, Col: Standard_Integer): const Standard_Real &  {.importcpp: "Value".}
#proc operator()*(this: gp_Mat2d, Row: Standard_Integer, Col: Standard_Integer): const Standard_Real &  {.importcpp: "operator()".}
#proc ChangeValue*(this: gp_Mat2d, Row: Standard_Integer, Col: Standard_Integer): Standard_Real &  {.importcpp: "ChangeValue".}
#proc operator()*(this: gp_Mat2d, Row: Standard_Integer, Col: Standard_Integer): Standard_Real &  {.importcpp: "operator()".}
proc IsSingular*(this: gp_Mat2d): Standard_Boolean  {.importcpp: "IsSingular".}
proc Add*(this: gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "Add".}
#proc operator+=*(this: gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "operator+=".}
proc Added*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "Added".}
#proc operator+*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "operator+".}
proc Divide*(this: gp_Mat2d, Scalar: Standard_Real)  {.importcpp: "Divide".}
#proc operator/=*(this: gp_Mat2d, Scalar: Standard_Real)  {.importcpp: "operator/=".}
proc Divided*(this: gp_Mat2d, Scalar: Standard_Real): gp_Mat2d  {.importcpp: "Divided".}
#proc operator/*(this: gp_Mat2d, Scalar: Standard_Real): gp_Mat2d  {.importcpp: "operator/".}
proc Invert*(this: gp_Mat2d)  {.importcpp: "Invert".}
proc Inverted*(this: gp_Mat2d): gp_Mat2d  {.importcpp: "Inverted".}
proc Multiplied*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "operator*".}
proc Multiply*(this: gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "Multiply".}
proc PreMultiply*(this: gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "PreMultiply".}
proc Multiplied*(this: gp_Mat2d, Scalar: Standard_Real): gp_Mat2d  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Mat2d, Scalar: Standard_Real): gp_Mat2d  {.importcpp: "operator*".}
proc Multiply*(this: gp_Mat2d, Scalar: Standard_Real)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Mat2d, Scalar: Standard_Real)  {.importcpp: "operator*=".}
proc Power*(this: gp_Mat2d, N: Standard_Integer)  {.importcpp: "Power".}
proc Powered*(this: gp_Mat2d, N: Standard_Integer): gp_Mat2d  {.importcpp: "Powered".}
proc Subtract*(this: gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "Subtract".}
#proc operator-=*(this: gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "operator-=".}
proc Subtracted*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "Subtracted".}
#proc operator-*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "operator-".}
proc Transpose*(this: gp_Mat2d)  {.importcpp: "Transpose".}
proc Transposed*(this: gp_Mat2d): gp_Mat2d  {.importcpp: "Transposed".}
{.pop.} # header: "gp_Mat2d.hxx
