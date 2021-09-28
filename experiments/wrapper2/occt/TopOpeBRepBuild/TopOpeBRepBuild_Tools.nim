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
               aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.
    importcpp: "TopOpeBRepBuild_Tools::FindState(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc propagateState*(aSplEdgesState: TopOpeBRepDS_DataMapOfShapeState;
                    anEdgesToRestMap: TopToolsIndexedMapOfShape;
                    aShapeEnum1: TopAbsShapeEnum; aShapeEnum2: TopAbsShapeEnum;
                    aShapeClassifier: var TopOpeBRepToolShapeClassifier;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState;
                    anUnkStateShapes: TopToolsMapOfShape) {.
    importcpp: "TopOpeBRepBuild_Tools::PropagateState(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc findStateThroughVertex*(aShape: TopoDS_Shape; aShapeClassifier: var TopOpeBRepToolShapeClassifier;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState;
                            anAvoidSubshMap: TopToolsMapOfShape): TopAbsState {.
    importcpp: "TopOpeBRepBuild_Tools::FindStateThroughVertex(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc propagateStateForWires*(aFacesToRestMap: TopToolsIndexedMapOfShape;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState) {.
    importcpp: "TopOpeBRepBuild_Tools::PropagateStateForWires(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc spreadStateToChild*(aShape: TopoDS_Shape; aState: TopAbsState;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState) {.
    importcpp: "TopOpeBRepBuild_Tools::SpreadStateToChild(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc findState1*(anEdge: TopoDS_Shape; aState: TopAbsState;
                aMapEdgesFaces: TopToolsIndexedDataMapOfShapeListOfShape;
                aMapProcessedVertices: var TopToolsMapOfShape;
                aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.
    importcpp: "TopOpeBRepBuild_Tools::FindState1(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc findState2*(anEdge: TopoDS_Shape; aState: TopAbsState;
                aMapEdgesFaces: TopToolsIndexedDataMapOfShapeListOfShape;
                aMapProcessedEdges: var TopToolsMapOfShape;
                aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.
    importcpp: "TopOpeBRepBuild_Tools::FindState2(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc getAdjacentFace*(aFaceObj: TopoDS_Shape; anEObj: TopoDS_Shape;
                     anEdgeFaceMap: TopToolsIndexedDataMapOfShapeListOfShape;
                     anAdjFaceObj: var TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepBuild_Tools::GetAdjacentFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc getNormalToFaceOnEdge*(aFObj: TopoDS_Face; anEdgeObj: TopoDS_Edge;
                           aDirNormal: var Vec) {.
    importcpp: "TopOpeBRepBuild_Tools::GetNormalToFaceOnEdge(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc getNormalInNearestPoint*(aFace: TopoDS_Face; anEdge: TopoDS_Edge;
                             aNormal: var Vec) {.
    importcpp: "TopOpeBRepBuild_Tools::GetNormalInNearestPoint(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc getTangentToEdgeEdge*(aFObj: TopoDS_Face; anEdgeObj: TopoDS_Edge;
                          aOriEObj: TopoDS_Edge; aTangent: var Vec): bool {.
    importcpp: "TopOpeBRepBuild_Tools::GetTangentToEdgeEdge(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc getTangentToEdge*(anEdgeObj: TopoDS_Edge; aTangent: var Vec): bool {.
    importcpp: "TopOpeBRepBuild_Tools::GetTangentToEdge(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc updatePCurves*(aWire: TopoDS_Wire; fromFace: TopoDS_Face; toFace: TopoDS_Face) {.
    importcpp: "TopOpeBRepBuild_Tools::UpdatePCurves(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc updateEdgeOnPeriodicalFace*(aEdgeToUpdate: TopoDS_Edge; oldFace: TopoDS_Face;
                                newFace: TopoDS_Face) {.
    importcpp: "TopOpeBRepBuild_Tools::UpdateEdgeOnPeriodicalFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc updateEdgeOnFace*(aEdgeToUpdate: TopoDS_Edge; oldFace: TopoDS_Face;
                      newFace: TopoDS_Face) {.
    importcpp: "TopOpeBRepBuild_Tools::UpdateEdgeOnFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc isDegEdgesTheSame*(anE1: TopoDS_Shape; anE2: TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepBuild_Tools::IsDegEdgesTheSame(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc normalizeFace*(oldFace: TopoDS_Shape; corrFace: var TopoDS_Shape) {.
    importcpp: "TopOpeBRepBuild_Tools::NormalizeFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc correctFace2d*(oldFace: TopoDS_Shape; corrFace: var TopoDS_Shape;
                   aSourceShapes: TopToolsIndexedMapOfOrientedShape;
                   aMapOfCorrect2dEdges: var TopToolsIndexedDataMapOfShapeShape) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectFace2d(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc correctTolerances*(`aS`: TopoDS_Shape; aTolMax: cfloat = 0.0001) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectTolerances(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc correctCurveOnSurface*(`aS`: TopoDS_Shape; aTolMax: cfloat = 0.0001) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectCurveOnSurface(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc correctPointOnCurve*(`aS`: TopoDS_Shape; aTolMax: cfloat = 0.0001) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectPointOnCurve(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc checkFaceClosed2d*(theFace: TopoDS_Face): bool {.
    importcpp: "TopOpeBRepBuild_Tools::CheckFaceClosed2d(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}

























