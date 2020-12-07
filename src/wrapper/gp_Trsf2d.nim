{.push header: "gp_Trsf2d.hxx".}


# Constructors and methods
proc constructor_gp_Trsf2d*(): gp_Trsf2d {.constructor,importcpp: "gp_Trsf2d".}
proc constructor_gp_Trsf2d*(T: gp_Trsf): gp_Trsf2d {.constructor,importcpp: "gp_Trsf2d".}
# proc operator new*(this: gp_Trsf2d, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Trsf2d, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Trsf2d, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Trsf2d, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Trsf2d, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Trsf2d, void *, void *)  {.importcpp: "operator delete".}
proc SetMirror*(this: gp_Trsf2d, P: gp_Pnt2d)  {.importcpp: "SetMirror".}
proc SetMirror*(this: gp_Trsf2d, A: gp_Ax2d)  {.importcpp: "SetMirror".}
proc SetRotation*(this: gp_Trsf2d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "SetRotation".}
proc SetScale*(this: gp_Trsf2d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "SetScale".}
proc SetTransformation*(this: gp_Trsf2d, FromSystem1: gp_Ax2d, ToSystem2: gp_Ax2d)  {.importcpp: "SetTransformation".}
proc SetTransformation*(this: gp_Trsf2d, ToSystem: gp_Ax2d)  {.importcpp: "SetTransformation".}
proc SetTranslation*(this: gp_Trsf2d, V: gp_Vec2d)  {.importcpp: "SetTranslation".}
proc SetTranslation*(this: gp_Trsf2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "SetTranslation".}
proc SetTranslationPart*(this: gp_Trsf2d, V: gp_Vec2d)  {.importcpp: "SetTranslationPart".}
proc SetScaleFactor*(this: gp_Trsf2d, S: Standard_Real)  {.importcpp: "SetScaleFactor".}
proc IsNegative*(this: gp_Trsf2d): Standard_Boolean  {.importcpp: "IsNegative".}
#proc Form*(this: gp_Trsf2d): gp_TrsfForm  {.importcpp: "Form".}
proc ScaleFactor*(this: gp_Trsf2d): Standard_Real  {.importcpp: "ScaleFactor".}
#proc TranslationPart*(this: gp_Trsf2d): const gp_XY &  {.importcpp: "TranslationPart".}
proc VectorialPart*(this: gp_Trsf2d): gp_Mat2d  {.importcpp: "VectorialPart".}
#proc HVectorialPart*(this: gp_Trsf2d): const gp_Mat2d &  {.importcpp: "HVectorialPart".}
proc RotationPart*(this: gp_Trsf2d): Standard_Real  {.importcpp: "RotationPart".}
proc Value*(this: gp_Trsf2d, Row: Standard_Integer, Col: Standard_Integer): Standard_Real  {.importcpp: "Value".}
proc Invert*(this: gp_Trsf2d)  {.importcpp: "Invert".}
proc Inverted*(this: gp_Trsf2d): gp_Trsf2d  {.importcpp: "Inverted".}
proc Multiplied*(this: gp_Trsf2d, T: gp_Trsf2d): gp_Trsf2d  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Trsf2d, T: gp_Trsf2d): gp_Trsf2d  {.importcpp: "operator*".}
proc Multiply*(this: gp_Trsf2d, T: gp_Trsf2d)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Trsf2d, T: gp_Trsf2d)  {.importcpp: "operator*=".}
proc PreMultiply*(this: gp_Trsf2d, T: gp_Trsf2d)  {.importcpp: "PreMultiply".}
proc Power*(this: gp_Trsf2d, N: Standard_Integer)  {.importcpp: "Power".}
proc Powered*(this: gp_Trsf2d, N: Standard_Integer): gp_Trsf2d  {.importcpp: "Powered".}
proc Transforms*(this: gp_Trsf2d, X: Standard_Real, Y: Standard_Real)  {.importcpp: "Transforms".}
proc Transforms*(this: gp_Trsf2d, Coord: gp_XY)  {.importcpp: "Transforms".}
proc SetValues*(this: gp_Trsf2d, a11: Standard_Real, a12: Standard_Real, a13: Standard_Real, a21: Standard_Real, a22: Standard_Real, a23: Standard_Real)  {.importcpp: "SetValues".}
proc Orthogonalize*(this: gp_Trsf2d)  {.importcpp: "Orthogonalize".}
{.pop.} # header: "gp_Trsf2d.hxx
