{.push header: "BRepPrim_Torus.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Torus*(Position: gp_Ax2, Major: cdouble, Minor: cdouble): BRepPrim_Torus {.constructor,importcpp: "BRepPrim_Torus(@)".}
  ## the STEP definition Position : center and axes Major, Minor : Radii

proc constructor_BRepPrim_Torus*(Major: cdouble, Minor: cdouble): BRepPrim_Torus {.constructor,importcpp: "BRepPrim_Torus(@)".}
  ## Torus centered at origin

proc constructor_BRepPrim_Torus*(Center: gp_Pnt, Major: cdouble, Minor: cdouble): BRepPrim_Torus {.constructor,importcpp: "BRepPrim_Torus(@)".}
  ## Torus at Center
#[
proc ` new`*(this: var BRepPrim_Torus, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Torus, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Torus, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Torus, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Torus, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Torus, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc makeEmptyLateralFace*(this: BRepPrim_Torus): TopoDS_Face  {.importcpp: "MakeEmptyLateralFace".}
  ## The surface normal should be directed towards the outside.

proc setMeridian*(this: var BRepPrim_Torus)  {.importcpp: "SetMeridian".}

{.pop.} # header: "BRepPrim_Torus.hxx
