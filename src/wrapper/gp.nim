{.push header: "gp.hxx".}


# Constructors and methods
# proc operator new*(this: gp, theSize: int)  {.importcpp: "operator new".}
# proc operator delete*(this: gp, theAddress: void *)  {.importcpp: "operator delete".}
# proc operator new[]*(this: gp, theSize: int)  {.importcpp: "operator new[]".}
# proc operator delete[]*(this: gp, theAddress: void *)  {.importcpp: "operator delete[]".}
# proc operator new*(this: gp, int, theAddress: void *)  {.importcpp: "operator new".}
# proc operator delete*(this: gp, void *, void *)  {.importcpp: "operator delete".}
proc Resolution*(this: gp): Standard_Real  {.importcpp: "Resolution".}
# proc Origin*(this: gp): const gp_Pnt &  {.importcpp: "Origin".}
# proc DX*(this: gp): const gp_Dir &  {.importcpp: "DX".}
# proc DY*(this: gp): const gp_Dir &  {.importcpp: "DY".}
# proc DZ*(this: gp): const gp_Dir &  {.importcpp: "DZ".}
# proc OX*(this: gp): const gp_Ax1 &  {.importcpp: "OX".}
# proc OY*(this: gp): const gp_Ax1 &  {.importcpp: "OY".}
# proc OZ*(this: gp): const gp_Ax1 &  {.importcpp: "OZ".}
# proc XOY*(this: gp): const gp_Ax2 &  {.importcpp: "XOY".}
# proc ZOX*(this: gp): const gp_Ax2 &  {.importcpp: "ZOX".}
# proc YOZ*(this: gp): const gp_Ax2 &  {.importcpp: "YOZ".}
# proc Origin2d*(this: gp): const gp_Pnt2d &  {.importcpp: "Origin2d".}
# proc DX2d*(this: gp): const gp_Dir2d &  {.importcpp: "DX2d".}
# proc DY2d*(this: gp): const gp_Dir2d &  {.importcpp: "DY2d".}
# proc OX2d*(this: gp): const gp_Ax2d &  {.importcpp: "OX2d".}
# proc OY2d*(this: gp): const gp_Ax2d &  {.importcpp: "OY2d".}
{.pop.} # header: "gp.hxx
