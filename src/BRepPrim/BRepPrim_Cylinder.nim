{.push header: "BRepPrim_Cylinder.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Cylinder*(Position: gp_Ax2, Radius: cdouble, Height: cdouble): BRepPrim_Cylinder {.constructor,importcpp: "BRepPrim_Cylinder(@)".}
  ## the STEP definition Position : center of a Face and Axis Radius :
  ## radius of cylinder Height : distance between faces on positive side

proc constructor_BRepPrim_Cylinder*(Radius: cdouble): BRepPrim_Cylinder {.constructor,importcpp: "BRepPrim_Cylinder(@)".}
  ## infinite Cylinder at origin on Z negative

proc constructor_BRepPrim_Cylinder*(Center: gp_Pnt, Radius: cdouble): BRepPrim_Cylinder {.constructor,importcpp: "BRepPrim_Cylinder(@)".}
  ## infinite Cylinder at Center on Z negative

proc constructor_BRepPrim_Cylinder*(Axes: gp_Ax2, Radius: cdouble): BRepPrim_Cylinder {.constructor,importcpp: "BRepPrim_Cylinder(@)".}
  ## infinite Cylinder at Axes on Z negative

proc constructor_BRepPrim_Cylinder*(R: cdouble, H: cdouble): BRepPrim_Cylinder {.constructor,importcpp: "BRepPrim_Cylinder(@)".}
  ## create a Cylinder at origin on Z axis, of height H and radius R Error
  ## : Radius < Resolution H < Resolution H negative

proc constructor_BRepPrim_Cylinder*(Center: gp_Pnt, R: cdouble, H: cdouble): BRepPrim_Cylinder {.constructor,importcpp: "BRepPrim_Cylinder(@)".}
  ## same as above but at a given point
#[
proc ` new`*(this: var BRepPrim_Cylinder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Cylinder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Cylinder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Cylinder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Cylinder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Cylinder, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc makeEmptyLateralFace*(this: BRepPrim_Cylinder): TopoDS_Face  {.importcpp: "MakeEmptyLateralFace".}
  ## The surface normal should be directed towards the outside.

proc setMeridian*(this: var BRepPrim_Cylinder)  {.importcpp: "SetMeridian".}

{.pop.} # header: "BRepPrim_Cylinder.hxx
