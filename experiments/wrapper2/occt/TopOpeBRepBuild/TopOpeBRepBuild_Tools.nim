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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TopOpeBRepDS/TopOpeBRepDS_IndexedDataMapOfShapeWithState,
  ../TopAbs/TopAbs_State, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape,
  ../TopOpeBRepDS/TopOpeBRepDS_DataMapOfShapeState,
  ../TopTools/TopTools_IndexedMapOfShape, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_IndexedMapOfOrientedShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepTool_ShapeClassifier"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Vec"
discard "forward decl of TopoDS_Wire"
type
  TopOpeBRepBuild_Tools* {.importcpp: "TopOpeBRepBuild_Tools",
                          header: "TopOpeBRepBuild_Tools.hxx", bycopy.} = object


proc FindState*(aVertex: TopoDS_Shape; aState: TopAbs_State;
               aShapeEnum: TopAbs_ShapeEnum;
               aMapVertexEdges: TopTools_IndexedDataMapOfShapeListOfShape;
               aMapProcessedVertices: var TopTools_MapOfShape;
               aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.
    importcpp: "TopOpeBRepBuild_Tools::FindState(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc PropagateState*(aSplEdgesState: TopOpeBRepDS_DataMapOfShapeState;
                    anEdgesToRestMap: TopTools_IndexedMapOfShape;
                    aShapeEnum1: TopAbs_ShapeEnum; aShapeEnum2: TopAbs_ShapeEnum;
                    aShapeClassifier: var TopOpeBRepTool_ShapeClassifier;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState;
                    anUnkStateShapes: TopTools_MapOfShape) {.
    importcpp: "TopOpeBRepBuild_Tools::PropagateState(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc FindStateThroughVertex*(aShape: TopoDS_Shape; aShapeClassifier: var TopOpeBRepTool_ShapeClassifier;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState;
                            anAvoidSubshMap: TopTools_MapOfShape): TopAbs_State {.
    importcpp: "TopOpeBRepBuild_Tools::FindStateThroughVertex(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc PropagateStateForWires*(aFacesToRestMap: TopTools_IndexedMapOfShape;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState) {.
    importcpp: "TopOpeBRepBuild_Tools::PropagateStateForWires(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc SpreadStateToChild*(aShape: TopoDS_Shape; aState: TopAbs_State;
    aMapOfShapeWithState: var TopOpeBRepDS_IndexedDataMapOfShapeWithState) {.
    importcpp: "TopOpeBRepBuild_Tools::SpreadStateToChild(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc FindState1*(anEdge: TopoDS_Shape; aState: TopAbs_State;
                aMapEdgesFaces: TopTools_IndexedDataMapOfShapeListOfShape;
                aMapProcessedVertices: var TopTools_MapOfShape;
                aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.
    importcpp: "TopOpeBRepBuild_Tools::FindState1(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc FindState2*(anEdge: TopoDS_Shape; aState: TopAbs_State;
                aMapEdgesFaces: TopTools_IndexedDataMapOfShapeListOfShape;
                aMapProcessedEdges: var TopTools_MapOfShape;
                aMapVs: var TopOpeBRepDS_DataMapOfShapeState) {.
    importcpp: "TopOpeBRepBuild_Tools::FindState2(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc GetAdjacentFace*(aFaceObj: TopoDS_Shape; anEObj: TopoDS_Shape;
                     anEdgeFaceMap: TopTools_IndexedDataMapOfShapeListOfShape;
                     anAdjFaceObj: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Tools::GetAdjacentFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc GetNormalToFaceOnEdge*(aFObj: TopoDS_Face; anEdgeObj: TopoDS_Edge;
                           aDirNormal: var gp_Vec) {.
    importcpp: "TopOpeBRepBuild_Tools::GetNormalToFaceOnEdge(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc GetNormalInNearestPoint*(aFace: TopoDS_Face; anEdge: TopoDS_Edge;
                             aNormal: var gp_Vec) {.
    importcpp: "TopOpeBRepBuild_Tools::GetNormalInNearestPoint(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc GetTangentToEdgeEdge*(aFObj: TopoDS_Face; anEdgeObj: TopoDS_Edge;
                          aOriEObj: TopoDS_Edge; aTangent: var gp_Vec): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Tools::GetTangentToEdgeEdge(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc GetTangentToEdge*(anEdgeObj: TopoDS_Edge; aTangent: var gp_Vec): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Tools::GetTangentToEdge(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc UpdatePCurves*(aWire: TopoDS_Wire; fromFace: TopoDS_Face; toFace: TopoDS_Face) {.
    importcpp: "TopOpeBRepBuild_Tools::UpdatePCurves(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc UpdateEdgeOnPeriodicalFace*(aEdgeToUpdate: TopoDS_Edge; OldFace: TopoDS_Face;
                                NewFace: TopoDS_Face) {.
    importcpp: "TopOpeBRepBuild_Tools::UpdateEdgeOnPeriodicalFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc UpdateEdgeOnFace*(aEdgeToUpdate: TopoDS_Edge; OldFace: TopoDS_Face;
                      NewFace: TopoDS_Face) {.
    importcpp: "TopOpeBRepBuild_Tools::UpdateEdgeOnFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc IsDegEdgesTheSame*(anE1: TopoDS_Shape; anE2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Tools::IsDegEdgesTheSame(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc NormalizeFace*(oldFace: TopoDS_Shape; corrFace: var TopoDS_Shape) {.
    importcpp: "TopOpeBRepBuild_Tools::NormalizeFace(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc CorrectFace2d*(oldFace: TopoDS_Shape; corrFace: var TopoDS_Shape;
                   aSourceShapes: TopTools_IndexedMapOfOrientedShape;
    aMapOfCorrect2dEdges: var TopTools_IndexedDataMapOfShapeShape) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectFace2d(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc CorrectTolerances*(`aS`: TopoDS_Shape; aTolMax: Standard_Real = 0.0001) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectTolerances(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc CorrectCurveOnSurface*(`aS`: TopoDS_Shape; aTolMax: Standard_Real = 0.0001) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectCurveOnSurface(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc CorrectPointOnCurve*(`aS`: TopoDS_Shape; aTolMax: Standard_Real = 0.0001) {.
    importcpp: "TopOpeBRepBuild_Tools::CorrectPointOnCurve(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}
proc CheckFaceClosed2d*(theFace: TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Tools::CheckFaceClosed2d(@)",
    header: "TopOpeBRepBuild_Tools.hxx".}