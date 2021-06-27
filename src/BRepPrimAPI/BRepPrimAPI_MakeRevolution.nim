import brepprimapi_types
import ../Standard/standard
import ../Geom/geom_types
import ../gp/gp_types
import ../BRepPrim/brepprim_types

{.push header: "BRepPrimAPI_MakeRevolution.hxx".}


# Constructors and methods
proc MakeRevolution*(Meridian: Handle[Geom_Curve]): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Meridian: Handle[Geom_Curve], angle: cdouble): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Meridian: Handle[Geom_Curve], VMin: cdouble, VMax: cdouble): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Meridian: Handle[Geom_Curve], VMin: cdouble, VMax: cdouble, angle: cdouble): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Axes: gp_Ax2, Meridian: Handle[Geom_Curve]): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Axes: gp_Ax2, Meridian: Handle[Geom_Curve], angle: cdouble): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Axes: gp_Ax2, Meridian: Handle[Geom_Curve], VMin: cdouble, VMax: cdouble): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z.

proc MakeRevolution*(Axes: gp_Ax2, Meridian: Handle[Geom_Curve], VMin: cdouble, VMax: cdouble, angle: cdouble): BRepPrimAPI_MakeRevolution {.constructor,importcpp: "BRepPrimAPI_MakeRevolution(@)".}
  ## Make a revolution body by rotating a curve around Z. For all
  ## algorithms the resulting shape is composed of - a lateral revolved
  ## face, - two planar faces in planes parallel to the plane z = 0, and
  ## passing by the extremities of the revolved portion of Meridian, if
  ## these points are not on the Z axis (in case of a complete revolved
  ## shape, these faces are circles), - and in the case of a portion of a
  ## revolved shape, two planar faces to close the shape (in the planes u =
  ## 0 and u = angle).

#[
proc ` new`*(this: var BRepPrimAPI_MakeRevolution, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeRevolution, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeRevolution, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeRevolution, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeRevolution, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeRevolution, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc oneAxis*(this: var BRepPrimAPI_MakeRevolution): pointer  {.importcpp: "OneAxis".}
  ## Returns the algorithm.

proc revolution*(this: var BRepPrimAPI_MakeRevolution): BRepPrim_Revolution  {.importcpp: "Revolution".}
  ## Returns the algorithm.

{.pop.} # header: "BRepPrimAPI_MakeRevolution.hxx
