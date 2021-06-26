import gp/gp_types
import ../TopoDS/topods_types


{.push header: "BRepPrim_GWedge.hxx".}


# Constructors and methods
proc constructor_BRepPrim_GWedge*(B: BRepPrim_Builder, Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble): BRepPrim_GWedge {.constructor,importcpp: "BRepPrim_GWedge(@)".}
  ## Creates a GWedge algorithm. <Axes> is the axis system for the
  ## primitive.

proc constructor_BRepPrim_GWedge*(B: BRepPrim_Builder, Axes: gp_Ax2, dx: cdouble, dy: cdouble, dz: cdouble, ltx: cdouble): BRepPrim_GWedge {.constructor,importcpp: "BRepPrim_GWedge(@)".}
  ## Creates a GWedge primitive. <Axes> is the axis system for the
  ## primitive.

proc constructor_BRepPrim_GWedge*(B: BRepPrim_Builder, Axes: gp_Ax2, xmin: cdouble, ymin: cdouble, zmin: cdouble, z2min: cdouble, x2min: cdouble, xmax: cdouble, ymax: cdouble, zmax: cdouble, z2max: cdouble, x2max: cdouble): BRepPrim_GWedge {.constructor,importcpp: "BRepPrim_GWedge(@)".}
  ## Create a GWedge primitive. <Axes> is the axis system for the
  ## primitive.
#[
proc ` new`*(this: var BRepPrim_GWedge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_GWedge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_GWedge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_GWedge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_GWedge, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_GWedge, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc axes*(this: BRepPrim_GWedge): gp_Ax2  {.importcpp: "Axes".}
  ## Returns the coordinates system from <me>.

proc getXMin*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetXMin".}
  ## Returns Xmin value from <me>.

proc getYMin*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetYMin".}
  ## Returns YMin value from <me>.

proc getZMin*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetZMin".}
  ## Returns ZMin value from <me>.

proc getZ2Min*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetZ2Min".}
  ## Returns Z2Min value from <me>.

proc getX2Min*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetX2Min".}
  ## Returns X2Min value from <me>.

proc getXMax*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetXMax".}
  ## Returns XMax value from <me>.

proc getYMax*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetYMax".}
  ## Returns YMax value from <me>.

proc getZMax*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetZMax".}
  ## Returns ZMax value from <me>.

proc getZ2Max*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetZ2Max".}
  ## Returns Z2Max value from <me>.

proc getX2Max*(this: BRepPrim_GWedge): cdouble  {.importcpp: "GetX2Max".}
  ## Returns X2Max value from <me>.

proc open*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction)  {.importcpp: "Open".}
  ## Opens <me> in <d1> direction. A face and its edges or vertices are
  ## said nonexistant.

proc close*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction)  {.importcpp: "Close".}
  ## Closes <me> in <d1> direction. A face and its edges or vertices are
  ## said existant.

proc isInfinite*(this: BRepPrim_GWedge, d1: BRepPrim_Direction): bool  {.importcpp: "IsInfinite".}
  ## Returns True if <me> is open in <d1> direction.

proc shell*(this: var BRepPrim_GWedge): TopoDS_Shell  {.importcpp: "Shell".}
  ## Returns the Shell containing the Faces of <me>.

proc hasFace*(this: BRepPrim_GWedge, d1: BRepPrim_Direction): bool  {.importcpp: "HasFace".}
  ## Returns True if <me> has a Face in <d1> direction.

proc face*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction): TopoDS_Face  {.importcpp: "Face".}
  ## Returns the Face of <me> located in <d1> direction.

proc plane*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction): gp_Pln  {.importcpp: "Plane".}
  ## Returns the plane of the Face of <me> located in <d1> direction.

proc hasWire*(this: BRepPrim_GWedge, d1: BRepPrim_Direction): bool  {.importcpp: "HasWire".}
  ## Returns True if <me> has a Wire in <d1> direction.

proc wire*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction): TopoDS_Wire  {.importcpp: "Wire".}
  ## Returns the Wire of <me> located in <d1> direction.

proc hasEdge*(this: BRepPrim_GWedge, d1: BRepPrim_Direction, d2: BRepPrim_Direction): bool  {.importcpp: "HasEdge".}
  ## Returns True if <me> has an Edge in <d1><d2> direction.

proc edge*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction, d2: BRepPrim_Direction): TopoDS_Edge  {.importcpp: "Edge".}
  ## Returns the Edge of <me> located in <d1><d2> direction.

proc line*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction, d2: BRepPrim_Direction): gp_Lin  {.importcpp: "Line".}
  ## Returns the line of the Edge of <me> located in <d1><d2> direction.

proc hasVertex*(this: BRepPrim_GWedge, d1: BRepPrim_Direction, d2: BRepPrim_Direction, d3: BRepPrim_Direction): bool  {.importcpp: "HasVertex".}
  ## Returns True if <me> has a Vertex in <d1><d2><d3> direction.

proc vertex*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction, d2: BRepPrim_Direction, d3: BRepPrim_Direction): TopoDS_Vertex  {.importcpp: "Vertex".}
  ## Returns the Vertex of <me> located in <d1><d2><d3> direction.

proc point*(this: var BRepPrim_GWedge, d1: BRepPrim_Direction, d2: BRepPrim_Direction, d3: BRepPrim_Direction): gp_Pnt  {.importcpp: "Point".}
  ## Returns the point of the Vertex of <me> located in <d1><d2><d3>
  ## direction.

{.pop.} # header: "BRepPrim_GWedge.hxx
