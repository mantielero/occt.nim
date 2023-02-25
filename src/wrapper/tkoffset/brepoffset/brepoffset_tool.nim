import brepoffset_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/topabs/topabs_types
import ../../tkbrep/toptools/toptools_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types
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

proc EdgeVertices*(E: TopoDS_Edge; V1: var TopoDS_Vertex; V2: var TopoDS_Vertex) {.cdecl,
    importcpp: "BRepOffset_Tool::EdgeVertices(@)".}
proc OrientSection*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face;
                   O1: var TopAbs_Orientation; O2: var TopAbs_Orientation) {.cdecl,
    importcpp: "BRepOffset_Tool::OrientSection(@)".}
proc FindCommonShapes*(theF1: TopoDS_Face; theF2: TopoDS_Face;
                      theLE: var TopTools_ListOfShape;
                      theLV: var TopTools_ListOfShape): bool {.cdecl,
    importcpp: "BRepOffset_Tool::FindCommonShapes(@)".}
proc FindCommonShapes*(theS1: TopoDS_Shape; theS2: TopoDS_Shape;
                      theType: TopAbs_ShapeEnum; theLSC: var TopTools_ListOfShape): bool {.
    cdecl, importcpp: "BRepOffset_Tool::FindCommonShapes(@)".}
proc Inter3D*(F1: TopoDS_Face; F2: TopoDS_Face; LInt1: var TopTools_ListOfShape;
             LInt2: var TopTools_ListOfShape; Side: TopAbs_State;
             RefEdge: TopoDS_Edge; RefFace1: TopoDS_Face; RefFace2: TopoDS_Face) {.
    cdecl, importcpp: "BRepOffset_Tool::Inter3D(@)".}
proc TryProject*(F1: TopoDS_Face; F2: TopoDS_Face; Edges: TopTools_ListOfShape;
                LInt1: var TopTools_ListOfShape; LInt2: var TopTools_ListOfShape;
                Side: TopAbs_State; TolConf: cfloat): bool {.cdecl,
    importcpp: "BRepOffset_Tool::TryProject(@)".}
proc PipeInter*(F1: TopoDS_Face; F2: TopoDS_Face; LInt1: var TopTools_ListOfShape;
               LInt2: var TopTools_ListOfShape; Side: TopAbs_State) {.cdecl,
    importcpp: "BRepOffset_Tool::PipeInter(@)".}
proc Inter2d*(F: TopoDS_Face; E1: TopoDS_Edge; E2: TopoDS_Edge;
             LV: var TopTools_ListOfShape; Tol: cfloat) {.cdecl,
    importcpp: "BRepOffset_Tool::Inter2d(@)".}
proc InterOrExtent*(F1: TopoDS_Face; F2: TopoDS_Face;
                   LInt1: var TopTools_ListOfShape;
                   LInt2: var TopTools_ListOfShape; Side: TopAbs_State) {.cdecl,
    importcpp: "BRepOffset_Tool::InterOrExtent(@)".}
proc CheckBounds*(F: TopoDS_Face; Analyse: BRepOffset_Analyse; enlargeU: var bool;
                 enlargeVfirst: var bool; enlargeVlast: var bool) {.cdecl,
    importcpp: "BRepOffset_Tool::CheckBounds(@)".}
proc EnLargeFace*(F: TopoDS_Face; NF: var TopoDS_Face; ChangeGeom: bool;
                 UpDatePCurve: bool = false; enlargeU: bool = true;
                 enlargeVfirst: bool = true; enlargeVlast: bool = true;
                 theExtensionMode: cint = 1; theLenBeforeUfirst: cfloat = -1.0;
                 theLenAfterUlast: cfloat = -1.0;
                 theLenBeforeVfirst: cfloat = -1.0; theLenAfterVlast: cfloat = -1.0): bool {.
    cdecl, importcpp: "BRepOffset_Tool::EnLargeFace(@)".}
proc ExtentFace*(F: TopoDS_Face; ConstShapes: var TopTools_DataMapOfShapeShape;
                ToBuild: var TopTools_DataMapOfShapeShape; Side: TopAbs_State;
                TolConf: cfloat; NF: var TopoDS_Face) {.cdecl,
    importcpp: "BRepOffset_Tool::ExtentFace(@)".}
proc BuildNeighbour*(W: TopoDS_Wire; F: TopoDS_Face;
                    NOnV1: var TopTools_DataMapOfShapeShape;
                    NOnV2: var TopTools_DataMapOfShapeShape) {.cdecl,
    importcpp: "BRepOffset_Tool::BuildNeighbour(@)".}
proc MapVertexEdges*(S: TopoDS_Shape; MVE: var TopTools_DataMapOfShapeListOfShape) {.
    cdecl, importcpp: "BRepOffset_Tool::MapVertexEdges(@)".}
proc Deboucle3D*(S: TopoDS_Shape; Boundary: TopTools_MapOfShape): TopoDS_Shape {.
    cdecl, importcpp: "BRepOffset_Tool::Deboucle3D(@)".}
# proc CorrectOrientation*(SI: TopoDS_Shape; NewEdges: TopTools_IndexedMapOfShape;
#                         AsDes: var Handle[BRepAlgo_AsDes];
#                         InitOffset: var BRepAlgo_Image; Offset: cfloat) {.cdecl,
#     importcpp: "BRepOffset_Tool::CorrectOrientation(@)".}
proc Gabarit*(aCurve: Handle[Geom_Curve]): cfloat {.cdecl,
    importcpp: "BRepOffset_Tool::Gabarit(@)".}
proc CheckPlanesNormals*(theFace1: TopoDS_Face; theFace2: TopoDS_Face;
                        theTolAng: cfloat = 1.0e-8): bool {.cdecl,
    importcpp: "BRepOffset_Tool::CheckPlanesNormals(@)".}