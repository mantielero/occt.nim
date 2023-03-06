import ../topods/topods_types
import ../ncollection/ncollection_types
import ../standard/standard_types
type
  BRepListIteratorOfListOfCurveRepresentation* {.importcpp:"NCollection_List<Handle(BRep_CurveRepresentation)>::Iterator", header:"BRep_ListOfCurveRepresentation.hxx", bycopy.} = object

  BRepListIteratorOfListOfPointRepresentation* {.importcpp:"NCollection_List<Handle(BRep_PointRepresentation)>::Iterator", header:"BRep_ListOfPointRepresentation.hxx", bycopy.} = object

  BRepTool* {.importcpp: "BRep_Tool", header: "BRep_Tool.hxx", bycopy.} = object 

  BRepListOfCurveRepresentation* = NCollectionList[Handle[BRepCurveRepresentation]]

  BRepListOfPointRepresentation* = NCollectionList[Handle[BRepPointRepresentation]]

  BRepBuilder* {.importcpp: "BRep_Builder", header: "BRep_Builder.hxx", 
                 bycopy.} = object of TopoDS_Builder 

  BRepCurveRepresentation* {.importcpp: "BRep_CurveRepresentation",
                            header: "BRep_CurveRepresentation.hxx", bycopy.} = object of StandardTransient 

  BRepCurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                         header: "BRep_CurveOn2Surfaces.hxx", bycopy.} = object of BRepCurveRepresentation

  HandleBRepCurveOn2Surfaces* = Handle[BRepCurveOn2Surfaces]

  HandleBRepCurveRepresentation* = Handle[BRepCurveRepresentation]

  BRepGCurve* {.importcpp: "BRep_GCurve", header: "BRep_GCurve.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepCurveOnSurface* {.importcpp: "BRep_CurveOnSurface",
                       header: "BRep_CurveOnSurface.hxx", bycopy.} = object of BRepGCurve

  HandleBRepCurveOnSurface* = Handle[BRepCurveOnSurface]

  BRepCurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                             header: "BRep_CurveOnClosedSurface.hxx", bycopy.} = object of BRepCurveOnSurface

  HandleBRepCurveOnClosedSurface* = Handle[BRepCurveOnClosedSurface]

  BRepCurve3D* {.importcpp: "BRep_Curve3D", header: "BRep_Curve3D.hxx", bycopy.} = object of BRepGCurve

  HandleBRepCurve3D* = Handle[BRepCurve3D]

  HandleBRepGCurve* = Handle[BRepGCurve]

  BRepPointRepresentation* {.importcpp: "BRep_PointRepresentation",
                            header: "BRep_PointRepresentation.hxx", bycopy.} = object of StandardTransient 

  BRepPointOnCurve* {.importcpp: "BRep_PointOnCurve",
                     header: "BRep_PointOnCurve.hxx", bycopy.} = object of BRepPointRepresentation

  HandleBRepPointOnCurve* = Handle[BRepPointOnCurve]

  HandleBRepPointRepresentation* = Handle[BRepPointRepresentation]

  BRepPointsOnSurface* {.importcpp: "BRep_PointsOnSurface",
                        header: "BRep_PointsOnSurface.hxx", bycopy.} = object of BRepPointRepresentation

  BRepPointOnSurface* {.importcpp: "BRep_PointOnSurface",
                       header: "BRep_PointOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface

  HandleBRepPointOnSurface* = Handle[BRepPointOnSurface]

  BRepPointOnCurveOnSurface* {.importcpp: "BRep_PointOnCurveOnSurface",
                              header: "BRep_PointOnCurveOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface

  HandleBRepPointOnCurveOnSurface* = Handle[BRepPointOnCurveOnSurface]

  HandleBRepPointsOnSurface* = Handle[BRepPointsOnSurface]

  BRepPolygon3D* {.importcpp: "BRep_Polygon3D", header: "BRep_Polygon3D.hxx", bycopy.} = object of BRepCurveRepresentation

  HandleBRepPolygon3D* = Handle[BRepPolygon3D]

  BRepPolygonOnSurface* {.importcpp: "BRep_PolygonOnSurface",
                         header: "BRep_PolygonOnSurface.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepPolygonOnClosedSurface* {.importcpp: "BRep_PolygonOnClosedSurface",
                               header: "BRep_PolygonOnClosedSurface.hxx", bycopy.} = object of BRepPolygonOnSurface

  HandleBRepPolygonOnClosedSurface* = Handle[BRepPolygonOnClosedSurface]

  HandleBRepPolygonOnSurface* = Handle[BRepPolygonOnSurface]

  BRepPolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                               header: "BRep_PolygonOnTriangulation.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepPolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx",
                                     bycopy.} = object of BRepPolygonOnTriangulation

  HandleBRepPolygonOnClosedTriangulation* = Handle[
      BRepPolygonOnClosedTriangulation]

  HandleBRepPolygonOnTriangulation* = Handle[BRepPolygonOnTriangulation]

  BRepTEdge* {.importcpp: "BRep_TEdge", header: "BRep_TEdge.hxx", bycopy.} = object of TopoDS_TEdge 

  HandleBRepTEdge* = Handle[BRepTEdge]

  BRepTFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace 

  HandleBRepTFace* = Handle[BRepTFace]

  #BRepTFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace 
  BRepTVertex* {.importcpp: "BRep_TVertex", header: "BRep_TVertex.hxx", bycopy.} = object of TopoDS_TVertex

  HandleBRepTVertex* = Handle[BRepTVertex]

