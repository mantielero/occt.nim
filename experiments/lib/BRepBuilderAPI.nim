import cinterop, gc, gp


csource "TopoDS_Edge.hxx":
  type
    TopoDS_Edge* = object of CClass

csource "BRepBuilderAPI_MakeEdge.hxx":
  type
    BRepBuilderAPI_MakeEdge* = object of CClass

  converter toTopoDS_Edge*(self: BRepBuilderAPI_MakeEdge):TopoDS_Edge {.importcpp:"(#)".}


proc makeEdge*(a:Handle_Geom_TrimmedCurve):TopoDS_Edge =
  return BRepBuilderAPI_MakeEdge.init(a)


proc makeEdge*(a,b:gp_Pnt):TopoDS_Edge =
  return BRepBuilderAPI_MakeEdge.init(a, b)




csource "TopoDS_Shape.hxx":
  type
    TopoDS_Shape* = object of CClass

# Lo siguiente hay que hacerlo porque no soporta herencia múltiple
#[
csource "TopoDS_Wire.hxx":
  type
    TopoDS_Wire* = object of CClass
]#
type
  TopoDS_Wire* {.importcpp: "TopoDS_Wire", header: "TopoDS_Wire.hxx", bycopy.} = object of TopoDS_Shape


#proc TopoDS_Wire*(this: var TopoDS_Wire): DEFINE_STANDARD_ALLOC {.
#    importcpp: "TopoDS_Wire", header: "TopoDS_Wire.hxx".}


csource "BRepBuilderAPI_MakeWire.hxx":
  type
    BRepBuilderAPI_MakeWire* = object of CClass

  converter toTopoDS_Wire*(self: BRepBuilderAPI_MakeWire):TopoDS_Wire {.importcpp:"(#)".}

proc makeWire*(a,b,c:TopoDS_Edge):TopoDS_Wire =
  return BRepBuilderAPI_MakeWire.init(a, b, c)

proc add*(this:var BRepBuilderAPI_MakeWire, w: TopoDS_Wire) =
  cexpr^this.Add(w)

proc wire*(this:BRepBuilderAPI_MakeWire):TopoDS_Wire =
  cexpr[TopoDS_Wire]^this.Wire()


# MakeFace
csource "TopoDS_Face.hxx":
  type
    TopoDS_Face* = object of CClass

csource "BRepBuilderAPI_MakeFace.hxx":
  type
    BRepBuilderAPI_MakeFace* = object of CClass

  converter toTopoDS_Face*(self: BRepBuilderAPI_MakeFace):TopoDS_Face {.importcpp:"(#)".}

proc makeFace*(w: TopoDS_Wire, onlyPlane: bool = false):BRepBuilderAPI_MakeFace =
  BRepBuilderAPI_MakeFace.init(w, onlyPlane)

#(W: TopoDS_Wire, OnlyPlane: Standard_Boolean = false): TopoDS_Face

# Transform




csource "BRepBuilderAPI_Transform.hxx":
  type
    BRepBuilderAPI_Transform* = object of CClass

  converter toTopoDS_Shape*(self: BRepBuilderAPI_Transform):TopoDS_Shape {.importcpp:"(#)".}

  #converter toTopoDS_Shape*(self: TopoDS_Wire):TopoDS_Shape {.importcpp:"(#)".}

#| TopoDS_Wire

proc transform*[T:TopoDS_Shape ](s:T, trsf:gp_Trsf, copy:bool = false):BRepBuilderAPI_Transform =
  return BRepBuilderAPI_Transform.init(s, trsf, copy)


proc shape*(trsf:BRepBuilderAPI_Transform):TopoDS_Shape =
  cexpr[TopoDS_Shape]^trsf.Shape()

# ModifyShape
# https://dev.opencascade.org/doc/refman/html/class_b_rep_builder_a_p_i___modify_shape.html
csource "BRepBuilderAPI_ModifyShape.hxx":
  type
    BRepBuilderAPI_ModifyShape* = object of CClass

# MakeShape
#csource "BRepBuilderAPI_MakeShape.hxx":
#  type
#    BRepBuilderAPI_MakeShape* = object of CClass

#[
proc shape*[T:TopoDS_Shape](this:BRepBuilderAPI_ModifyShape):TopoDS_Shape =
  var tmp = this.init(s)
  return tmp.shape()
]#

