{.push header: "BRepPrim_Cone.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Cone*(Angle: cdouble, Position: gp_Ax2, Height: cdouble, Radius: cdouble): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## the STEP definition Angle = semi-angle of the cone Position : the
  ## coordinate system Height : height of the cone. Radius : radius of
  ## truncated face at z = 0

proc constructor_BRepPrim_Cone*(Angle: cdouble): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## infinite cone at origin on Z negative

proc constructor_BRepPrim_Cone*(Angle: cdouble, Apex: gp_Pnt): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## infinite cone at Apex on Z negative

proc constructor_BRepPrim_Cone*(Angle: cdouble, Axes: gp_Ax2): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## infinite cone with Axes

proc constructor_BRepPrim_Cone*(R1: cdouble, R2: cdouble, H: cdouble): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## create a Cone at origin on Z axis, of height H, radius R1 at Z = 0, R2
  ## at Z = H, X is the origin of angles. If R1 or R2 is 0 there is an
  ## apex. Otherwise, it is a truncated cone.

proc constructor_BRepPrim_Cone*(Center: gp_Pnt, R1: cdouble, R2: cdouble, H: cdouble): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## same as above but at a given point

proc constructor_BRepPrim_Cone*(Axes: gp_Ax2, R1: cdouble, R2: cdouble, H: cdouble): BRepPrim_Cone {.constructor,importcpp: "BRepPrim_Cone(@)".}
  ## same as above with given axes system.
#[
proc ` new`*(this: var BRepPrim_Cone, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Cone, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Cone, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Cone, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Cone, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Cone, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc makeEmptyLateralFace*(this: BRepPrim_Cone): TopoDS_Face  {.importcpp: "MakeEmptyLateralFace".}
  ## The surface normal should be directed towards the outside.

proc setMeridian*(this: var BRepPrim_Cone)  {.importcpp: "SetMeridian".}

proc setParameters*(this: var BRepPrim_Cone, R1: cdouble, R2: cdouble, H: cdouble)  {.importcpp: "SetParameters".}

{.pop.} # header: "BRepPrim_Cone.hxx
