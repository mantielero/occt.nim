##  Created on: 1995-12-21
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepBuild_WireEdgeSet"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
type
  TopOpeBRepBuildFaceBuilder* {.importcpp: "TopOpeBRepBuild_FaceBuilder",
                               header: "TopOpeBRepBuild_FaceBuilder.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildFaceBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_FaceBuilder::operator new",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildFaceBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_FaceBuilder::operator delete",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildFaceBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_FaceBuilder::operator new[]",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildFaceBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_FaceBuilder::operator delete[]",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc `new`*(this: var TopOpeBRepBuildFaceBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_FaceBuilder::operator new",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildFaceBuilder; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_FaceBuilder::operator delete",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc constructTopOpeBRepBuildFaceBuilder*(): TopOpeBRepBuildFaceBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc constructTopOpeBRepBuildFaceBuilder*(es: var TopOpeBRepBuildWireEdgeSet;
    f: TopoDS_Shape; forceClass: StandardBoolean = false): TopOpeBRepBuildFaceBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initFaceBuilder*(this: var TopOpeBRepBuildFaceBuilder;
                     es: var TopOpeBRepBuildWireEdgeSet; f: TopoDS_Shape;
                     forceClass: StandardBoolean) {.importcpp: "InitFaceBuilder",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc detectUnclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVsameG: var TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: var TopToolsIndexedDataMapOfShapeShape) {.
    importcpp: "DetectUnclosedWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc correctGclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVref: TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: TopToolsIndexedDataMapOfShapeShape) {.
    importcpp: "CorrectGclosedWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc detectPseudoInternalEdge*(this: var TopOpeBRepBuildFaceBuilder;
                              mapE: var TopToolsIndexedMapOfShape) {.
    importcpp: "DetectPseudoInternalEdge",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc face*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initFace*(this: var TopOpeBRepBuildFaceBuilder): int {.importcpp: "InitFace",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc moreFace*(this: TopOpeBRepBuildFaceBuilder): StandardBoolean {.noSideEffect,
    importcpp: "MoreFace", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc nextFace*(this: var TopOpeBRepBuildFaceBuilder) {.importcpp: "NextFace",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initWire*(this: var TopOpeBRepBuildFaceBuilder): int {.importcpp: "InitWire",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc moreWire*(this: TopOpeBRepBuildFaceBuilder): StandardBoolean {.noSideEffect,
    importcpp: "MoreWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc nextWire*(this: var TopOpeBRepBuildFaceBuilder) {.importcpp: "NextWire",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc isOldWire*(this: TopOpeBRepBuildFaceBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsOldWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc oldWire*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "OldWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc findNextValidElement*(this: var TopOpeBRepBuildFaceBuilder) {.
    importcpp: "FindNextValidElement", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initEdge*(this: var TopOpeBRepBuildFaceBuilder): int {.importcpp: "InitEdge",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc moreEdge*(this: TopOpeBRepBuildFaceBuilder): StandardBoolean {.noSideEffect,
    importcpp: "MoreEdge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc nextEdge*(this: var TopOpeBRepBuildFaceBuilder) {.importcpp: "NextEdge",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc edge*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc edgeConnexity*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape): int {.
    noSideEffect, importcpp: "EdgeConnexity",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc addEdgeWire*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape;
                 w: var TopoDS_Shape): int {.noSideEffect, importcpp: "AddEdgeWire",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}