##  Created on: 1999-11-02
##  Created by: Peter KURNEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepTool_ShapeClassifier"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Vec"
discard "forward decl of TopoDS_Wire"
type
  TopOpeBRepBuildTools* {.importcpp: "TopOpeBRepBuild_Tools",
                         header: "TopOpeBRepBuild_Tools.hxx", bycopy.} = object


proc findState*(aVertex: TopoDS_Shape; aState: TopAbsState;
               aShapeEnum: TopAbsShapeEnum;
               aMapVertexEdges: TopToolsIndexedDataMapOfShapeListOfShape;
               aMapProcessedVertices: var TopToolsMapOfShape;
               aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::FindState(@)", dynlib: tkbool.}
proc propagateState*(aSplEdgesState: TopOpeBRepDS_DataMapOfShapeState;
                    anEdgesToRestMap: TopToolsIndexedMapOfShape;
                    aShapeEnum1: TopAbsShapeEnum; aShapeEnum2: TopAbsShapeEnum;
                    aShapeClassifier: var TopOpeBRepToolShapeClassifier;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState;
                    anUnkStateShapes: TopToolsMapOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::PropagateState(@)", dynlib: tkbool.}
proc findStateThroughVertex*(aShape: TopoDS_Shape; aShapeClassifier: var TopOpeBRepToolShapeClassifier;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState;
                            anAvoidSubshMap: TopToolsMapOfShape): TopAbsState {.
    cdecl, importcpp: "TopOpeBRepBuild_Tools::FindStateThroughVertex(@)",
    dynlib: tkbool.}
proc propagateStateForWires*(aFacesToRestMap: TopToolsIndexedMapOfShape;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::PropagateStateForWires(@)", dynlib: tkbool.}
proc spreadStateToChild*(aShape: TopoDS_Shape; aState: TopAbsState;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::SpreadStateToChild(@)", dynlib: tkbool.}
proc findState1*(anEdge: TopoDS_Shape; aState: TopAbsState;
                aMapEdgesFaces: TopToolsIndexedDataMapOfShapeListOfShape;
                aMapProcessedVertices: var TopToolsMapOfShape;
                aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::FindState1(@)", dynlib: tkbool.}
proc findState2*(anEdge: TopoDS_Shape; aState: TopAbsState;
                aMapEdgesFaces: TopToolsIndexedDataMapOfShapeListOfShape;
                aMapProcessedEdges: var TopToolsMapOfShape;
                aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::FindState2(@)", dynlib: tkbool.}
proc getAdjacentFace*(aFaceObj: TopoDS_Shape; anEObj: TopoDS_Shape;
                     anEdgeFaceMap: TopToolsIndexedDataMapOfShapeListOfShape;
                     anAdjFaceObj: var TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::GetAdjacentFace(@)", dynlib: tkbool.}
proc getNormalToFaceOnEdge*(aFObj: TopoDS_Face; anEdgeObj: TopoDS_Edge;
                           aDirNormal: var Vec) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::GetNormalToFaceOnEdge(@)", dynlib: tkbool.}
proc getNormalInNearestPoint*(aFace: TopoDS_Face; anEdge: TopoDS_Edge;
                             aNormal: var Vec) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::GetNormalInNearestPoint(@)", dynlib: tkbool.}
proc getTangentToEdgeEdge*(aFObj: TopoDS_Face; anEdgeObj: TopoDS_Edge;
                          aOriEObj: TopoDS_Edge; aTangent: var Vec): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::GetTangentToEdgeEdge(@)", dynlib: tkbool.}
proc getTangentToEdge*(anEdgeObj: TopoDS_Edge; aTangent: var Vec): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::GetTangentToEdge(@)", dynlib: tkbool.}
proc updatePCurves*(aWire: TopoDS_Wire; fromFace: TopoDS_Face; toFace: TopoDS_Face) {.
    cdecl, importcpp: "TopOpeBRepBuild_Tools::UpdatePCurves(@)", dynlib: tkbool.}
proc updateEdgeOnPeriodicalFace*(aEdgeToUpdate: TopoDS_Edge; oldFace: TopoDS_Face;
                                newFace: TopoDS_Face) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::UpdateEdgeOnPeriodicalFace(@)",
    dynlib: tkbool.}
proc updateEdgeOnFace*(aEdgeToUpdate: TopoDS_Edge; oldFace: TopoDS_Face;
                      newFace: TopoDS_Face) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::UpdateEdgeOnFace(@)", dynlib: tkbool.}
proc isDegEdgesTheSame*(anE1: TopoDS_Shape; anE2: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::IsDegEdgesTheSame(@)", dynlib: tkbool.}
proc normalizeFace*(oldFace: TopoDS_Shape; corrFace: var TopoDS_Shape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::NormalizeFace(@)", dynlib: tkbool.}
proc correctFace2d*(oldFace: TopoDS_Shape; corrFace: var TopoDS_Shape;
                   aSourceShapes: TopToolsIndexedMapOfOrientedShape;
                   aMapOfCorrect2dEdges: var TopToolsIndexedDataMapOfShapeShape) {.
    cdecl, importcpp: "TopOpeBRepBuild_Tools::CorrectFace2d(@)", dynlib: tkbool.}
proc correctTolerances*(`aS`: TopoDS_Shape; aTolMax: cfloat = 0.0001) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::CorrectTolerances(@)", dynlib: tkbool.}
proc correctCurveOnSurface*(`aS`: TopoDS_Shape; aTolMax: cfloat = 0.0001) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::CorrectCurveOnSurface(@)", dynlib: tkbool.}
proc correctPointOnCurve*(`aS`: TopoDS_Shape; aTolMax: cfloat = 0.0001) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::CorrectPointOnCurve(@)", dynlib: tkbool.}
proc checkFaceClosed2d*(theFace: TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools::CheckFaceClosed2d(@)", dynlib: tkbool.}