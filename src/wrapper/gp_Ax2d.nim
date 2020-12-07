{.push header: "gp_Ax2d.hxx".}


# Constructors and methods
proc constructor_gp_Ax2d*(): gp_Ax2d {.constructor,importcpp: "gp_Ax2d".}
proc constructor_gp_Ax2d*(P: gp_Pnt2d, V: gp_Dir2d): gp_Ax2d {.constructor,importcpp: "gp_Ax2d".}
# proc operator new*(this: gp_Ax2d, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Ax2d, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Ax2d, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Ax2d, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Ax2d, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Ax2d, void *, void *)  {.importcpp: "operator delete".}
proc SetLocation*(this: gp_Ax2d, Locat: gp_Pnt2d)  {.importcpp: "SetLocation".}
proc SetDirection*(this: gp_Ax2d, V: gp_Dir2d)  {.importcpp: "SetDirection".}
#proc Location*(this: gp_Ax2d): const gp_Pnt2d &  {.importcpp: "Location".}
#proc Direction*(this: gp_Ax2d): const gp_Dir2d &  {.importcpp: "Direction".}
proc IsCoaxial*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: Standard_Real, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsCoaxial".}
proc IsNormal*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
proc IsOpposite*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
proc IsParallel*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
proc Angle*(this: gp_Ax2d, Other: gp_Ax2d): Standard_Real  {.importcpp: "Angle".}
proc Reverse*(this: gp_Ax2d)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_Ax2d): gp_Ax2d  {.importcpp: "Reversed".}
proc Mirror*(this: gp_Ax2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Ax2d, P: gp_Pnt2d): gp_Ax2d  {.importcpp: "Mirrored".}
proc Mirror*(this: gp_Ax2d, A: gp_Ax2d)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Ax2d, A: gp_Ax2d): gp_Ax2d  {.importcpp: "Mirrored".}
proc Rotate*(this: gp_Ax2d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "Rotate".}
proc Rotated*(this: gp_Ax2d, P: gp_Pnt2d, Ang: Standard_Real): gp_Ax2d  {.importcpp: "Rotated".}
proc Scale*(this: gp_Ax2d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "Scale".}
proc Scaled*(this: gp_Ax2d, P: gp_Pnt2d, S: Standard_Real): gp_Ax2d  {.importcpp: "Scaled".}
proc Transform*(this: gp_Ax2d, T: gp_Trsf2d)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Ax2d, T: gp_Trsf2d): gp_Ax2d  {.importcpp: "Transformed".}
proc Translate*(this: gp_Ax2d, V: gp_Vec2d)  {.importcpp: "Translate".}
proc Translated*(this: gp_Ax2d, V: gp_Vec2d): gp_Ax2d  {.importcpp: "Translated".}
proc Translate*(this: gp_Ax2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}
proc Translated*(this: gp_Ax2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Ax2d  {.importcpp: "Translated".}
{.pop.} # header: "gp_Ax2d.hxx
