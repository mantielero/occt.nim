import brepprimapi_types
import ../gp/gp_types
import ../BRepPrim/brepprim_types

{.push header: "BRepPrimAPI_MakeSphere.hxx".}


# Constructors and methods
proc MakeSphere*(R: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(R: cdouble, angle: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(R: cdouble, angle1: cdouble, angle2: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(R: cdouble, angle1: cdouble, angle2: cdouble, angle3: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Center: gp_Pnt, R: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Center: gp_Pnt, R: cdouble, angle: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Center: gp_Pnt, R: cdouble, angle1: cdouble, angle2: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Center: gp_Pnt, R: cdouble, angle1: cdouble, angle2: cdouble, angle3: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Axis: gp_Ax2, R: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Axis: gp_Ax2, R: cdouble, angle: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Axis: gp_Ax2, R: cdouble, angle1: cdouble, angle2: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R.

proc MakeSphere*(Axis: gp_Ax2, R: cdouble, angle1: cdouble, angle2: cdouble, angle3: cdouble): BRepPrimAPI_MakeSphere {.constructor,importcpp: "BRepPrimAPI_MakeSphere(@)".}
  ## Make a sphere of radius R. For all algorithms The resulting shape is
  ## composed of - a lateral spherical face, - two planar faces parallel to
  ## the plane z = 0 if the sphere is truncated in the v parametric
  ## direction, or only one planar face if angle1 is equal to -p/2 or if
  ## angle2 is equal to p/2 (these faces are circles in case of a complete
  ## truncated sphere), - and in case of a portion of sphere, two planar
  ## faces to shut the shape.(in the planes u = 0 and u = angle).
#[
proc ` new`*(this: var BRepPrimAPI_MakeSphere, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeSphere, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeSphere, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeSphere, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeSphere, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeSphere, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc oneAxis*(this: var BRepPrimAPI_MakeSphere): pointer  {.importcpp: "OneAxis".}
  ## Returns the algorithm.

proc sphere*(this: var BRepPrimAPI_MakeSphere): BRepPrim_Sphere  {.importcpp: "Sphere".}
  ## Returns the algorithm.

{.pop.} # header: "BRepPrimAPI_MakeSphere.hxx
