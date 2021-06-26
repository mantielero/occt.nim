import brepbuilderapi_types


type
  BRepBuilderAPI_MakeEdge2d* {.header: "BRepBuilderAPI_MakeEdge2d.hxx", importcpp: "BRepBuilderAPI_MakeEdge2d", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Provides methods to build edges.



{.push header: "BRepBuilderAPI_MakeEdge2d.hxx".}

proc constructBRepBuilderAPI_MakeEdge2d*(V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d, P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d, P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d, P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d, P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d, P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve]): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve], p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve], P1: gp_Pnt2d, P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve], V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve], P1: gp_Pnt2d, P2: gp_Pnt2d, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve], V1: TopoDS_Vertex, V2: TopoDS_Vertex, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.constructor,importcpp: "BRepBuilderAPI_MakeEdge2d::BRepBuilderAPI_MakeEdge2d(@)".}

proc ` new`*(this: var BRepBuilderAPI_MakeEdge2d, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeEdge2d, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeEdge2d, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeEdge2d, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeEdge2d, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeEdge2d, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var BRepBuilderAPI_MakeEdge2d, C: handle[Geom2d_Curve])  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge2d, C: handle[Geom2d_Curve], p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge2d, C: handle[Geom2d_Curve], P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge2d, C: handle[Geom2d_Curve], V1: TopoDS_Vertex, V2: TopoDS_Vertex)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge2d, C: handle[Geom2d_Curve], P1: gp_Pnt2d, P2: gp_Pnt2d, p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge2d, C: handle[Geom2d_Curve], V1: TopoDS_Vertex, V2: TopoDS_Vertex, p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

proc isDone*(this: BRepBuilderAPI_MakeEdge2d): Standard_Boolean  {.importcpp: "IsDone".}

proc error*(this: BRepBuilderAPI_MakeEdge2d): BRepBuilderAPI_EdgeError  {.importcpp: "Error".}
    ## Returns the error description when NotDone.

proc edge*(this: var BRepBuilderAPI_MakeEdge2d): TopoDS_Edge  {.importcpp: "Edge".}

proc vertex1*(this: BRepBuilderAPI_MakeEdge2d): TopoDS_Vertex  {.importcpp: "Vertex1".}
    ## Returns the first vertex of the edge. May be Null.

proc vertex2*(this: BRepBuilderAPI_MakeEdge2d): TopoDS_Vertex  {.importcpp: "Vertex2".}
    ## Returns the second vertex of the edge. May be Null.

{.pop.}  # header: "BRepBuilderAPI_MakeEdge2d.hxx"
