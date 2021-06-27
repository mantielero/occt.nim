import brepprimapi_types
import ../gp/gp_types
import ../BRepPrim/brepprim_types
import ../TopoDS/topods_types

{.push header: "BRepPrimAPI_MakeWedge.hxx".}


# Constructors and methods
proc MakeWedge*(dx: cdouble, dy: cdouble, dz: cdouble, ltx: cdouble): BRepPrimAPI_MakeWedge {.constructor,importcpp: "BRepPrimAPI_MakeWedge(@)".}
  ## Make a STEP right angular wedge. (ltx >= 0)

proc MakeWedge*(Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble, ltx: cdouble): BRepPrimAPI_MakeWedge {.constructor,importcpp: "BRepPrimAPI_MakeWedge(@)".}
  ## Make a STEP right angular wedge. (ltx >= 0)

proc MakeWedge*(dx: cdouble, dy: cdouble, dz: cdouble, xmin: cdouble, zmin: cdouble, xmax: cdouble, zmax: cdouble): BRepPrimAPI_MakeWedge {.constructor,importcpp: "BRepPrimAPI_MakeWedge(@)".}
  ## Make a wedge. The face at dy is xmin,zmin xmax,zmax

proc MakeWedge*(Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble, xmin: cdouble, zmin: cdouble, xmax: cdouble, zmax: cdouble): BRepPrimAPI_MakeWedge {.constructor,importcpp: "BRepPrimAPI_MakeWedge(@)".}
  ## Make a wedge. The face at dy is xmin,zmin xmax,zmax

#[
proc ` new`*(this: var BRepPrimAPI_MakeWedge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeWedge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeWedge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeWedge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeWedge, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeWedge, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc wedge*(this: var BRepPrimAPI_MakeWedge): BRepPrim_Wedge  {.importcpp: "Wedge".}
  ## Returns the internal algorithm.

proc build*(this: var BRepPrimAPI_MakeWedge)  {.importcpp: "Build".}
  ## Stores the solid in myShape.

proc shell*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell  {.importcpp: "Shell".}
  ## Returns the constructed box in the form of a shell.

proc solid*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid  {.importcpp: "Solid".}
  ## Returns the constructed box in the form of a solid.

{.pop.} # header: "BRepPrimAPI_MakeWedge.hxx
