import ../TopoDS/topods_types

{.push header: "BRepPrim_Wedge.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Wedge*(Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble): BRepPrim_Wedge {.constructor,importcpp: "BRepPrim_Wedge(@)".}
  ## Creates a Wedge algorithm. <Axes> is the axis system for the
  ## primitive.

proc constructor_BRepPrim_Wedge*(Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble, ltx: cdouble): BRepPrim_Wedge {.constructor,importcpp: "BRepPrim_Wedge(@)".}
  ## Creates a Wedge primitive. <Axes> is the axis system for the
  ## primitive.

proc constructor_BRepPrim_Wedge*(Axes: gp_Ax2, xmin: cdouble, ymin: cdouble, zmin: cdouble, z2min: cdouble, x2min: cdouble, xmax: cdouble, ymax: cdouble, zmax: cdouble, z2max: cdouble, x2max: cdouble): BRepPrim_Wedge {.constructor,importcpp: "BRepPrim_Wedge(@)".}
  ## Create a Wedge primitive. <Axes> is the axis system for the primitive.
#[
proc ` new`*(this: var BRepPrim_Wedge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Wedge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Wedge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Wedge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Wedge, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Wedge, pointer, pointer)  {.importcpp: "#  delete #".}
]#
{.pop.} # header: "BRepPrim_Wedge.hxx
