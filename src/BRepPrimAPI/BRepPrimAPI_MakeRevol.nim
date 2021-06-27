import brepprimapi_types
import ../gp/gp_types
import ../BRepPrim/brepprim_types
import ../TopoDS/topods_types

{.push header: "BRepPrimAPI_MakeRevol.hxx".}


# Constructors and methods
proc MakeRevol*(S: TopoDS_Shape, A: gp_Ax1, D: cdouble, Copy: bool): BRepPrimAPI_MakeRevol {.constructor,importcpp: "BRepPrimAPI_MakeRevol(@)".}
  ## Builds the Revol of base S, axis A and angle D. If C is true, S is
  ## copied.

proc MakeRevol*(S: TopoDS_Shape, A: gp_Ax1, Copy: bool): BRepPrimAPI_MakeRevol {.constructor,importcpp: "BRepPrimAPI_MakeRevol(@)".}
  ## Builds the Revol of base S, axis A and angle 2*Pi. If C is true, S is
  ## copied.
#[
proc ` new`*(this: var BRepPrimAPI_MakeRevol, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeRevol, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeRevol, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeRevol, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeRevol, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeRevol, pointer, pointer)  {.importcpp: "#  delete #".}
]#
#[FIXME
proc revol*(this: BRepPrimAPI_MakeRevol): BRepSweep_Revol  {.importcpp: "Revol".}
  ## Returns the internal sweeping algorithm.
]#
proc build*(this: var BRepPrimAPI_MakeRevol)  {.importcpp: "Build".}
  ## Builds the resulting shape (redefined from MakeShape).

proc firstShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape  {.importcpp: "FirstShape".}
  ## Returns the first shape of the revol (coinciding with the generating
  ## shape).

proc lastShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape  {.importcpp: "LastShape".}
  ## Returns the TopoDS Shape of the end of the revol.

#[FIXME
proc generated*(this: var BRepPrimAPI_MakeRevol, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Generated".}
  ## Returns list of shape generated from shape S Warning: shape S must be
  ## shape of type VERTEX, EDGE, FACE, SOLID. For shapes of other types
  ## method always returns empty list
]#
proc isDeleted*(this: var BRepPrimAPI_MakeRevol, S: TopoDS_Shape): bool  {.importcpp: "IsDeleted".}
  ## Returns true if the shape S has been deleted.

proc firstShape*(this: var BRepPrimAPI_MakeRevol, theShape: TopoDS_Shape): TopoDS_Shape  {.importcpp: "FirstShape".}
  ## Returns the TopoDS Shape of the beginning of the revolution, generated
  ## with theShape (subShape of the generating shape).

proc lastShape*(this: var BRepPrimAPI_MakeRevol, theShape: TopoDS_Shape): TopoDS_Shape  {.importcpp: "LastShape".}
  ## Returns the TopoDS Shape of the end of the revolution, generated with
  ## theShape (subShape of the generating shape).

proc hasDegenerated*(this: BRepPrimAPI_MakeRevol): bool  {.importcpp: "HasDegenerated".}
  ## Check if there are degenerated edges in the result.
#[FIXME
proc degenerated*(this: BRepPrimAPI_MakeRevol): TopTools_ListOfShape  {.importcpp: "Degenerated".}
  ## Returns the list of degenerated edges
]#
proc checkValidity*(this: var BRepPrimAPI_MakeRevol, theShape: TopoDS_Shape, theA: gp_Ax1): bool  {.importcpp: "CheckValidity".}
  ## Checks possibilities of producing self-intersection surface returns
  ## true if all surfaces are valid

{.pop.} # header: "BRepPrimAPI_MakeRevol.hxx
