type
  Handle_BRep_TFace* {.header: "BRep_TFace.hxx", importcpp: "Handle_BRep_TFace".} = Handle[BRep_TFace]
  #base_type* {.header: "BRep_TFace.hxx", importcpp: "base_type".} = TopoDS_TFace
  BRep_TFace* {.header: "BRep_TFace.hxx", importcpp: "BRep_TFace", byref.} = object
  ## The Tface from BRep is based on the TFace from TopoDS. The TFace
  ## contains :

  Handle_BRep_Curve3D* {.header: "BRep_Curve3D.hxx", importcpp: "Handle_BRep_Curve3D".} = Handle[BRep_Curve3D]
  #base_type* {.header: "BRep_Curve3D.hxx", importcpp: "base_type".} = BRep_GCurve
  BRep_Curve3D* {.header: "BRep_Curve3D.hxx", importcpp: "BRep_Curve3D", byref.} = object
  ## Representation of a curve by a 3D curve.

  Handle_BRep_CurveRepresentation* {.header: "BRep_CurveRepresentation.hxx", importcpp: "Handle_BRep_CurveRepresentation".} = Handle[BRep_CurveRepresentation]
  #base_type* {.header: "BRep_CurveRepresentation.hxx", importcpp: "base_type".} = Standard_Transient
  BRep_CurveRepresentation* {.header: "BRep_CurveRepresentation.hxx", importcpp: "BRep_CurveRepresentation", byref.} = object
  ## Root class for the curve representations. Contains a location.

  Handle_BRep_CurveOn2Surfaces* {.header: "BRep_CurveOn2Surfaces.hxx", importcpp: "Handle_BRep_CurveOn2Surfaces".} = Handle[BRep_CurveOn2Surfaces]
  #base_type* {.header: "BRep_CurveOn2Surfaces.hxx", importcpp: "base_type".} = BRep_CurveRepresentation
  BRep_CurveOn2Surfaces* {.header: "BRep_CurveOn2Surfaces.hxx", importcpp: "BRep_CurveOn2Surfaces", byref.} = object
  ## Defines a continuity between two surfaces.

  Handle_BRep_PointOnCurveOnSurface* {.header: "BRep_PointOnCurveOnSurface.hxx", importcpp: "Handle_BRep_PointOnCurveOnSurface".} = Handle[BRep_PointOnCurveOnSurface]
  #base_type* {.header: "BRep_PointOnCurveOnSurface.hxx", importcpp: "base_type".} = BRep_PointsOnSurface
  BRep_PointOnCurveOnSurface* {.header: "BRep_PointOnCurveOnSurface.hxx", importcpp: "BRep_PointOnCurveOnSurface", byref.} = object
  ## Representation by a parameter on a curve on a surface.

  Handle_BRep_PointsOnSurface* {.header: "BRep_PointsOnSurface.hxx", importcpp: "Handle_BRep_PointsOnSurface".} = Handle[BRep_PointsOnSurface]
  #base_type* {.header: "BRep_PointsOnSurface.hxx", importcpp: "base_type".} = BRep_PointRepresentation
  BRep_PointsOnSurface* {.header: "BRep_PointsOnSurface.hxx", importcpp: "BRep_PointsOnSurface", byref.} = object
  ## Root for points on surface.

  Handle_BRep_PointOnCurve* {.header: "BRep_PointOnCurve.hxx", importcpp: "Handle_BRep_PointOnCurve".} = Handle[BRep_PointOnCurve]
  #base_type* {.header: "BRep_PointOnCurve.hxx", importcpp: "base_type".} = BRep_PointRepresentation
  BRep_PointOnCurve* {.header: "BRep_PointOnCurve.hxx", importcpp: "BRep_PointOnCurve", byref.} = object
  ## Representation by a parameter on a 3D curve.

  Handle_BRep_PolygonOnTriangulation* {.header: "BRep_PolygonOnTriangulation.hxx", importcpp: "Handle_BRep_PolygonOnTriangulation".} = Handle[BRep_PolygonOnTriangulation]
  #base_type* {.header: "BRep_PolygonOnTriangulation.hxx", importcpp: "base_type".} = BRep_CurveRepresentation
  BRep_PolygonOnTriangulation* {.header: "BRep_PolygonOnTriangulation.hxx", importcpp: "BRep_PolygonOnTriangulation", byref.} = object
  ## A representation by an array of nodes on a triangulation.

  Handle_BRep_PolygonOnClosedTriangulation* {.header: "BRep_PolygonOnClosedTriangulation.hxx", importcpp: "Handle_BRep_PolygonOnClosedTriangulation".} = Handle[BRep_PolygonOnClosedTriangulation]
  #base_type* {.header: "BRep_PolygonOnClosedTriangulation.hxx", importcpp: "base_type".} = BRep_PolygonOnTriangulation
  BRep_PolygonOnClosedTriangulation* {.header: "BRep_PolygonOnClosedTriangulation.hxx", importcpp: "BRep_PolygonOnClosedTriangulation", byref.} = object
  ## A representation by two arrays of nodes on a triangulation.

  BRep_Tool* {.header: "BRep_Tool.hxx", importcpp: "BRep_Tool", byref.} = object
  ## Provides class methods to access to the geometry of BRep shapes.

  BRep_Builder* {.header: "BRep_Builder.hxx", importcpp: "BRep_Builder", byref.} = object
  ## A framework providing advanced tolerance control. It is used to build
  ## Shapes. If tolerance control is required, you are advised to: 1. build
  ## a default precision for topology, using the classes provided in the
  ## BRepAPI package 2. update the tolerance of the resulting shape. Note
  ## that only vertices, edges and faces have meaningful tolerance control.
  ## The tolerance value must always comply with the condition that face
  ## tolerances are more restrictive than edge tolerances which are more
  ## restrictive than vertex tolerances. In other words: Tol(Vertex) >=
  ## Tol(Edge) >= Tol(Face). Other rules in setting tolerance include: -
  ## you can open up tolerance but should never restrict it - an edge
  ## cannot be included within the fusion of the tolerance spheres of two
  ## vertices

  Handle_BRep_PolygonOnClosedSurface* {.header: "BRep_PolygonOnClosedSurface.hxx", importcpp: "Handle_BRep_PolygonOnClosedSurface".} = Handle[BRep_PolygonOnClosedSurface]
  #base_type* {.header: "BRep_PolygonOnClosedSurface.hxx", importcpp: "base_type".} = BRep_PolygonOnSurface
  BRep_PolygonOnClosedSurface* {.header: "BRep_PolygonOnClosedSurface.hxx", importcpp: "BRep_PolygonOnClosedSurface", byref.} = object
  ## Representation by two 2d polygons in the parametric space of a
  ## surface.

  Handle_BRep_TEdge* {.header: "BRep_TEdge.hxx", importcpp: "Handle_BRep_TEdge".} = Handle[BRep_TEdge]
  #base_type* {.header: "BRep_TEdge.hxx", importcpp: "base_type".} = TopoDS_TEdge
  BRep_TEdge* {.header: "BRep_TEdge.hxx", importcpp: "BRep_TEdge", byref.} = object
  ## The TEdge from BRep is inherited from the TEdge from TopoDS. It
  ## contains the geometric data.

  Handle_BRep_PolygonOnSurface* {.header: "BRep_PolygonOnSurface.hxx", importcpp: "Handle_BRep_PolygonOnSurface".} = Handle[BRep_PolygonOnSurface]
  #base_type* {.header: "BRep_PolygonOnSurface.hxx", importcpp: "base_type".} = BRep_CurveRepresentation
  BRep_PolygonOnSurface* {.header: "BRep_PolygonOnSurface.hxx", importcpp: "BRep_PolygonOnSurface", byref.} = object
  ## Representation of a 2D polygon in the parametric space of a surface.

  Handle_BRep_PointOnSurface* {.header: "BRep_PointOnSurface.hxx", importcpp: "Handle_BRep_PointOnSurface".} = Handle[BRep_PointOnSurface]
  #base_type* {.header: "BRep_PointOnSurface.hxx", importcpp: "base_type".} = BRep_PointsOnSurface
  BRep_PointOnSurface* {.header: "BRep_PointOnSurface.hxx", importcpp: "BRep_PointOnSurface", byref.} = object
  ## Representation by two parameters on a surface.

  #BRep_ListOfCurveRepresentation* {.header: "BRep_ListOfCurveRepresentation.hxx", importcpp: "BRep_ListOfCurveRepresentation".} = Ncollection_list[opencascade::handle<BRep_CurveRepresentation]
  BRep_ListIteratorOfListOfCurveRepresentation* {.header: "BRep_ListOfCurveRepresentation.hxx", importcpp: "BRep_ListIteratorOfListOfCurveRepresentation".} = cint
  Handle_BRep_CurveOnSurface* {.header: "BRep_CurveOnSurface.hxx", importcpp: "Handle_BRep_CurveOnSurface".} = Handle[BRep_CurveOnSurface]
  #base_type* {.header: "BRep_CurveOnSurface.hxx", importcpp: "base_type".} = BRep_GCurve
  BRep_CurveOnSurface* {.header: "BRep_CurveOnSurface.hxx", importcpp: "BRep_CurveOnSurface", byref.} = object
  ## Representation of a curve by a curve in the parametric space of a
  ## surface.

  #BRep_ListOfPointRepresentation* {.header: "BRep_ListOfPointRepresentation.hxx", importcpp: "BRep_ListOfPointRepresentation".} = Ncollection_list[opencascade::handle<BRep_PointRepresentation]
  BRep_ListIteratorOfListOfPointRepresentation* {.header: "BRep_ListOfPointRepresentation.hxx", importcpp: "BRep_ListIteratorOfListOfPointRepresentation".} = cint
  Handle_BRep_CurveOnClosedSurface* {.header: "BRep_CurveOnClosedSurface.hxx", importcpp: "Handle_BRep_CurveOnClosedSurface".} = Handle[BRep_CurveOnClosedSurface]
  #base_type* {.header: "BRep_CurveOnClosedSurface.hxx", importcpp: "base_type".} = BRep_CurveOnSurface
  BRep_CurveOnClosedSurface* {.header: "BRep_CurveOnClosedSurface.hxx", importcpp: "BRep_CurveOnClosedSurface", byref.} = object
  ## Representation of a curve by two pcurves on a closed surface.

  Handle_BRep_TVertex* {.header: "BRep_TVertex.hxx", importcpp: "Handle_BRep_TVertex".} = Handle[BRep_TVertex]
  #base_type* {.header: "BRep_TVertex.hxx", importcpp: "base_type".} = TopoDS_TVertex
  BRep_TVertex* {.header: "BRep_TVertex.hxx", importcpp: "BRep_TVertex", byref.} = object
  ## The TVertex from BRep inherits from the TVertex from TopoDS. It
  ## contains the geometric data.

  Handle_BRep_GCurve* {.header: "BRep_GCurve.hxx", importcpp: "Handle_BRep_GCurve".} = Handle[BRep_GCurve]
  #base_type* {.header: "BRep_GCurve.hxx", importcpp: "base_type".} = BRep_CurveRepresentation
  BRep_GCurve* {.header: "BRep_GCurve.hxx", importcpp: "BRep_GCurve", byref.} = object
  ## Root class for the geometric curves representation. Contains a range.
  ## Contains a first and a last parameter.

  Handle_BRep_PointRepresentation* {.header: "BRep_PointRepresentation.hxx", importcpp: "Handle_BRep_PointRepresentation".} = Handle[BRep_PointRepresentation]
  #base_type* {.header: "BRep_PointRepresentation.hxx", importcpp: "base_type".} = Standard_Transient
  BRep_PointRepresentation* {.header: "BRep_PointRepresentation.hxx", importcpp: "BRep_PointRepresentation", byref.} = object
  ## Root class for the points representations. Contains a location and a
  ## parameter.

  Handle_BRep_Polygon3D* {.header: "BRep_Polygon3D.hxx", importcpp: "Handle_BRep_Polygon3D".} = Handle[BRep_Polygon3D]
  #base_type* {.header: "BRep_Polygon3D.hxx", importcpp: "base_type".} = BRep_CurveRepresentation
  BRep_Polygon3D* {.header: "BRep_Polygon3D.hxx", importcpp: "BRep_Polygon3D", byref.} = object
  ## Representation by a 3D polygon.

  #Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object

  Ncollection_list* {.importcpp: "NCollection_List", header: "<map>".} [K] = object

#[
include "BRep_TFace.nim"
include "BRep_Curve3D.nim"
include "BRep_CurveRepresentation.nim"
include "BRep_CurveOn2Surfaces.nim"
include "BRep_PointOnCurveOnSurface.nim"
include "BRep_PointsOnSurface.nim"
include "BRep_PointOnCurve.nim"
include "BRep_PolygonOnTriangulation.nim"
include "BRep_PolygonOnClosedTriangulation.nim"
include "BRep_Tool.nim"
include "BRep_Builder.nim"
include "BRep_PolygonOnClosedSurface.nim"
include "BRep_TEdge.nim"
include "BRep_PolygonOnSurface.nim"
include "BRep_PointOnSurface.nim"
include "BRep_ListOfCurveRepresentation.nim"
include "BRep_ListIteratorOfListOfCurveRepresentation.nim"
include "BRep_CurveOnSurface.nim"
include "BRep_ListOfPointRepresentation.nim"
include "BRep_CurveOnClosedSurface.nim"
include "BRep_ListIteratorOfListOfPointRepresentation.nim"
include "BRep_TVertex.nim"
include "BRep_GCurve.nim"
include "BRep_PointRepresentation.nim"
include "BRep_Polygon3D.nim"
]#