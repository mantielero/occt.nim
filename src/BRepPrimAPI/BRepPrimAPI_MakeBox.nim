{.push header: "BRepPrimAPI_MakeBox.hxx".}


# Constructors and methods
proc MakeBox*(dx: cdouble, dy: cdouble, dz: cdouble): BRepPrimAPI_MakeBox {.constructor,importcpp: "BRepPrimAPI_MakeBox(@)".}
  ## Make a box with a corner at 0,0,0 and the other dx,dy,dz

proc MakeBox*(P: gp_Pnt, dx: cdouble, dy: cdouble, dz: cdouble): BRepPrimAPI_MakeBox {.constructor,importcpp: "BRepPrimAPI_MakeBox(@)".}
  ## Make a box with a corner at P and size dx, dy, dz.

proc MakeBox*(P1: gp_Pnt, P2: gp_Pnt): BRepPrimAPI_MakeBox {.constructor,importcpp: "BRepPrimAPI_MakeBox(@)".}
  ## Make a box with corners P1,P2.

proc MakeBox*(Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble): BRepPrimAPI_MakeBox {.constructor,importcpp: "BRepPrimAPI_MakeBox(@)".}
  ## Ax2 is the left corner and the axis. Constructs a box such that its
  ## sides are parallel to the axes of - the global coordinate system, or -
  ## the local coordinate system Axis. and - with a corner at (0, 0, 0) and
  ## of size (dx, dy, dz), or - with a corner at point P and of size (dx,
  ## dy, dz), or - with corners at points P1 and P2. Exceptions
  ## Standard_DomainError if: dx, dy, dz are less than or equal to
  ## Precision::Confusion(), or - the vector joining the points P1 and P2
  ## has a component projected onto the global coordinate system less than
  ## or equal to Precision::Confusion(). In these cases, the box would be
  ## flat.

#[
proc ` new`*(this: var BRepPrimAPI_MakeBox, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeBox, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeBox, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeBox, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeBox, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeBox, pointer, pointer)  {.importcpp: "#  delete #".}
]#

proc wedge*(this: var BRepPrimAPI_MakeBox): BRepPrim_Wedge  {.importcpp: "Wedge".}
  ## Returns the internal algorithm.

proc build*(this: var BRepPrimAPI_MakeBox)  {.importcpp: "Build".}
  ## Stores the solid in myShape.

proc shell*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell  {.importcpp: "Shell".}
  ## Returns the constructed box as a shell.

proc solid*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid  {.importcpp: "Solid".}
  ## Returns the constructed box as a solid.

proc bottomFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face  {.importcpp: "BottomFace".}
  ## Returns ZMin face

proc backFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face  {.importcpp: "BackFace".}
  ## Returns XMin face

proc frontFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face  {.importcpp: "FrontFace".}
  ## Returns XMax face

proc leftFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face  {.importcpp: "LeftFace".}
  ## Returns YMin face

proc rightFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face  {.importcpp: "RightFace".}
  ## Returns YMax face

proc topFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face  {.importcpp: "TopFace".}
  ## Returns ZMax face

{.pop.} # header: "BRepPrimAPI_MakeBox.hxx
