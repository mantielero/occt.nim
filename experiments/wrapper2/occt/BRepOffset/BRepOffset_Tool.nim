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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ListOfShape,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Real,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_IndexedMapOfShape

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
  BRepOffset_Tool* {.importcpp: "BRepOffset_Tool", header: "BRepOffset_Tool.hxx",
                    bycopy.} = object ## ! <V1> is the FirstVertex ,<V2> is the Last Vertex of <Edge>
                                   ## ! taking account the orientation of Edge.


proc EdgeVertices*(E: TopoDS_Edge; V1: var TopoDS_Vertex; V2: var TopoDS_Vertex) {.
    importcpp: "BRepOffset_Tool::EdgeVertices(@)", header: "BRepOffset_Tool.hxx".}
proc OrientSection*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face;
                   O1: var TopAbs_Orientation; O2: var TopAbs_Orientation) {.
    importcpp: "BRepOffset_Tool::OrientSection(@)", header: "BRepOffset_Tool.hxx".}
proc FindCommonShapes*(theF1: TopoDS_Face; theF2: TopoDS_Face;
                      theLE: var TopTools_ListOfShape;
                      theLV: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "BRepOffset_Tool::FindCommonShapes(@)",
    header: "BRepOffset_Tool.hxx".}
proc FindCommonShapes*(theS1: TopoDS_Shape; theS2: TopoDS_Shape;
                      theType: TopAbs_ShapeEnum; theLSC: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "BRepOffset_Tool::FindCommonShapes(@)",
    header: "BRepOffset_Tool.hxx".}
proc Inter3D*(F1: TopoDS_Face; F2: TopoDS_Face; LInt1: var TopTools_ListOfShape;
             LInt2: var TopTools_ListOfShape; Side: TopAbs_State;
             RefEdge: TopoDS_Edge; RefFace1: TopoDS_Face; RefFace2: TopoDS_Face) {.
    importcpp: "BRepOffset_Tool::Inter3D(@)", header: "BRepOffset_Tool.hxx".}
proc TryProject*(F1: TopoDS_Face; F2: TopoDS_Face; Edges: TopTools_ListOfShape;
                LInt1: var TopTools_ListOfShape; LInt2: var TopTools_ListOfShape;
                Side: TopAbs_State; TolConf: Standard_Real): Standard_Boolean {.
    importcpp: "BRepOffset_Tool::TryProject(@)", header: "BRepOffset_Tool.hxx".}
proc PipeInter*(F1: TopoDS_Face; F2: TopoDS_Face; LInt1: var TopTools_ListOfShape;
               LInt2: var TopTools_ListOfShape; Side: TopAbs_State) {.
    importcpp: "BRepOffset_Tool::PipeInter(@)", header: "BRepOffset_Tool.hxx".}
proc Inter2d*(F: TopoDS_Face; E1: TopoDS_Edge; E2: TopoDS_Edge;
             LV: var TopTools_ListOfShape; Tol: Standard_Real) {.
    importcpp: "BRepOffset_Tool::Inter2d(@)", header: "BRepOffset_Tool.hxx".}
proc InterOrExtent*(F1: TopoDS_Face; F2: TopoDS_Face;
                   LInt1: var TopTools_ListOfShape;
                   LInt2: var TopTools_ListOfShape; Side: TopAbs_State) {.
    importcpp: "BRepOffset_Tool::InterOrExtent(@)", header: "BRepOffset_Tool.hxx".}
proc CheckBounds*(F: TopoDS_Face; Analyse: BRepOffset_Analyse;
                 enlargeU: var Standard_Boolean;
                 enlargeVfirst: var Standard_Boolean;
                 enlargeVlast: var Standard_Boolean) {.
    importcpp: "BRepOffset_Tool::CheckBounds(@)", header: "BRepOffset_Tool.hxx".}
proc EnLargeFace*(F: TopoDS_Face; NF: var TopoDS_Face; ChangeGeom: Standard_Boolean;
                 UpDatePCurve: Standard_Boolean = Standard_False;
                 enlargeU: Standard_Boolean = Standard_True;
                 enlargeVfirst: Standard_Boolean = Standard_True;
                 enlargeVlast: Standard_Boolean = Standard_True;
                 theExtensionMode: Standard_Integer = 1;
                 theLenBeforeUfirst: Standard_Real = -1.0;
                 theLenAfterUlast: Standard_Real = -1.0;
                 theLenBeforeVfirst: Standard_Real = -1.0;
                 theLenAfterVlast: Standard_Real = -1.0): Standard_Boolean {.
    importcpp: "BRepOffset_Tool::EnLargeFace(@)", header: "BRepOffset_Tool.hxx".}
proc ExtentFace*(F: TopoDS_Face; ConstShapes: var TopTools_DataMapOfShapeShape;
                ToBuild: var TopTools_DataMapOfShapeShape; Side: TopAbs_State;
                TolConf: Standard_Real; NF: var TopoDS_Face) {.
    importcpp: "BRepOffset_Tool::ExtentFace(@)", header: "BRepOffset_Tool.hxx".}
proc BuildNeighbour*(W: TopoDS_Wire; F: TopoDS_Face;
                    NOnV1: var TopTools_DataMapOfShapeShape;
                    NOnV2: var TopTools_DataMapOfShapeShape) {.
    importcpp: "BRepOffset_Tool::BuildNeighbour(@)", header: "BRepOffset_Tool.hxx".}
proc MapVertexEdges*(S: TopoDS_Shape; MVE: var TopTools_DataMapOfShapeListOfShape) {.
    importcpp: "BRepOffset_Tool::MapVertexEdges(@)", header: "BRepOffset_Tool.hxx".}
proc Deboucle3D*(S: TopoDS_Shape; Boundary: TopTools_MapOfShape): TopoDS_Shape {.
    importcpp: "BRepOffset_Tool::Deboucle3D(@)", header: "BRepOffset_Tool.hxx".}
proc CorrectOrientation*(SI: TopoDS_Shape; NewEdges: TopTools_IndexedMapOfShape;
                        AsDes: var handle[BRepAlgo_AsDes];
                        InitOffset: var BRepAlgo_Image; Offset: Standard_Real) {.
    importcpp: "BRepOffset_Tool::CorrectOrientation(@)",
    header: "BRepOffset_Tool.hxx".}
proc Gabarit*(aCurve: handle[Geom_Curve]): Standard_Real {.
    importcpp: "BRepOffset_Tool::Gabarit(@)", header: "BRepOffset_Tool.hxx".}
proc CheckPlanesNormals*(theFace1: TopoDS_Face; theFace2: TopoDS_Face;
                        theTolAng: Standard_Real = 1.e-8): Standard_Boolean {.
    importcpp: "BRepOffset_Tool::CheckPlanesNormals(@)",
    header: "BRepOffset_Tool.hxx".}