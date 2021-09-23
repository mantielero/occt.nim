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
  ../Standard/Standard, ../Standard/Standard_Type, TopOpeBRepBuild_Builder1,
  ../TopTools/TopTools_DataMapOfShapeInteger,
  ../TColStd/TColStd_DataMapOfIntegerListOfInteger, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Shape, ../TColStd/TColStd_ListOfInteger,
  ../Standard/Standard_Transient, ../TopAbs/TopAbs_State,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Integer

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopOpeBRepDS_BuildTool"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Builder"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of TopOpeBRepBuild_HBuilder"
type
  Handle_TopOpeBRepBuild_HBuilder* = handle[TopOpeBRepBuild_HBuilder]

## ! The HBuilder  algorithm    constructs   topological
## ! objects  from   an    existing  topology  and  new
## ! geometries attached to the topology. It is used to
## ! construct the result of a topological operation;
## ! the existing  topologies are the parts involved in
## ! the  topological  operation and the new geometries
## ! are the intersection lines and points.

type
  TopOpeBRepBuild_HBuilder* {.importcpp: "TopOpeBRepBuild_HBuilder",
                             header: "TopOpeBRepBuild_HBuilder.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepBuild_HBuilder*(BT: TopOpeBRepDS_BuildTool): TopOpeBRepBuild_HBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_HBuilder(@)",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc BuildTool*(this: TopOpeBRepBuild_HBuilder): TopOpeBRepDS_BuildTool {.
    noSideEffect, importcpp: "BuildTool", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc Perform*(this: var TopOpeBRepBuild_HBuilder;
             HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc Perform*(this: var TopOpeBRepBuild_HBuilder;
             HDS: handle[TopOpeBRepDS_HDataStructure]; S1: TopoDS_Shape;
             S2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRepBuild_HBuilder.hxx".}
proc Clear*(this: var TopOpeBRepBuild_HBuilder) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc DataStructure*(this: TopOpeBRepBuild_HBuilder): handle[
    TopOpeBRepDS_HDataStructure] {.noSideEffect, importcpp: "DataStructure",
                                  header: "TopOpeBRepBuild_HBuilder.hxx".}
proc ChangeBuildTool*(this: var TopOpeBRepBuild_HBuilder): var TopOpeBRepDS_BuildTool {.
    importcpp: "ChangeBuildTool", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc MergeShapes*(this: var TopOpeBRepBuild_HBuilder; S1: TopoDS_Shape;
                 TB1: TopAbs_State; S2: TopoDS_Shape; TB2: TopAbs_State) {.
    importcpp: "MergeShapes", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc MergeSolids*(this: var TopOpeBRepBuild_HBuilder; S1: TopoDS_Shape;
                 TB1: TopAbs_State; S2: TopoDS_Shape; TB2: TopAbs_State) {.
    importcpp: "MergeSolids", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc MergeSolid*(this: var TopOpeBRepBuild_HBuilder; S: TopoDS_Shape; TB: TopAbs_State) {.
    importcpp: "MergeSolid", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc IsSplit*(this: TopOpeBRepBuild_HBuilder; S: TopoDS_Shape; ToBuild: TopAbs_State): Standard_Boolean {.
    noSideEffect, importcpp: "IsSplit", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc Splits*(this: TopOpeBRepBuild_HBuilder; S: TopoDS_Shape; ToBuild: TopAbs_State): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Splits", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc IsMerged*(this: TopOpeBRepBuild_HBuilder; S: TopoDS_Shape; ToBuild: TopAbs_State): Standard_Boolean {.
    noSideEffect, importcpp: "IsMerged", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc Merged*(this: TopOpeBRepBuild_HBuilder; S: TopoDS_Shape; ToBuild: TopAbs_State): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Merged", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc NewVertex*(this: TopOpeBRepBuild_HBuilder; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "NewVertex", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc NewEdges*(this: TopOpeBRepBuild_HBuilder; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "NewEdges", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc ChangeNewEdges*(this: var TopOpeBRepBuild_HBuilder; I: Standard_Integer): var TopTools_ListOfShape {.
    importcpp: "ChangeNewEdges", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc NewFaces*(this: TopOpeBRepBuild_HBuilder; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "NewFaces", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc Section*(this: var TopOpeBRepBuild_HBuilder): TopTools_ListOfShape {.
    importcpp: "Section", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc InitExtendedSectionDS*(this: var TopOpeBRepBuild_HBuilder;
                           k: Standard_Integer = 3) {.
    importcpp: "InitExtendedSectionDS", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc InitSection*(this: var TopOpeBRepBuild_HBuilder; k: Standard_Integer = 3) {.
    importcpp: "InitSection", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc MoreSection*(this: TopOpeBRepBuild_HBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreSection", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc NextSection*(this: var TopOpeBRepBuild_HBuilder) {.importcpp: "NextSection",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc CurrentSection*(this: TopOpeBRepBuild_HBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "CurrentSection", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc GetDSEdgeFromSectEdge*(this: var TopOpeBRepBuild_HBuilder; E: TopoDS_Shape;
                           rank: Standard_Integer): Standard_Integer {.
    importcpp: "GetDSEdgeFromSectEdge", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc GetDSFaceFromDSEdge*(this: var TopOpeBRepBuild_HBuilder;
                         indexEdg: Standard_Integer; rank: Standard_Integer): var TColStd_ListOfInteger {.
    importcpp: "GetDSFaceFromDSEdge", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc GetDSCurveFromSectEdge*(this: var TopOpeBRepBuild_HBuilder;
                            SectEdge: TopoDS_Shape): Standard_Integer {.
    importcpp: "GetDSCurveFromSectEdge", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc GetDSFaceFromDSCurve*(this: var TopOpeBRepBuild_HBuilder;
                          indexCur: Standard_Integer; rank: Standard_Integer): Standard_Integer {.
    importcpp: "GetDSFaceFromDSCurve", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc GetDSPointFromNewVertex*(this: var TopOpeBRepBuild_HBuilder;
                             NewVert: TopoDS_Shape): Standard_Integer {.
    importcpp: "GetDSPointFromNewVertex", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc EdgeCurveAncestors*(this: var TopOpeBRepBuild_HBuilder; E: TopoDS_Shape;
                        F1: var TopoDS_Shape; F2: var TopoDS_Shape;
                        IC: var Standard_Integer): Standard_Boolean {.
    importcpp: "EdgeCurveAncestors", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc EdgeSectionAncestors*(this: var TopOpeBRepBuild_HBuilder; E: TopoDS_Shape;
                          LF1: var TopTools_ListOfShape;
                          LF2: var TopTools_ListOfShape;
                          LE1: var TopTools_ListOfShape;
                          LE2: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "EdgeSectionAncestors", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc IsKPart*(this: var TopOpeBRepBuild_HBuilder): Standard_Integer {.
    importcpp: "IsKPart", header: "TopOpeBRepBuild_HBuilder.hxx".}
proc MergeKPart*(this: var TopOpeBRepBuild_HBuilder; TB1: TopAbs_State;
                TB2: TopAbs_State) {.importcpp: "MergeKPart",
                                   header: "TopOpeBRepBuild_HBuilder.hxx".}
proc ChangeBuilder*(this: var TopOpeBRepBuild_HBuilder): var TopOpeBRepBuild_Builder {.
    importcpp: "ChangeBuilder", header: "TopOpeBRepBuild_HBuilder.hxx".}
type
  TopOpeBRepBuild_HBuilderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepBuild_HBuilder::get_type_name(@)",
                              header: "TopOpeBRepBuild_HBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepBuild_HBuilder::get_type_descriptor(@)",
    header: "TopOpeBRepBuild_HBuilder.hxx".}
proc DynamicType*(this: TopOpeBRepBuild_HBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopOpeBRepBuild_HBuilder.hxx".}