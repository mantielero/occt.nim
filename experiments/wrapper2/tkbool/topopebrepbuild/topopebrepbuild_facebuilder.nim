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


proc newTopOpeBRepBuildFaceBuilder*(): TopOpeBRepBuildFaceBuilder {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)", dynlib: tkfillet.}
proc newTopOpeBRepBuildFaceBuilder*(es: var TopOpeBRepBuildWireEdgeSet;
                                   f: TopoDS_Shape; forceClass: bool = false): TopOpeBRepBuildFaceBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)",
    dynlib: tkfillet.}
proc initFaceBuilder*(this: var TopOpeBRepBuildFaceBuilder;
                     es: var TopOpeBRepBuildWireEdgeSet; f: TopoDS_Shape;
                     forceClass: bool) {.cdecl, importcpp: "InitFaceBuilder",
                                       dynlib: tkfillet.}
proc detectUnclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVsameG: var TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: var TopToolsIndexedDataMapOfShapeShape) {.
    cdecl, importcpp: "DetectUnclosedWire", dynlib: tkfillet.}
proc correctGclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVref: TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: TopToolsIndexedDataMapOfShapeShape) {.cdecl,
    importcpp: "CorrectGclosedWire", dynlib: tkfillet.}
proc detectPseudoInternalEdge*(this: var TopOpeBRepBuildFaceBuilder;
                              mapE: var TopToolsIndexedMapOfShape) {.cdecl,
    importcpp: "DetectPseudoInternalEdge", dynlib: tkfillet.}
proc face*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkfillet.}
proc initFace*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitFace", dynlib: tkfillet.}
proc moreFace*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreFace", dynlib: tkfillet.}
proc nextFace*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextFace",
    dynlib: tkfillet.}
proc initWire*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitWire", dynlib: tkfillet.}
proc moreWire*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreWire", dynlib: tkfillet.}
proc nextWire*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextWire",
    dynlib: tkfillet.}
proc isOldWire*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "IsOldWire", dynlib: tkfillet.}
proc oldWire*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "OldWire", dynlib: tkfillet.}
proc findNextValidElement*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl,
    importcpp: "FindNextValidElement", dynlib: tkfillet.}
proc initEdge*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitEdge", dynlib: tkfillet.}
proc moreEdge*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreEdge", dynlib: tkfillet.}
proc nextEdge*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextEdge",
    dynlib: tkfillet.}
proc edge*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkfillet.}
proc edgeConnexity*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "EdgeConnexity", dynlib: tkfillet.}
proc addEdgeWire*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape;
                 w: var TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "AddEdgeWire", dynlib: tkfillet.}