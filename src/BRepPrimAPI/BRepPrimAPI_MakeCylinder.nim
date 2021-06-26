{.push header: "BRepPrimAPI_MakeCylinder.hxx".}


# Constructors and methods
proc MakeCylinder*(R: cdouble, H: cdouble): BRepPrimAPI_MakeCylinder {.constructor,importcpp: "BRepPrimAPI_MakeCylinder(@)".}
  ## Make a cylinder of radius R and length H.

proc MakeCylinder*(R: cdouble, H: cdouble, Angle: cdouble): BRepPrimAPI_MakeCylinder {.constructor,importcpp: "BRepPrimAPI_MakeCylinder(@)".}
  ## Make a cylinder of radius R and length H with angle H.

proc MakeCylinder*(Axes: gp_Ax2, R: cdouble, H: cdouble): BRepPrimAPI_MakeCylinder {.constructor,importcpp: "BRepPrimAPI_MakeCylinder(@)".}
  ## Make a cylinder of radius R and length H.

proc MakeCylinder*(Axes: gp_Ax2, R: cdouble, H: cdouble, Angle: cdouble): BRepPrimAPI_MakeCylinder {.constructor,importcpp: "BRepPrimAPI_MakeCylinder(@)".}
  ## Make a cylinder of radius R and length H with angle H. Constructs - a
  ## cylinder of radius R and height H, or - a portion of cylinder of
  ## radius R and height H, and of the angle Angle defining the missing
  ## portion of the cylinder. The cylinder is constructed about the "Z
  ## Axis" of either: - the global coordinate system, or - the local
  ## coordinate system Axes. It is limited in this coordinate system as
  ## follows: - in the v parametric direction (the Z axis), by the two
  ## parameter values 0 and H, - and in the u parametric direction (the
  ## rotation angle around the Z Axis), in the case of a portion of a
  ## cylinder, by the two parameter values 0 and Angle. Angle is given in
  ## radians. The resulting shape is composed of: - a lateral cylindrical
  ## face, - two planar faces in the planes z = 0 and z = H (in the case of
  ## a complete cylinder, these faces are circles), and - in case of a
  ## portion of a cylinder, two additional planar faces to close the
  ## shape.(two rectangles in the planes u = 0 and u = Angle). Exceptions
  ## Standard_DomainError if: - R is less than or equal to
  ## Precision::Confusion(), or - H is less than or equal to
  ## Precision::Confusion().

#[
proc ` new`*(this: var BRepPrimAPI_MakeCylinder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeCylinder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeCylinder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeCylinder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeCylinder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeCylinder, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc oneAxis*(this: var BRepPrimAPI_MakeCylinder): pointer  {.importcpp: "OneAxis".}
  ## Returns the algorithm.

proc cylinder*(this: var BRepPrimAPI_MakeCylinder): BRepPrim_Cylinder  {.importcpp: "Cylinder".}
  ## Returns the algorithm.

{.pop.} # header: "BRepPrimAPI_MakeCylinder.hxx
