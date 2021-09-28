##  Created on: 1995-10-23
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepOffset_Analyse"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of Geom_Curve"
type
  BRepOffsetTool* {.importcpp: "BRepOffset_Tool", header: "BRepOffset_Tool.hxx",
                   bycopy.} = object ## ! <V1> is the FirstVertex ,<V2> is the Last Vertex of <Edge>
                                  ## ! taking account the orientation of Edge.


proc edgeVertices*(e: TopoDS_Edge; v1: var TopoDS_Vertex; v2: var TopoDS_Vertex) {.
    importcpp: "BRepOffset_Tool::EdgeVertices(@)", header: "BRepOffset_Tool.hxx".}
proc orientSection*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                   o1: var TopAbsOrientation; o2: var TopAbsOrientation) {.
    importcpp: "BRepOffset_Tool::OrientSection(@)", header: "BRepOffset_Tool.hxx".}
proc findCommonShapes*(theF1: TopoDS_Face; theF2: TopoDS_Face;
                      theLE: var TopToolsListOfShape;
                      theLV: var TopToolsListOfShape): bool {.
    importcpp: "BRepOffset_Tool::FindCommonShapes(@)",
    header: "BRepOffset_Tool.hxx".}
proc findCommonShapes*(theS1: TopoDS_Shape; theS2: TopoDS_Shape;
                      theType: TopAbsShapeEnum; theLSC: var TopToolsListOfShape): bool {.
    importcpp: "BRepOffset_Tool::FindCommonShapes(@)",
    header: "BRepOffset_Tool.hxx".}
proc inter3D*(f1: TopoDS_Face; f2: TopoDS_Face; lInt1: var TopToolsListOfShape;
             lInt2: var TopToolsListOfShape; side: TopAbsState; refEdge: TopoDS_Edge;
             refFace1: TopoDS_Face; refFace2: TopoDS_Face) {.
    importcpp: "BRepOffset_Tool::Inter3D(@)", header: "BRepOffset_Tool.hxx".}
proc tryProject*(f1: TopoDS_Face; f2: TopoDS_Face; edges: TopToolsListOfShape;
                lInt1: var TopToolsListOfShape; lInt2: var TopToolsListOfShape;
                side: TopAbsState; tolConf: cfloat): bool {.
    importcpp: "BRepOffset_Tool::TryProject(@)", header: "BRepOffset_Tool.hxx".}
proc pipeInter*(f1: TopoDS_Face; f2: TopoDS_Face; lInt1: var TopToolsListOfShape;
               lInt2: var TopToolsListOfShape; side: TopAbsState) {.
    importcpp: "BRepOffset_Tool::PipeInter(@)", header: "BRepOffset_Tool.hxx".}
proc inter2d*(f: TopoDS_Face; e1: TopoDS_Edge; e2: TopoDS_Edge;
             lv: var TopToolsListOfShape; tol: cfloat) {.
    importcpp: "BRepOffset_Tool::Inter2d(@)", header: "BRepOffset_Tool.hxx".}
proc interOrExtent*(f1: TopoDS_Face; f2: TopoDS_Face; lInt1: var TopToolsListOfShape;
                   lInt2: var TopToolsListOfShape; side: TopAbsState) {.
    importcpp: "BRepOffset_Tool::InterOrExtent(@)", header: "BRepOffset_Tool.hxx".}
proc checkBounds*(f: TopoDS_Face; analyse: BRepOffsetAnalyse; enlargeU: var bool;
                 enlargeVfirst: var bool; enlargeVlast: var bool) {.
    importcpp: "BRepOffset_Tool::CheckBounds(@)", header: "BRepOffset_Tool.hxx".}
proc enLargeFace*(f: TopoDS_Face; nf: var TopoDS_Face; changeGeom: bool;
                 upDatePCurve: bool = false; enlargeU: bool = true;
                 enlargeVfirst: bool = true; enlargeVlast: bool = true;
                 theExtensionMode: cint = 1; theLenBeforeUfirst: cfloat = -1.0;
                 theLenAfterUlast: cfloat = -1.0;
                 theLenBeforeVfirst: cfloat = -1.0; theLenAfterVlast: cfloat = -1.0): bool {.
    importcpp: "BRepOffset_Tool::EnLargeFace(@)", header: "BRepOffset_Tool.hxx".}
proc extentFace*(f: TopoDS_Face; constShapes: var TopToolsDataMapOfShapeShape;
                toBuild: var TopToolsDataMapOfShapeShape; side: TopAbsState;
                tolConf: cfloat; nf: var TopoDS_Face) {.
    importcpp: "BRepOffset_Tool::ExtentFace(@)", header: "BRepOffset_Tool.hxx".}
proc buildNeighbour*(w: TopoDS_Wire; f: TopoDS_Face;
                    nOnV1: var TopToolsDataMapOfShapeShape;
                    nOnV2: var TopToolsDataMapOfShapeShape) {.
    importcpp: "BRepOffset_Tool::BuildNeighbour(@)", header: "BRepOffset_Tool.hxx".}
proc mapVertexEdges*(s: TopoDS_Shape; mve: var TopToolsDataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Tool::MapVertexEdges(@)", header: "BRepOffset_Tool.hxx".}
proc deboucle3D*(s: TopoDS_Shape; boundary: TopToolsMapOfShape): TopoDS_Shape {.
    importcpp: "BRepOffset_Tool::Deboucle3D(@)", header: "BRepOffset_Tool.hxx".}
proc correctOrientation*(si: TopoDS_Shape; newEdges: TopToolsIndexedMapOfShape;
                        asDes: var Handle[BRepAlgoAsDes];
                        initOffset: var BRepAlgoImage; offset: cfloat) {.
    importcpp: "BRepOffset_Tool::CorrectOrientation(@)",
    header: "BRepOffset_Tool.hxx".}
proc gabarit*(aCurve: Handle[GeomCurve]): cfloat {.
    importcpp: "BRepOffset_Tool::Gabarit(@)", header: "BRepOffset_Tool.hxx".}
proc checkPlanesNormals*(theFace1: TopoDS_Face; theFace2: TopoDS_Face;
                        theTolAng: cfloat = 1.e-8): bool {.
    importcpp: "BRepOffset_Tool::CheckPlanesNormals(@)",
    header: "BRepOffset_Tool.hxx".}

























