##  Created on: 1993-06-14
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_State, ../TopoDS/TopoDS_Shape,
  ../TopOpeBRepDS/TopOpeBRepDS_BuildTool, ../TopTools/TopTools_HArray1OfShape,
  ../TopTools/TopTools_DataMapOfIntegerListOfShape,
  ../TopTools/TopTools_HArray1OfListOfShape,
  ../TopOpeBRepDS/TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Solid, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Edge,
  ../TopTools/TopTools_IndexedMapOfShape, ../Standard/Standard_Integer,
  ../TopOpeBRepTool/TopOpeBRepTool_ShapeClassifier,
  ../TopTools/TopTools_MapOfShape, ../TCollection/TCollection_AsciiString,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape,
  ../TopTools/TopTools_IndexedMapOfOrientedShape,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopAbs/TopAbs_ShapeEnum,
  ../TopAbs/TopAbs_Orientation, ../TopTools/TopTools_DataMapOfIntegerShape,
  ../TopOpeBRepDS/TopOpeBRepDS_Config, ../Standard/Standard_Real,
  ../TopTools/TopTools_DataMapOfShapeInteger, ../Standard/Standard_Address

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of TopOpeBRepTool_ShapeExplorer"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
discard "forward decl of TopOpeBRepBuild_EdgeBuilder"
discard "forward decl of TopOpeBRepBuild_FaceBuilder"
discard "forward decl of TopOpeBRepBuild_SolidBuilder"
discard "forward decl of TopOpeBRepBuild_WireEdgeSet"
discard "forward decl of TopOpeBRepDS_PointIterator"
discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopOpeBRepBuild_GTopo"
discard "forward decl of TopOpeBRepBuild_ShellFaceSet"
discard "forward decl of TopOpeBRepDS_SurfaceIterator"
discard "forward decl of TopOpeBRepDS_CurveIterator"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
when defined(FillSolid):
  discard
## ! The Builder  algorithm    constructs   topological
## ! objects  from   an    existing  topology  and  new
## ! geometries attached to the topology. It is used to
## ! construct the result of a topological operation;
## ! the existing  topologies are the parts involved in
## ! the  topological  operation and the new geometries
## ! are the intersection lines and points.

type
  TopOpeBRepBuild_Builder* {.importcpp: "TopOpeBRepBuild_Builder",
                            header: "TopOpeBRepBuild_Builder.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## update
                                                                                ## the
                                                                                ## DS
                                                                                ## by
                                                                                ## creating
                                                                                ## new
                                                                                ## geometries.
                                                                                ##
                                                                                ## !
                                                                                ## create
                                                                                ## edges
                                                                                ## on
                                                                                ## the
                                                                                ## new
                                                                                ## curve
                                                                                ## <Icurv>.


proc constructTopOpeBRepBuild_Builder*(BT: TopOpeBRepDS_BuildTool): TopOpeBRepBuild_Builder {.
    constructor, importcpp: "TopOpeBRepBuild_Builder(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc destroyTopOpeBRepBuild_Builder*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "#.~TopOpeBRepBuild_Builder()",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc ChangeBuildTool*(this: var TopOpeBRepBuild_Builder): var TopOpeBRepDS_BuildTool {.
    importcpp: "ChangeBuildTool", header: "TopOpeBRepBuild_Builder.hxx".}
proc BuildTool*(this: TopOpeBRepBuild_Builder): TopOpeBRepDS_BuildTool {.
    noSideEffect, importcpp: "BuildTool", header: "TopOpeBRepBuild_Builder.hxx".}
proc Perform*(this: var TopOpeBRepBuild_Builder;
             HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc Perform*(this: var TopOpeBRepBuild_Builder;
             HDS: handle[TopOpeBRepDS_HDataStructure]; S1: TopoDS_Shape;
             S2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc DataStructure*(this: TopOpeBRepBuild_Builder): handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, importcpp: "DataStructure",
                                  header: "TopOpeBRepBuild_Builder.hxx".}
proc Clear*(this: var TopOpeBRepBuild_Builder) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeEdges*(this: var TopOpeBRepBuild_Builder; L1: TopTools_ListOfShape;
                TB1: TopAbs_State; L2: TopTools_ListOfShape; TB2: TopAbs_State;
                onA: Standard_Boolean = Standard_False;
                onB: Standard_Boolean = Standard_False;
                onAB: Standard_Boolean = Standard_False) {.importcpp: "MergeEdges",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeFaces*(this: var TopOpeBRepBuild_Builder; S1: TopTools_ListOfShape;
                TB1: TopAbs_State; S2: TopTools_ListOfShape; TB2: TopAbs_State;
                onA: Standard_Boolean = Standard_False;
                onB: Standard_Boolean = Standard_False;
                onAB: Standard_Boolean = Standard_False) {.importcpp: "MergeFaces",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeSolids*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape;
                 TB1: TopAbs_State; S2: TopoDS_Shape; TB2: TopAbs_State) {.
    importcpp: "MergeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeShapes*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape;
                 TB1: TopAbs_State; S2: TopoDS_Shape; TB2: TopAbs_State) {.
    importcpp: "MergeShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc End*(this: var TopOpeBRepBuild_Builder) {.importcpp: "End",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc Classify*(this: TopOpeBRepBuild_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "Classify", header: "TopOpeBRepBuild_Builder.hxx".}
proc ChangeClassify*(this: var TopOpeBRepBuild_Builder; B: Standard_Boolean) {.
    importcpp: "ChangeClassify", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeSolid*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State) {.
    importcpp: "MergeSolid", header: "TopOpeBRepBuild_Builder.hxx".}
proc NewVertex*(this: TopOpeBRepBuild_Builder; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "NewVertex", header: "TopOpeBRepBuild_Builder.hxx".}
proc NewEdges*(this: TopOpeBRepBuild_Builder; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "NewEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc NewFaces*(this: TopOpeBRepBuild_Builder; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "NewFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc IsSplit*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State): Standard_Boolean {.
    noSideEffect, importcpp: "IsSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc Splits*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Splits", header: "TopOpeBRepBuild_Builder.hxx".}
proc IsMerged*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State): Standard_Boolean {.
    noSideEffect, importcpp: "IsMerged", header: "TopOpeBRepBuild_Builder.hxx".}
proc Merged*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Merged", header: "TopOpeBRepBuild_Builder.hxx".}
proc InitSection*(this: var TopOpeBRepBuild_Builder) {.importcpp: "InitSection",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc SplitSectionEdges*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "SplitSectionEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc SplitSectionEdge*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape) {.
    importcpp: "SplitSectionEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc SectionCurves*(this: var TopOpeBRepBuild_Builder; L: var TopTools_ListOfShape) {.
    importcpp: "SectionCurves", header: "TopOpeBRepBuild_Builder.hxx".}
proc SectionEdges*(this: var TopOpeBRepBuild_Builder; L: var TopTools_ListOfShape) {.
    importcpp: "SectionEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc FillSecEdgeAncestorMap*(this: TopOpeBRepBuild_Builder;
                            aShapeRank: Standard_Integer;
                            aMapON: TopTools_MapOfShape;
                            anAncMap: var TopTools_DataMapOfShapeShape) {.
    noSideEffect, importcpp: "FillSecEdgeAncestorMap",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc Section*(this: var TopOpeBRepBuild_Builder; L: var TopTools_ListOfShape) {.
    importcpp: "Section", header: "TopOpeBRepBuild_Builder.hxx".}
proc Section*(this: var TopOpeBRepBuild_Builder): TopTools_ListOfShape {.
    importcpp: "Section", header: "TopOpeBRepBuild_Builder.hxx".}
proc BuildVertices*(this: var TopOpeBRepBuild_Builder;
                   DS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "BuildVertices", header: "TopOpeBRepBuild_Builder.hxx".}
proc BuildEdges*(this: var TopOpeBRepBuild_Builder;
                DS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "BuildEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc MSplit*(this: TopOpeBRepBuild_Builder; s: TopAbs_State): TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    noSideEffect, importcpp: "MSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc ChangeMSplit*(this: var TopOpeBRepBuild_Builder; s: TopAbs_State): var TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {.
    importcpp: "ChangeMSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc MakeEdges*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
               B: var TopOpeBRepBuild_EdgeBuilder; L: var TopTools_ListOfShape) {.
    importcpp: "MakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc MakeFaces*(this: var TopOpeBRepBuild_Builder; F: TopoDS_Shape;
               B: var TopOpeBRepBuild_FaceBuilder; L: var TopTools_ListOfShape) {.
    importcpp: "MakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc MakeSolids*(this: var TopOpeBRepBuild_Builder;
                B: var TopOpeBRepBuild_SolidBuilder; L: var TopTools_ListOfShape) {.
    importcpp: "MakeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc MakeShells*(this: var TopOpeBRepBuild_Builder;
                B: var TopOpeBRepBuild_SolidBuilder; L: var TopTools_ListOfShape) {.
    importcpp: "MakeShells", header: "TopOpeBRepBuild_Builder.hxx".}
proc ChangeSplit*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State): var TopTools_ListOfShape {.
    importcpp: "ChangeSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc Opec12*(this: TopOpeBRepBuild_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "Opec12", header: "TopOpeBRepBuild_Builder.hxx".}
proc Opec21*(this: TopOpeBRepBuild_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "Opec21", header: "TopOpeBRepBuild_Builder.hxx".}
proc Opecom*(this: TopOpeBRepBuild_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "Opecom", header: "TopOpeBRepBuild_Builder.hxx".}
proc Opefus*(this: TopOpeBRepBuild_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "Opefus", header: "TopOpeBRepBuild_Builder.hxx".}
proc ShapePosition*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                   LS: TopTools_ListOfShape): TopAbs_State {.
    importcpp: "ShapePosition", header: "TopOpeBRepBuild_Builder.hxx".}
proc KeepShape*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape;
               LS: TopTools_ListOfShape; T: TopAbs_State): Standard_Boolean {.
    importcpp: "KeepShape", header: "TopOpeBRepBuild_Builder.hxx".}
proc TopType*(S: TopoDS_Shape): TopAbs_ShapeEnum {.
    importcpp: "TopOpeBRepBuild_Builder::TopType(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc Reverse*(T1: TopAbs_State; T2: TopAbs_State): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::Reverse(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc Orient*(O: TopAbs_Orientation; R: Standard_Boolean): TopAbs_Orientation {.
    importcpp: "TopOpeBRepBuild_Builder::Orient(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc FindSameDomain*(this: TopOpeBRepBuild_Builder; L1: var TopTools_ListOfShape;
                    L2: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "FindSameDomain", header: "TopOpeBRepBuild_Builder.hxx".}
proc FindSameDomainSameOrientation*(this: TopOpeBRepBuild_Builder;
                                   LSO: var TopTools_ListOfShape;
                                   LDO: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "FindSameDomainSameOrientation",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc MapShapes*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape; S2: TopoDS_Shape) {.
    importcpp: "MapShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc ClearMaps*(this: var TopOpeBRepBuild_Builder) {.importcpp: "ClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc FindSameRank*(this: TopOpeBRepBuild_Builder; L1: TopTools_ListOfShape;
                  R: Standard_Integer; L2: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "FindSameRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc ShapeRank*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "ShapeRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc IsShapeOf*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; I12: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsShapeOf", header: "TopOpeBRepBuild_Builder.hxx".}
proc Contains*(S: TopoDS_Shape; L: TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::Contains(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc FindIsKPart*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "FindIsKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc IsKPart*(this: TopOpeBRepBuild_Builder): Standard_Integer {.noSideEffect,
    importcpp: "IsKPart", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPart*(this: var TopOpeBRepBuild_Builder) {.importcpp: "MergeKPart",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPart*(this: var TopOpeBRepBuild_Builder; TB1: TopAbs_State;
                TB2: TopAbs_State) {.importcpp: "MergeKPart",
                                   header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPartiskole*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "MergeKPartiskole", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPartiskoletge*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "MergeKPartiskoletge", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPartisdisj*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "MergeKPartisdisj", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPartisfafa*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "MergeKPartisfafa", header: "TopOpeBRepBuild_Builder.hxx".}
proc MergeKPartissoso*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "MergeKPartissoso", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskole*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "KPiskole", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskoletge*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "KPiskoletge", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPisdisj*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "KPisdisj", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPisfafa*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "KPisfafa", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPissoso*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "KPissoso", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPClearMaps*(this: var TopOpeBRepBuild_Builder) {.importcpp: "KPClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc KPlhg*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; T: TopAbs_ShapeEnum;
           L: var TopTools_ListOfShape): Standard_Integer {.noSideEffect,
    importcpp: "KPlhg", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPlhg*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; T: TopAbs_ShapeEnum): Standard_Integer {.
    noSideEffect, importcpp: "KPlhg", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPlhsd*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; T: TopAbs_ShapeEnum;
            L: var TopTools_ListOfShape): Standard_Integer {.noSideEffect,
    importcpp: "KPlhsd", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPlhsd*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; T: TopAbs_ShapeEnum): Standard_Integer {.
    noSideEffect, importcpp: "KPlhsd", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPclasSS*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape;
              exceptLS1: TopTools_ListOfShape; S2: TopoDS_Shape): TopAbs_State {.
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPclasSS*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape;
              exceptS1: TopoDS_Shape; S2: TopoDS_Shape): TopAbs_State {.
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPclasSS*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape; S2: TopoDS_Shape): TopAbs_State {.
    importcpp: "KPclasSS", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskolesh*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                LS: var TopTools_ListOfShape; LF: var TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "KPiskolesh", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskoletgesh*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                   LS: var TopTools_ListOfShape; LF: var TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "KPiskoletgesh", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPSameDomain*(this: TopOpeBRepBuild_Builder; L1: var TopTools_ListOfShape;
                  L2: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "KPSameDomain", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPisdisjsh*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "KPisdisjsh", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPisfafash*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "KPisfafash", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPissososh*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "KPissososh", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskoleanalyse*(this: TopOpeBRepBuild_Builder; FT1: TopAbs_State;
                     FT2: TopAbs_State; ST1: TopAbs_State; ST2: TopAbs_State;
                     I: var Standard_Integer; I1: var Standard_Integer;
                     I2: var Standard_Integer) {.noSideEffect,
    importcpp: "KPiskoleanalyse", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskoletgeanalyse*(this: TopOpeBRepBuild_Builder; Conf: TopOpeBRepDS_Config;
                        ST1: TopAbs_State; ST2: TopAbs_State;
                        I: var Standard_Integer) {.noSideEffect,
    importcpp: "KPiskoletgeanalyse", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPisdisjanalyse*(this: TopOpeBRepBuild_Builder; ST1: TopAbs_State;
                     ST2: TopAbs_State; I: var Standard_Integer;
                     IC1: var Standard_Integer; IC2: var Standard_Integer) {.
    noSideEffect, importcpp: "KPisdisjanalyse",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc KPls*(S: TopoDS_Shape; T: TopAbs_ShapeEnum; L: var TopTools_ListOfShape): Standard_Integer {.
    importcpp: "TopOpeBRepBuild_Builder::KPls(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc KPls*(S: TopoDS_Shape; T: TopAbs_ShapeEnum): Standard_Integer {.
    importcpp: "TopOpeBRepBuild_Builder::KPls(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc KPclassF*(this: var TopOpeBRepBuild_Builder; F1: TopoDS_Shape; F2: TopoDS_Shape): TopAbs_State {.
    importcpp: "KPclassF", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPclassFF*(this: var TopOpeBRepBuild_Builder; F1: TopoDS_Shape; F2: TopoDS_Shape;
               T1: var TopAbs_State; T2: var TopAbs_State) {.importcpp: "KPclassFF",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc KPiskoleFF*(this: var TopOpeBRepBuild_Builder; F1: TopoDS_Shape;
                F2: TopoDS_Shape; T1: var TopAbs_State; T2: var TopAbs_State): Standard_Boolean {.
    importcpp: "KPiskoleFF", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPContains*(S: TopoDS_Shape; L: TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::KPContains(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc KPmakeface*(this: var TopOpeBRepBuild_Builder; F1: TopoDS_Shape;
                LF2: TopTools_ListOfShape; T1: TopAbs_State; T2: TopAbs_State;
                R1: Standard_Boolean; R2: Standard_Boolean): TopoDS_Shape {.
    importcpp: "KPmakeface", header: "TopOpeBRepBuild_Builder.hxx".}
proc KPreturn*(KP: Standard_Integer): Standard_Integer {.
    importcpp: "TopOpeBRepBuild_Builder::KPreturn(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc SplitEvisoONperiodicF*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "SplitEvisoONperiodicF", header: "TopOpeBRepBuild_Builder.hxx".}
proc GMergeSolids*(this: var TopOpeBRepBuild_Builder; LSO1: TopTools_ListOfShape;
                  LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo) {.
    importcpp: "GMergeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillSolidsSFS*(this: var TopOpeBRepBuild_Builder; LSO1: TopTools_ListOfShape;
                    LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                    SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillSolidsSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillSolidSFS*(this: var TopOpeBRepBuild_Builder; SO1: TopoDS_Shape;
                   LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillSolidSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillSurfaceTopologySFS*(this: var TopOpeBRepBuild_Builder; SO1: TopoDS_Shape;
                             G: TopOpeBRepBuild_GTopo;
                             SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillSurfaceTopologySFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillSurfaceTopologySFS*(this: TopOpeBRepBuild_Builder;
                             IT: TopOpeBRepDS_SurfaceIterator;
                             G: TopOpeBRepBuild_GTopo;
                             SFS: var TopOpeBRepBuild_ShellFaceSet) {.noSideEffect,
    importcpp: "GFillSurfaceTopologySFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillShellSFS*(this: var TopOpeBRepBuild_Builder; SH1: TopoDS_Shape;
                   LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillShellSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillFaceSFS*(this: var TopOpeBRepBuild_Builder; F1: TopoDS_Shape;
                  LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                  SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GSplitFaceSFS*(this: var TopOpeBRepBuild_Builder; F1: TopoDS_Shape;
                   LSclass: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GSplitFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GMergeFaceSFS*(this: var TopOpeBRepBuild_Builder; F: TopoDS_Shape;
                   G: TopOpeBRepBuild_GTopo; SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GMergeFaceSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GSplitFace*(this: var TopOpeBRepBuild_Builder; F: TopoDS_Shape;
                G: TopOpeBRepBuild_GTopo; LSclass: TopTools_ListOfShape) {.
    importcpp: "GSplitFace", header: "TopOpeBRepBuild_Builder.hxx".}
proc AddONPatchesSFS*(this: var TopOpeBRepBuild_Builder; G: TopOpeBRepBuild_GTopo;
                     SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "AddONPatchesSFS", header: "TopOpeBRepBuild_Builder.hxx".}
proc FillOnPatches*(this: var TopOpeBRepBuild_Builder;
                   anEdgesON: TopTools_ListOfShape; aBaseFace: TopoDS_Shape;
                   avoidMap: TopTools_IndexedMapOfOrientedShape) {.
    importcpp: "FillOnPatches", header: "TopOpeBRepBuild_Builder.hxx".}
proc FindFacesTouchingEdge*(this: TopOpeBRepBuild_Builder; aFace: TopoDS_Shape;
                           anEdge: TopoDS_Shape; aShRank: Standard_Integer;
                           aFaces: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "FindFacesTouchingEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc GMergeFaces*(this: var TopOpeBRepBuild_Builder; LF1: TopTools_ListOfShape;
                 LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo) {.
    importcpp: "GMergeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillFacesWES*(this: var TopOpeBRepBuild_Builder; LF1: TopTools_ListOfShape;
                   LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillFacesWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillFacesWESK*(this: var TopOpeBRepBuild_Builder; LF1: TopTools_ListOfShape;
                    LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                    WES: var TopOpeBRepBuild_WireEdgeSet; K: Standard_Integer) {.
    importcpp: "GFillFacesWESK", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillFacesWESMakeFaces*(this: var TopOpeBRepBuild_Builder;
                            LF1: TopTools_ListOfShape; LF2: TopTools_ListOfShape;
                            LSO: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo) {.
    importcpp: "GFillFacesWESMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillFaceWES*(this: var TopOpeBRepBuild_Builder; F: TopoDS_Shape;
                  LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                  WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillFaceWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillCurveTopologyWES*(this: var TopOpeBRepBuild_Builder; F: TopoDS_Shape;
                           G: TopOpeBRepBuild_GTopo;
                           WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillCurveTopologyWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillCurveTopologyWES*(this: TopOpeBRepBuild_Builder;
                           IT: TopOpeBRepDS_CurveIterator;
                           G: TopOpeBRepBuild_GTopo;
                           WES: var TopOpeBRepBuild_WireEdgeSet) {.noSideEffect,
    importcpp: "GFillCurveTopologyWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillONPartsWES*(this: var TopOpeBRepBuild_Builder; F: TopoDS_Shape;
                     G: TopOpeBRepBuild_GTopo; LSclass: TopTools_ListOfShape;
                     WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillONPartsWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillWireWES*(this: var TopOpeBRepBuild_Builder; W: TopoDS_Shape;
                  LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                  WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillWireWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillEdgeWES*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                  LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                  WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GSplitEdgeWES*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                   LF2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GSplitEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GMergeEdgeWES*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                   G: TopOpeBRepBuild_GTopo; WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GMergeEdgeWES", header: "TopOpeBRepBuild_Builder.hxx".}
proc GSplitEdge*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                G: TopOpeBRepBuild_GTopo; LSclass: TopTools_ListOfShape) {.
    importcpp: "GSplitEdge", header: "TopOpeBRepBuild_Builder.hxx".}
proc GMergeEdges*(this: var TopOpeBRepBuild_Builder; LE1: TopTools_ListOfShape;
                 LE2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo) {.
    importcpp: "GMergeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillEdgesPVS*(this: var TopOpeBRepBuild_Builder; LE1: TopTools_ListOfShape;
                   LE2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   PVS: var TopOpeBRepBuild_PaveSet) {.importcpp: "GFillEdgesPVS",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillEdgePVS*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                  LE2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                  PVS: var TopOpeBRepBuild_PaveSet) {.importcpp: "GFillEdgePVS",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillPointTopologyPVS*(this: var TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                           G: TopOpeBRepBuild_GTopo;
                           PVS: var TopOpeBRepBuild_PaveSet) {.
    importcpp: "GFillPointTopologyPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFillPointTopologyPVS*(this: TopOpeBRepBuild_Builder; E: TopoDS_Shape;
                           IT: TopOpeBRepDS_PointIterator;
                           G: TopOpeBRepBuild_GTopo;
                           PVS: var TopOpeBRepBuild_PaveSet) {.noSideEffect,
    importcpp: "GFillPointTopologyPVS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GParamOnReference*(this: TopOpeBRepBuild_Builder; V: TopoDS_Vertex;
                       E: TopoDS_Edge; P: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GParamOnReference",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GKeepShape*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                Lref: TopTools_ListOfShape; T: TopAbs_State): Standard_Boolean {.
    importcpp: "GKeepShape", header: "TopOpeBRepBuild_Builder.hxx".}
proc GKeepShape1*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                 Lref: TopTools_ListOfShape; T: TopAbs_State; pos: var TopAbs_State): Standard_Boolean {.
    importcpp: "GKeepShape1", header: "TopOpeBRepBuild_Builder.hxx".}
proc GKeepShapes*(this: var TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                 Lref: TopTools_ListOfShape; T: TopAbs_State;
                 Lin: TopTools_ListOfShape; Lou: var TopTools_ListOfShape) {.
    importcpp: "GKeepShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc GSFSMakeSolids*(this: var TopOpeBRepBuild_Builder; SOF: TopoDS_Shape;
                    SFS: var TopOpeBRepBuild_ShellFaceSet;
                    LOSO: var TopTools_ListOfShape) {.importcpp: "GSFSMakeSolids",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GSOBUMakeSolids*(this: var TopOpeBRepBuild_Builder; SOF: TopoDS_Shape;
                     SOBU: var TopOpeBRepBuild_SolidBuilder;
                     LOSO: var TopTools_ListOfShape) {.
    importcpp: "GSOBUMakeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc GWESMakeFaces*(this: var TopOpeBRepBuild_Builder; FF: TopoDS_Shape;
                   WES: var TopOpeBRepBuild_WireEdgeSet;
                   LOF: var TopTools_ListOfShape) {.importcpp: "GWESMakeFaces",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GFABUMakeFaces*(this: var TopOpeBRepBuild_Builder; FF: TopoDS_Shape;
                    FABU: var TopOpeBRepBuild_FaceBuilder;
                    LOF: var TopTools_ListOfShape;
                    MWisOld: var TopTools_DataMapOfShapeInteger) {.
    importcpp: "GFABUMakeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc RegularizeFaces*(this: var TopOpeBRepBuild_Builder; FF: TopoDS_Shape;
                     lnewFace: TopTools_ListOfShape; LOF: var TopTools_ListOfShape) {.
    importcpp: "RegularizeFaces", header: "TopOpeBRepBuild_Builder.hxx".}
proc RegularizeFace*(this: var TopOpeBRepBuild_Builder; FF: TopoDS_Shape;
                    newFace: TopoDS_Shape; LOF: var TopTools_ListOfShape) {.
    importcpp: "RegularizeFace", header: "TopOpeBRepBuild_Builder.hxx".}
proc RegularizeSolids*(this: var TopOpeBRepBuild_Builder; SS: TopoDS_Shape;
                      lnewSolid: TopTools_ListOfShape;
                      LOS: var TopTools_ListOfShape) {.
    importcpp: "RegularizeSolids", header: "TopOpeBRepBuild_Builder.hxx".}
proc RegularizeSolid*(this: var TopOpeBRepBuild_Builder; SS: TopoDS_Shape;
                     newSolid: TopoDS_Shape; LOS: var TopTools_ListOfShape) {.
    importcpp: "RegularizeSolid", header: "TopOpeBRepBuild_Builder.hxx".}
proc GPVSMakeEdges*(this: TopOpeBRepBuild_Builder; EF: TopoDS_Shape;
                   PVS: var TopOpeBRepBuild_PaveSet; LOE: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "GPVSMakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc GEDBUMakeEdges*(this: TopOpeBRepBuild_Builder; EF: TopoDS_Shape;
                    EDBU: var TopOpeBRepBuild_EdgeBuilder;
                    LOE: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "GEDBUMakeEdges", header: "TopOpeBRepBuild_Builder.hxx".}
proc GToSplit*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; TB: TopAbs_State): Standard_Boolean {.
    noSideEffect, importcpp: "GToSplit", header: "TopOpeBRepBuild_Builder.hxx".}
proc GToMerge*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "GToMerge", header: "TopOpeBRepBuild_Builder.hxx".}
proc GTakeCommonOfSame*(G: TopOpeBRepBuild_GTopo): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfSame(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GTakeCommonOfDiff*(G: TopOpeBRepBuild_GTopo): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::GTakeCommonOfDiff(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GFindSamDom*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                 L1: var TopTools_ListOfShape; L2: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "GFindSamDom", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFindSamDom*(this: TopOpeBRepBuild_Builder; L1: var TopTools_ListOfShape;
                 L2: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "GFindSamDom", header: "TopOpeBRepBuild_Builder.hxx".}
proc GFindSamDomSODO*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                     LSO: var TopTools_ListOfShape; LDO: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "GFindSamDomSODO",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GFindSamDomSODO*(this: TopOpeBRepBuild_Builder; LSO: var TopTools_ListOfShape;
                     LDO: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "GFindSamDomSODO", header: "TopOpeBRepBuild_Builder.hxx".}
proc GMapShapes*(this: var TopOpeBRepBuild_Builder; S1: TopoDS_Shape; S2: TopoDS_Shape) {.
    importcpp: "GMapShapes", header: "TopOpeBRepBuild_Builder.hxx".}
proc GClearMaps*(this: var TopOpeBRepBuild_Builder) {.importcpp: "GClearMaps",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GFindSameRank*(this: TopOpeBRepBuild_Builder; L1: TopTools_ListOfShape;
                   R: Standard_Integer; L2: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "GFindSameRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc GShapeRank*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "GShapeRank", header: "TopOpeBRepBuild_Builder.hxx".}
proc GIsShapeOf*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                I12: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "GIsShapeOf", header: "TopOpeBRepBuild_Builder.hxx".}
proc GContains*(S: TopoDS_Shape; L: TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::GContains(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GCopyList*(Lin: TopTools_ListOfShape; i1: Standard_Integer;
               i2: Standard_Integer; Lou: var TopTools_ListOfShape) {.
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GCopyList*(Lin: TopTools_ListOfShape; Lou: var TopTools_ListOfShape) {.
    importcpp: "TopOpeBRepBuild_Builder::GCopyList(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpLS*(this: TopOpeBRepBuild_Builder; L: TopTools_ListOfShape) {.noSideEffect,
    importcpp: "GdumpLS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpPNT*(P: gp_Pnt) {.importcpp: "TopOpeBRepBuild_Builder::GdumpPNT(@)",
                         header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpORIPARPNT*(o: TopAbs_Orientation; p: Standard_Real; Pnt: gp_Pnt) {.
    importcpp: "TopOpeBRepBuild_Builder::GdumpORIPARPNT(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHA*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
              str: Standard_Address = nil) {.noSideEffect, importcpp: "GdumpSHA",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHAORI*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                 str: Standard_Address = nil) {.noSideEffect,
    importcpp: "GdumpSHAORI", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHAORIGEO*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
                    str: Standard_Address = nil) {.noSideEffect,
    importcpp: "GdumpSHAORIGEO", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHASTA*(this: TopOpeBRepBuild_Builder; `iS`: Standard_Integer;
                 T: TopAbs_State; a: TCollection_AsciiString = "";
                 b: TCollection_AsciiString = "") {.noSideEffect,
    importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHASTA*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape; T: TopAbs_State;
                 a: TCollection_AsciiString = ""; b: TCollection_AsciiString = "") {.
    noSideEffect, importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHASTA*(this: TopOpeBRepBuild_Builder; `iS`: Standard_Integer;
                 T: TopAbs_State; SS: TopOpeBRepBuild_ShapeSet;
                 a: TCollection_AsciiString = ""; b: TCollection_AsciiString = "";
                 c: TCollection_AsciiString = "\n") {.noSideEffect,
    importcpp: "GdumpSHASTA", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpEDG*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
              str: Standard_Address = nil) {.noSideEffect, importcpp: "GdumpEDG",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpEDGVER*(this: TopOpeBRepBuild_Builder; E: TopoDS_Shape; V: TopoDS_Shape;
                 str: Standard_Address = nil) {.noSideEffect,
    importcpp: "GdumpEDGVER", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSAMDOM*(this: TopOpeBRepBuild_Builder; L: TopTools_ListOfShape;
                 str: Standard_Address = nil) {.noSideEffect,
    importcpp: "GdumpSAMDOM", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpEXP*(this: TopOpeBRepBuild_Builder; E: TopOpeBRepTool_ShapeExplorer) {.
    noSideEffect, importcpp: "GdumpEXP", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSOBU*(this: TopOpeBRepBuild_Builder; SB: var TopOpeBRepBuild_SolidBuilder) {.
    noSideEffect, importcpp: "GdumpSOBU", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpFABU*(this: TopOpeBRepBuild_Builder; FB: var TopOpeBRepBuild_FaceBuilder) {.
    noSideEffect, importcpp: "GdumpFABU", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpEDBU*(this: TopOpeBRepBuild_Builder; EB: var TopOpeBRepBuild_EdgeBuilder) {.
    noSideEffect, importcpp: "GdumpEDBU", header: "TopOpeBRepBuild_Builder.hxx".}
proc GtraceSPS*(this: TopOpeBRepBuild_Builder; `iS`: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GtraceSPS*(this: TopOpeBRepBuild_Builder; `iS`: Standard_Integer;
               jS: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GtraceSPS*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GtraceSPS*(this: TopOpeBRepBuild_Builder; S: TopoDS_Shape;
               IS: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "GtraceSPS", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHASETreset*(this: var TopOpeBRepBuild_Builder) {.
    importcpp: "GdumpSHASETreset", header: "TopOpeBRepBuild_Builder.hxx".}
proc GdumpSHASETindex*(this: var TopOpeBRepBuild_Builder): Standard_Integer {.
    importcpp: "GdumpSHASETindex", header: "TopOpeBRepBuild_Builder.hxx".}
proc PrintGeo*(S: TopoDS_Shape) {.importcpp: "TopOpeBRepBuild_Builder::PrintGeo(@)",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc PrintSur*(F: TopoDS_Face) {.importcpp: "TopOpeBRepBuild_Builder::PrintSur(@)",
                              header: "TopOpeBRepBuild_Builder.hxx".}
proc PrintCur*(E: TopoDS_Edge) {.importcpp: "TopOpeBRepBuild_Builder::PrintCur(@)",
                              header: "TopOpeBRepBuild_Builder.hxx".}
proc PrintPnt*(V: TopoDS_Vertex) {.importcpp: "TopOpeBRepBuild_Builder::PrintPnt(@)",
                                header: "TopOpeBRepBuild_Builder.hxx".}
proc PrintOri*(S: TopoDS_Shape) {.importcpp: "TopOpeBRepBuild_Builder::PrintOri(@)",
                               header: "TopOpeBRepBuild_Builder.hxx".}
proc StringState*(S: TopAbs_State): TCollection_AsciiString {.
    importcpp: "TopOpeBRepBuild_Builder::StringState(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}
proc GcheckNBOUNDS*(E: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepBuild_Builder::GcheckNBOUNDS(@)",
    header: "TopOpeBRepBuild_Builder.hxx".}