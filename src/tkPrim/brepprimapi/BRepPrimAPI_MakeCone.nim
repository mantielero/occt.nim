{.push header: "BRepPrimAPI_MakeCone.hxx".}


# Constructors and methods
proc MakeCone*(R1: cdouble, R2: cdouble, H: cdouble): BRepPrimAPI_MakeCone {.constructor,importcpp: "BRepPrimAPI_MakeCone(@)".}
  ## Make a cone of height H radius R1 in the plane z = 0, R2 in the plane
  ## Z = H. R1 and R2 may be null.

proc MakeCone*(R1: cdouble, R2: cdouble, H: cdouble, angle: cdouble): BRepPrimAPI_MakeCone {.constructor,importcpp: "BRepPrimAPI_MakeCone(@)".}
  ## Make a cone of height H radius R1 in the plane z = 0, R2 in the plane
  ## Z = H. R1 and R2 may be null. Take a section of <angle>

proc MakeCone*(Axes: gp_Ax2, R1: cdouble, R2: cdouble, H: cdouble): BRepPrimAPI_MakeCone {.constructor,importcpp: "BRepPrimAPI_MakeCone(@)".}
  ## Make a cone of height H radius R1 in the plane z = 0, R2 in the plane
  ## Z = H. R1 and R2 may be null.

proc MakeCone*(Axes: gp_Ax2, R1: cdouble, R2: cdouble, H: cdouble, angle: cdouble): BRepPrimAPI_MakeCone {.constructor,importcpp: "BRepPrimAPI_MakeCone(@)".}
  ## Make a cone of height H radius R1 in the plane z = 0, R2 in the plane
  ## Z = H. R1 and R2 may be null. Take a section of <angle> Constructs a
  ## cone, or a portion of a cone, of height H, and radius R1 in the plane
  ## z = 0 and R2 in the plane z = H. The result is a sharp cone if R1 or
  ## R2 is equal to 0. The cone is constructed about the "Z Axis" of
  ## either: - the global coordinate system, or - the local coordinate
  ## system Axes. It is limited in these coordinate systems as follows: -
  ## in the v parametric direction (the Z coordinate), by the two parameter
  ## values 0 and H, - and in the u parametric direction (defined by the
  ## angle of rotation around the Z axis), in the case of a portion of a
  ## cone, by the two parameter values 0 and angle. Angle is given in
  ## radians. The resulting shape is composed of: - a lateral conical face
  ## - two planar faces in the planes z = 0 and z = H, or only one planar
  ## face in one of these two planes if a radius value is null (in the case
  ## of a complete cone, these faces are circles), and - and in the case of
  ## a portion of a cone, two planar faces to close the shape. (either two
  ## parallelograms or two triangles, in the planes u = 0 and u = angle).
  ## Exceptions Standard_DomainError if: - H is less than or equal to
  ## Precision::Confusion(), or - the half-angle at the apex of the cone,
  ## defined by R1, R2 and H, is less than Precision::Confusion()/H, or
  ## greater than (Pi/2)-Precision::Confusion()/H.f
#[
proc ` new`*(this: var BRepPrimAPI_MakeCone, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeCone, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeCone, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeCone, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeCone, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeCone, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc oneAxis*(this: var BRepPrimAPI_MakeCone): pointer  {.importcpp: "OneAxis".} #pointer
  ## Returns the algorithm.

proc cone*(this: var BRepPrimAPI_MakeCone): BRepPrim_Cone  {.importcpp: "Cone".} # BRepPrimAPI_MakeCone
  ## Returns the algorithm.

{.pop.} # header: "BRepPrimAPI_MakeCone.hxx
