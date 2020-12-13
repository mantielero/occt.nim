{.push header: "BRepPrim_Revolution.hxx".}


# Constructors and methods
proc constructor_BRepPrim_Revolution*(A: gp_Ax2, VMin: cdouble, VMax: cdouble, M: Handle[Geom_Curve], PM: Handle[Geom2d_Curve]): BRepPrim_Revolution {.constructor,importcpp: "BRepPrim_Revolution(@)".}
  ## Create a revolution body <M> is the meridian nd must be in the XZ
  ## plane of <A>. <PM> is the meridian in the XZ plane.

proc constructor_BRepPrim_Revolution*(A: gp_Ax2, VMin: cdouble, VMax: cdouble): BRepPrim_Revolution {.constructor,importcpp: "BRepPrim_Revolution(@)".}
  ## Create a revolution body. The meridian is set later. Reserved for
  ## derivated classes.
#[
proc ` new`*(this: var BRepPrim_Revolution, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Revolution, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_Revolution, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_Revolution, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_Revolution, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_Revolution, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc makeEmptyLateralFace*(this: BRepPrim_Revolution): TopoDS_Face  {.importcpp: "MakeEmptyLateralFace".}
  ## The surface normal should be directed towards the outside.

proc makeEmptyMeridianEdge*(this: BRepPrim_Revolution, Ang: cdouble): TopoDS_Edge  {.importcpp: "MakeEmptyMeridianEdge".}
  ## Returns an edge with a 3D curve made from the meridian in the XZ plane
  ## rotated by <Ang> around the Z-axis. Ang may be 0 or myAngle.

proc meridianValue*(this: BRepPrim_Revolution, V: cdouble): gp_Pnt2d  {.importcpp: "MeridianValue".}
  ## Returns the meridian point at parameter <V> in the plane XZ.

proc setMeridianPCurve*(this: BRepPrim_Revolution, E: var TopoDS_Edge, F: TopoDS_Face)  {.importcpp: "SetMeridianPCurve".}
  ## Sets the parametric urve of the edge <E> in the face <F> to be the 2d
  ## representation of the meridian.

proc meridian*(this: var BRepPrim_Revolution, M: Handle[Geom_Curve], PM: Handle[Geom2d_Curve])  {.importcpp: "Meridian".}

{.pop.} # header: "BRepPrim_Revolution.hxx
