# PROVIDES: BRepListIteratorOfListOfCurveRepresentation BRepListIteratorOfListOfPointRepresentation BRepTool
# DEPENDS:  NCollectionList[Handle[BRepCurveRepresentation]]  NCollectionList[Handle[BRepPointRepresentation]]  Handle[BRepCurve3D]  Handle[BRepCurveOn2Surfaces]  Handle[BRepCurveOnClosedSurface]  Handle[BRepCurveOnSurface]  Handle[BRepCurveRepresentation]  Handle[BRepGCurve]  Handle[BRepPointOnCurve]  Handle[BRepPointOnCurveOnSurface]  Handle[BRepPointOnSurface]  Handle[BRepPointRepresentation]  Handle[BRepPointsOnSurface]  Handle[BRepPolygon3D]  Handle[BRepPolygonOnClosedSurface]  Handle[  Handle[BRepPolygonOnSurface]  Handle[BRepPolygonOnTriangulation]  Handle[BRepTEdge]  Handle[BRepTFace]  Handle[BRepTVertex] TopoDS_Builder BRepGCurve BRepCurveRepresentation BRepCurveOnSurface BRepGCurve StandardTransient BRepCurveRepresentation BRepPointRepresentation BRepPointsOnSurface BRepPointsOnSurface StandardTransient BRepPointRepresentation BRepCurveRepresentation BRepPolygonOnSurface BRepPolygonOnTriangulation BRepCurveRepresentation BRepCurveRepresentation TopoDS_TEdge TopoDS_TFace TopoDS_TVertex

import tkbrep/topods/topods_types
import tkbrep/brep/brep_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  BRepListIteratorOfListOfCurveRepresentation* {.importcpp:"NCollection_List<Handle(BRep_CurveRepresentation)>::Iterator", header:"BRep_ListOfCurveRepresentation.hxx", bycopy.} = object

  BRepListIteratorOfListOfPointRepresentation* {.importcpp:"NCollection_List<Handle(BRep_PointRepresentation)>::Iterator", header:"BRep_ListOfPointRepresentation.hxx", bycopy.} = object

  BRepTool* {.importcpp: "BRep_Tool", header: "BRep_Tool.hxx", bycopy.} = object 

  BRepListOfCurveRepresentation* = NCollectionList[Handle[BRepCurveRepresentation]]

  BRepListOfPointRepresentation* = NCollectionList[Handle[BRepPointRepresentation]]

  HandleBRepCurve3D* = Handle[BRepCurve3D]

  HandleBRepCurveOn2Surfaces* = Handle[BRepCurveOn2Surfaces]

  HandleBRepCurveOnClosedSurface* = Handle[BRepCurveOnClosedSurface]

  HandleBRepCurveOnSurface* = Handle[BRepCurveOnSurface]

  HandleBRepCurveRepresentation* = Handle[BRepCurveRepresentation]

  HandleBRepGCurve* = Handle[BRepGCurve]

  HandleBRepPointOnCurve* = Handle[BRepPointOnCurve]

  HandleBRepPointOnCurveOnSurface* = Handle[BRepPointOnCurveOnSurface]

  HandleBRepPointOnSurface* = Handle[BRepPointOnSurface]

  HandleBRepPointRepresentation* = Handle[BRepPointRepresentation]

  HandleBRepPointsOnSurface* = Handle[BRepPointsOnSurface]

  HandleBRepPolygon3D* = Handle[BRepPolygon3D]

  HandleBRepPolygonOnClosedSurface* = Handle[BRepPolygonOnClosedSurface]

  HandleBRepPolygonOnClosedTriangulation* = Handle[
      BRepPolygonOnClosedTriangulation]

  HandleBRepPolygonOnSurface* = Handle[BRepPolygonOnSurface]

  HandleBRepPolygonOnTriangulation* = Handle[BRepPolygonOnTriangulation]

  HandleBRepTEdge* = Handle[BRepTEdge]

  HandleBRepTFace* = Handle[BRepTFace]

  HandleBRepTVertex* = Handle[BRepTVertex]

  BRepBuilder* {.importcpp: "BRep_Builder", header: "BRep_Builder.hxx", bycopy.} = object of TopoDS_Builder 

  BRepCurve3D* {.importcpp: "BRep_Curve3D", header: "BRep_Curve3D.hxx", bycopy.} = object of BRepGCurve

  BRepCurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                         header: "BRep_CurveOn2Surfaces.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepCurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                             header: "BRep_CurveOnClosedSurface.hxx", bycopy.} = object of BRepCurveOnSurface

  BRepCurveOnSurface* {.importcpp: "BRep_CurveOnSurface",
                       header: "BRep_CurveOnSurface.hxx", bycopy.} = object of BRepGCurve

  BRepCurveRepresentation* {.importcpp: "BRep_CurveRepresentation",
                            header: "BRep_CurveRepresentation.hxx", bycopy.} = object of StandardTransient 

  BRepGCurve* {.importcpp: "BRep_GCurve", header: "BRep_GCurve.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepPointOnCurve* {.importcpp: "BRep_PointOnCurve",
                     header: "BRep_PointOnCurve.hxx", bycopy.} = object of BRepPointRepresentation

  BRepPointOnCurveOnSurface* {.importcpp: "BRep_PointOnCurveOnSurface",
                              header: "BRep_PointOnCurveOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface

  BRepPointOnSurface* {.importcpp: "BRep_PointOnSurface",
                       header: "BRep_PointOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface

  BRepPointRepresentation* {.importcpp: "BRep_PointRepresentation",
                            header: "BRep_PointRepresentation.hxx", bycopy.} = object of StandardTransient 

  BRepPointsOnSurface* {.importcpp: "BRep_PointsOnSurface",
                        header: "BRep_PointsOnSurface.hxx", bycopy.} = object of BRepPointRepresentation

  BRepPolygon3D* {.importcpp: "BRep_Polygon3D", header: "BRep_Polygon3D.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepPolygonOnClosedSurface* {.importcpp: "BRep_PolygonOnClosedSurface",
                               header: "BRep_PolygonOnClosedSurface.hxx", bycopy.} = object of BRepPolygonOnSurface

  BRepPolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx",
                                     bycopy.} = object of BRepPolygonOnTriangulation

  BRepPolygonOnSurface* {.importcpp: "BRep_PolygonOnSurface",
                         header: "BRep_PolygonOnSurface.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepPolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                               header: "BRep_PolygonOnTriangulation.hxx", bycopy.} = object of BRepCurveRepresentation

  BRepTEdge* {.importcpp: "BRep_TEdge", header: "BRep_TEdge.hxx", bycopy.} = object of TopoDS_TEdge 

  BRepTFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace 

  BRepTFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace 
  BRepTVertex* {.importcpp: "BRep_TVertex", header: "BRep_TVertex.hxx", bycopy.} = object of TopoDS_TVertex


