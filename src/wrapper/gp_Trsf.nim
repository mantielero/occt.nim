{.push header: "gp_Trsf.hxx".}


# Constructors and methods
proc constructor_gp_Trsf*(): gp_Trsf {.constructor,importcpp: "gp_Trsf".}
proc constructor_gp_Trsf*(T: gp_Trsf2d): gp_Trsf {.constructor,importcpp: "gp_Trsf".}
# proc operator new*(this: gp_Trsf, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Trsf, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Trsf, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Trsf, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Trsf, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Trsf, void *, void *)  {.importcpp: "operator delete".}
proc SetMirror*(this: gp_Trsf, P: gp_Pnt)  {.importcpp: "SetMirror".}
proc SetMirror*(this: gp_Trsf, A1: gp_Ax1)  {.importcpp: "SetMirror".}
#proc SetMirror*(this: gp_Trsf, A2: gp_Ax2)  {.importcpp: "SetMirror".}
proc StRotation(this: gp_Trsf, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "SetRotation".}
#proc SetRotation*(this: gp_Trsf, R: gp_Quaternion)  {.importcpp: "SetRotation".}
proc SetScale*(this: gp_Trsf, P: gp_Pnt, S: Standard_Real)  {.importcpp: "SetScale".}
#proc SetDisplacement*(this: gp_Trsf, FromSystem1: gp_Ax3, ToSystem2: gp_Ax3)  {.importcpp: "SetDisplacement".}
#proc SetTransformation*(this: gp_Trsf, FromSystem1: gp_Ax3, ToSystem2: gp_Ax3)  {.importcpp: "SetTransformation".}
#proc SetTransformation*(this: gp_Trsf, ToSystem: gp_Ax3)  {.importcpp: "SetTransformation".}
#proc SetTransformation*(this: gp_Trsf, R: gp_Quaternion, T: gp_Vec)  {.importcpp: "SetTransformation".}
proc SetTranslation*(this: gp_Trsf, V: gp_Vec)  {.importcpp: "SetTranslation".}
proc SetTranslation*(this: gp_Trsf, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "SetTranslation".}
proc SetTranslationPart*(this: gp_Trsf, V: gp_Vec)  {.importcpp: "SetTranslationPart".}
proc SetScaleFactor*(this: gp_Trsf, S: Standard_Real)  {.importcpp: "SetScaleFactor".}
#proc SetForm*(this: gp_Trsf, P: gp_TrsfForm)  {.importcpp: "SetForm".}
proc SetValues*(this: gp_Trsf, a11: Standard_Real, a12: Standard_Real, a13: Standard_Real, a14: Standard_Real, a21: Standard_Real, a22: Standard_Real, a23: Standard_Real, a24: Standard_Real, a31: Standard_Real, a32: Standard_Real, a33: Standard_Real, a34: Standard_Real)  {.importcpp: "SetValues".}
proc IsNegative*(this: gp_Trsf): Standard_Boolean  {.importcpp: "IsNegative".}
#proc Form*(this: gp_Trsf): gp_TrsfForm  {.importcpp: "Form".}
proc ScaleFactor*(this: gp_Trsf): Standard_Real  {.importcpp: "ScaleFactor".}
#proc TranslationPart*(this: gp_Trsf): const gp_XYZ &  {.importcpp: "TranslationPart".}
proc GetRotation*(this: gp_Trsf, theAxis: gp_XYZ, theAngle: Standard_Real): Standard_Boolean  {.importcpp: "GetRotation".}
#proc GetRotation*(this: gp_Trsf): gp_Quaternion  {.importcpp: "GetRotation".}
proc VectorialPart*(this: gp_Trsf): gp_Mat  {.importcpp: "VectorialPart".}
#proc HVectorialPart*(this: gp_Trsf): const gp_Mat &  {.importcpp: "HVectorialPart".}
proc Value*(this: gp_Trsf, Row: Standard_Integer, Col: Standard_Integer): Standard_Real  {.importcpp: "Value".}
proc Invert*(this: gp_Trsf)  {.importcpp: "Invert".}
proc Inverted*(this: gp_Trsf): gp_Trsf  {.importcpp: "Inverted".}
proc Multiplied*(this: gp_Trsf, T: gp_Trsf): gp_Trsf  {.importcpp: "Multiplied".}
#proc operator**(this: gp_Trsf, T: gp_Trsf): gp_Trsf  {.importcpp: "operator*".}
proc Multiply*(this: gp_Trsf, T: gp_Trsf)  {.importcpp: "Multiply".}
#proc operator*=*(this: gp_Trsf, T: gp_Trsf)  {.importcpp: "operator*=".}
proc PreMultiply*(this: gp_Trsf, T: gp_Trsf)  {.importcpp: "PreMultiply".}
proc Power*(this: gp_Trsf, N: Standard_Integer)  {.importcpp: "Power".}
proc Powered*(this: gp_Trsf, N: Standard_Integer): gp_Trsf  {.importcpp: "Powered".}
proc Transforms*(this: gp_Trsf, X: Standard_Real, Y: Standard_Real, Z: Standard_Real)  {.importcpp: "Transforms".}
proc Transforms*(this: gp_Trsf, Coord: gp_XYZ)  {.importcpp: "Transforms".}
#proc DumpJson*(this: gp_Trsf, theOStream: Standard_OStream, theDepth: Standard_Integer)  {.importcpp: "DumpJson".}
proc Orthogonalize*(this: gp_Trsf)  {.importcpp: "Orthogonalize".}
{.pop.} # header: "gp_Trsf.hxx

#------
proc SetRotation*(this: gp_Trsf, ax: gp_Ax1, ang: float ) =
  this.StRotation(ax, ang.Standard_Real)