{.push header: "gp_Ax1.hxx".}


# Constructors and methods
proc constructor_gp_Ax1*(): gp_Ax1 {.constructor,importcpp: "gp_Ax1".}
proc constructor_gp_Ax1(P: gp_Pnt, V: gp_Dir): gp_Ax1 {.constructor,importcpp: "gp_Ax1(@)".}
# proc operator new*(this: gp_Ax1, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Ax1, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp_Ax1, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp_Ax1, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp_Ax1, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp_Ax1, void *, void *)  {.importcpp: "operator delete".}
proc SetDirection*(this: gp_Ax1, V: gp_Dir)  {.importcpp: "SetDirection".}
proc SetLocation*(this: gp_Ax1, P: gp_Pnt)  {.importcpp: "SetLocation".}
#proc Direction*(this: gp_Ax1): const gp_Dir &  {.importcpp: "Direction".}
#proc Location*(this: gp_Ax1): const gp_Pnt &  {.importcpp: "Location".}
proc IsCoaxial*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: Standard_Real, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsCoaxial".}
proc IsNormal*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
proc IsOpposite*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
proc IsParallel*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
proc Angle*(this: gp_Ax1, Other: gp_Ax1): Standard_Real  {.importcpp: "Angle".}
proc Reverse*(this: gp_Ax1)  {.importcpp: "Reverse".}
proc Reversed*(this: gp_Ax1): gp_Ax1  {.importcpp: "Reversed".}
proc Mirror*(this: gp_Ax1, P: gp_Pnt)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Ax1, P: gp_Pnt): gp_Ax1  {.importcpp: "Mirrored".}
proc Mirror*(this: gp_Ax1, A1: gp_Ax1)  {.importcpp: "Mirror".}
proc Mirrored*(this: gp_Ax1, A1: gp_Ax1): gp_Ax1  {.importcpp: "Mirrored".}
#proc Mirror*(this: gp_Ax1, A2: gp_Ax2)  {.importcpp: "Mirror".}
#proc Mirrored*(this: gp_Ax1, A2: gp_Ax2): gp_Ax1  {.importcpp: "Mirrored".}
proc Rotate*(this: gp_Ax1, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}
proc Rotated*(this: gp_Ax1, A1: gp_Ax1, Ang: Standard_Real): gp_Ax1  {.importcpp: "Rotated".}
proc Scale*(this: gp_Ax1, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}
proc Scaled*(this: gp_Ax1, P: gp_Pnt, S: Standard_Real): gp_Ax1  {.importcpp: "Scaled".}
proc Transform*(this: gp_Ax1, T: gp_Trsf)  {.importcpp: "Transform".}
proc Transformed*(this: gp_Ax1, T: gp_Trsf): gp_Ax1  {.importcpp: "Transformed".}
proc Translate*(this: gp_Ax1, V: gp_Vec)  {.importcpp: "Translate".}
proc Translated*(this: gp_Ax1, V: gp_Vec): gp_Ax1  {.importcpp: "Translated".}
proc Translate*(this: gp_Ax1, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}
proc Translated*(this: gp_Ax1, P1: gp_Pnt, P2: gp_Pnt): gp_Ax1  {.importcpp: "Translated".}
{.pop.} # header: "gp_Ax1.hxx

#--------------
proc Ax1*(p: gp_Pnt, v: gp_Dir):gp_Ax1 =
  constructor_gp_Ax1(p,v)