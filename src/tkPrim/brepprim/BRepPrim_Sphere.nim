{.push header: "BRepPrim_Sphere.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Sphere*(Radius: cdouble): BRepPrim_Sphere {.constructor,importcpp: "BRepPrim_Sphere(@)".}
  ## Creates a Sphere at origin with Radius. The axes of the sphere are the
  ## reference axes. An error is raised if the radius is < Resolution.

proc constructor_BRepPrim_Sphere*(Center: gp_Pnt, Radius: cdouble): BRepPrim_Sphere {.constructor,importcpp: "BRepPrim_Sphere(@)".}
  ## Creates a Sphere with Center and Radius. Axes are the referrence axes.
  ## This is the STEP constructor.

proc constructor_BRepPrim_Sphere*(Axes: gp_Ax2, Radius: cdouble): BRepPrim_Sphere {.constructor,importcpp: "BRepPrim_Sphere(@)".}
  ## Creates a sphere with given axes system.
#[
proc ` new`*(this: var BRepPrim_Sphere, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Sphere, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Sphere, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Sphere, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Sphere, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Sphere, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc makeEmptyLateralFace*(this: BRepPrim_Sphere): TopoDS_Face  {.importcpp: "MakeEmptyLateralFace".}
  ## The surface normal should be directed towards the outside.

proc setMeridian*(this: var BRepPrim_Sphere)  {.importcpp: "SetMeridian".}

{.pop.} # header: "BRepPrim_Sphere.hxx
