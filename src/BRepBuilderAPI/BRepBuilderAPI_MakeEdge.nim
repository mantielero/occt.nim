import brepbuilderapi_types
import ../TopoDS/topods_types
import ../gp/gp_types
import ../Standard/standard
import ../Geom/geom_types

type
  BRepBuilderAPI_MakeEdge* {.header: "BRepBuilderAPI_MakeEdge.hxx", importcpp: "BRepBuilderAPI_MakeEdge", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Provides methods to build edges.



{.push header: "BRepBuilderAPI_MakeEdge.hxx".}

proc MakeEdge*(): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge".}

proc MakeEdge*(V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(P1, P2: gp_Pnt): TopoDS_Edge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Lin): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Lin, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Lin, P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Lin, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Circ): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Circ, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Circ, P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Circ, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Elips): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Elips, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Elips, P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Elips, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Hypr): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Hypr, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Hypr, P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Hypr, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Parab): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Parab, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Parab, P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: gp_Parab, V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: Handle_Geom_TrimmedCurve):TopoDS_Edge  {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: Handle[Geom_Curve]; p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: Handle[Geom_Curve]; P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: Handle[Geom_Curve]; V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: Handle[Geom_Curve]; P1: gp_Pnt, P2: gp_Pnt, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

proc MakeEdge*(L: Handle[Geom_Curve]; V1: TopoDS_Vertex, V2: TopoDS_Vertex, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

#proc MakeEdge*(L: Handle[Geom2d_Curve], S: Handle[Geom_Surface]): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

#proc MakeEdge*(L: Handle[Geom2d_Curve], S: Handle[Geom_Surface], p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

#proc MakeEdge*(L: Handle[Geom2d_Curve], S: Handle[Geom_Surface], P1: gp_Pnt, P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

#proc MakeEdge*(L: Handle[Geom2d_Curve], S: Handle[Geom_Surface], V1: TopoDS_Vertex, V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

#proc MakeEdge*(L: Handle[Geom2d_Curve], S: Handle[Geom_Surface], P1: gp_Pnt, P2: gp_Pnt, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}

#[
proc MakeEdge*(L: Handle[Geom2d_Curve], S: Handle[Geom_Surface], V1: TopoDS_Vertex, V2: TopoDS_Vertex, p1: Standard_Real, p2: Standard_Real): BRepBuilderAPI_MakeEdge {.constructor,importcpp: "BRepBuilderAPI_MakeEdge::BRepBuilderAPI_MakeEdge(@)".}
    ## The general method to directly create an edge is to give - a 3D curve
    ## C as the support (geometric domain) of the edge, - two vertices V1 and
    ## V2 to limit the curve (definition of the restriction of the edge), and
    ## - two real values p1 and p2 which are the parameters for the vertices
    ## V1 and V2 on the curve. The curve may be defined as a 2d curve in the
    ## parametric space of a surface: a pcurve. The surface on which the edge
    ## is built is then kept at the level of the edge. The default tolerance
    ## will be associated with this edge. Rules applied to the arguments: For
    ## the curve: - The curve must not be a 'null Handle'. - If the curve is
    ## a trimmed curve the basis curve is used. For the vertices: - Vertices
    ## may be null shapes. When V1 or V2 is null the edge is open in the
    ## corresponding direction and the parameter value p1 or p2 must be
    ## infinite (remember that Precision::Infinite() defines an infinite
    ## value). - The two vertices must be identical if they have the same 3D
    ## location. Identical vertices are used in particular when the curve is
    ## closed. For the parameters: - The parameters must be in the parametric
    ## range of the curve (or the basis curve if the curve is trimmed). If
    ## this condition is not satisfied the edge is not built, and the Error
    ## function will return BRepAPI_ParameterOutOfRange. - Parameter values
    ## must not be equal. If this condition is not satisfied (i.e. if | p1 -
    ## p2 | ) the edge is not built, and the Error function will return
    ## BRepAPI_LineThroughIdenticPoints. Parameter values are expected to be
    ## given in increasing order: C->FirstParameter() - If the parameter
    ## values are given in decreasing order the vertices are switched, i.e.
    ## the "first vertex" is on the point of parameter p2 and the "second
    ## vertex" is on the point of parameter p1. In such a case, to keep the
    ## original intent of the construction, the edge will be oriented
    ## "reversed". - On a periodic curve the parameter values p1 and p2 are
    ## adjusted by adding or subtracting the period to obtain p1 in the
    ## parametric range of the curve, and p2] such that [ p1 , where Period
    ## is the period of the curve. - A parameter value may be infinite. The
    ## edge is open in the corresponding direction. However the corresponding
    ## vertex must be a null shape. If this condition is not satisfied the
    ## edge is not built, and the Error function will return
    ## BRepAPI_PointWithInfiniteParameter. - The distance between the vertex
    ## and the point evaluated on the curve with the parameter, must be lower
    ## than the precision of the vertex. If this condition is not satisfied
    ## the edge is not built, and the Error function will return
    ## BRepAPI_DifferentsPointAndParameter. Other edge constructions - The
    ## parameter values can be omitted, they will be computed by projecting
    ## the vertices on the curve. Note that projection is the only way to
    ## evaluate the parameter values of the vertices on the curve: vertices
    ## must be given on the curve, i.e. the distance from a vertex to the
    ## curve must be less than or equal to the precision of the vertex. If
    ## this condition is not satisfied the edge is not built, and the Error
    ## function will return BRepAPI_PointProjectionFailed. - 3D points can be
    ## given in place of vertices. Vertices will be created from the points
    ## (with the default topological precision Precision::Confusion()). Note:
    ## - Giving vertices is useful when creating a connected edge. - If the
    ## parameter values correspond to the extremities of a closed curve,
    ## points must be identical, or at least coincident. If this condition is
    ## not satisfied the edge is not built, and the Error function will
    ## return BRepAPI_DifferentPointsOnClosedCurve. - The vertices or points
    ## can be omitted if the parameter values are given. The points will be
    ## computed from the parameters on the curve. The vertices or points and
    ## the parameter values can be omitted. The first and last parameters of
    ## the curve will then be used.
]#

#[
proc ` new`*(this: var BRepBuilderAPI_MakeEdge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeEdge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeEdge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeEdge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeEdge, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeEdge, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}
]#
proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom_Curve])  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom_Curve], p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom_Curve], P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom_Curve], V1: TopoDS_Vertex, V2: TopoDS_Vertex)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom_Curve], P1: gp_Pnt, P2: gp_Pnt, p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom_Curve], V1: TopoDS_Vertex, V2: TopoDS_Vertex, p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

#proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface])  {.importcpp: "Init".}

#proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

#proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Init".}

#proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], V1: TopoDS_Vertex, V2: TopoDS_Vertex)  {.importcpp: "Init".}

#proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], P1: gp_Pnt, P2: gp_Pnt, p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}

#[
proc init*(this: var BRepBuilderAPI_MakeEdge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], V1: TopoDS_Vertex, V2: TopoDS_Vertex, p1: Standard_Real, p2: Standard_Real)  {.importcpp: "Init".}
    ## Defines or redefines the arguments for the construction of an edge.
    ## This function is currently used after the empty constructor
    ## BRepAPI_MakeEdge().
]#

proc isDone*(this: BRepBuilderAPI_MakeEdge): Standard_Boolean  {.importcpp: "IsDone".}
    ## Returns true if the edge is built.

proc error*(this: BRepBuilderAPI_MakeEdge): BRepBuilderAPI_EdgeError  {.importcpp: "Error".}
    ## Returns the construction status - BRepBuilderAPI_EdgeDone if the edge
    ## is built, or - another value of the BRepBuilderAPI_EdgeError
    ## enumeration indicating the reason of construction failure.

proc edge*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge  {.importcpp: "Edge".}
    ## Returns the constructed edge. Exceptions StdFail_NotDone if the edge
    ## is not built.

proc vertex1*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex  {.importcpp: "Vertex1".}
    ## Returns the first vertex of the edge. May be Null.

proc vertex2*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex  {.importcpp: "Vertex2".}
    ## Returns the second vertex of the edge. May be Null.

{.pop.}  # header: "BRepBuilderAPI_MakeEdge.hxx"
