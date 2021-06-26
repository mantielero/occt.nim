{.push header: "BRepPrimAPI_MakeTorus.hxx".}


# Constructors and methods
proc MakeTorus*(R1: cdouble, R2: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a torus of radii R1 R2.

proc MakeTorus*(R1: cdouble, R2: cdouble, angle: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a section of a torus of radii R1 R2.

proc MakeTorus*(R1: cdouble, R2: cdouble, angle1: cdouble, angle2: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a torus of radii R2, R2 with angles on the small circle.

proc MakeTorus*(R1: cdouble, R2: cdouble, angle1: cdouble, angle2: cdouble, angle: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a torus of radii R2, R2 with angles on the small circle.

proc MakeTorus*(Axes: gp_Ax2, R1: cdouble, R2: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a torus of radii R1 R2.

proc MakeTorus*(Axes: gp_Ax2, R1: cdouble, R2: cdouble, angle: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a section of a torus of radii R1 R2.

proc MakeTorus*(Axes: gp_Ax2, R1: cdouble, R2: cdouble, angle1: cdouble, angle2: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a torus of radii R1 R2.

proc MakeTorus*(Axes: gp_Ax2, R1: cdouble, R2: cdouble, angle1: cdouble, angle2: cdouble, angle: cdouble): BRepPrimAPI_MakeTorus {.constructor,importcpp: "BRepPrimAPI_MakeTorus(@)".}
  ## Make a section of a torus of radii R1 R2. For all algorithms The
  ## resulting shape is composed of - a lateral toroidal face, - two
  ## conical faces (defined by the equation v = angle1 and v = angle2) if
  ## the sphere is truncated in the v parametric direction (they may be
  ## cylindrical faces in some particular conditions), and in case of a
  ## portion of torus, two planar faces to close the shape.(in the planes u
  ## = 0 and u = angle). Notes: - The u parameter corresponds to a rotation
  ## angle around the Z axis. - The circle whose radius is equal to the
  ## minor radius, located in the plane defined by the X axis and the Z
  ## axis, centered on the X axis, on its positive side, and positioned at
  ## a distance from the origin equal to the major radius, is the reference
  ## circle of the torus. The rotation around an axis parallel to the Y
  ## axis and passing through the center of the reference circle gives the
  ## v parameter on the reference circle. The X axis gives the origin of
  ## the v parameter. Near 0, as v increases, the Z coordinate decreases.
#[
proc ` new`*(this: var BRepPrimAPI_MakeTorus, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeTorus, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeTorus, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeTorus, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeTorus, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeTorus, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc oneAxis*(this: var BRepPrimAPI_MakeTorus): pointer  {.importcpp: "OneAxis".}
  ## Returns the algorithm.

proc torus*(this: var BRepPrimAPI_MakeTorus): BRepPrim_Torus  {.importcpp: "Torus".}
  ## Returns the algorithm.

{.pop.} # header: "BRepPrimAPI_MakeTorus.hxx
