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
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)", dynlib: tkbool.}
proc newTopOpeBRepBuildFaceBuilder*(es: var TopOpeBRepBuildWireEdgeSet;
                                   f: TopoDS_Shape; forceClass: bool = false): TopOpeBRepBuildFaceBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)", dynlib: tkbool.}
proc initFaceBuilder*(this: var TopOpeBRepBuildFaceBuilder;
                     es: var TopOpeBRepBuildWireEdgeSet; f: TopoDS_Shape;
                     forceClass: bool) {.cdecl, importcpp: "InitFaceBuilder",
                                       dynlib: tkbool.}
proc detectUnclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVsameG: var TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: var TopToolsIndexedDataMapOfShapeShape) {.
    cdecl, importcpp: "DetectUnclosedWire", dynlib: tkbool.}
proc correctGclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVref: TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: TopToolsIndexedDataMapOfShapeShape) {.cdecl,
    importcpp: "CorrectGclosedWire", dynlib: tkbool.}
proc detectPseudoInternalEdge*(this: var TopOpeBRepBuildFaceBuilder;
                              mapE: var TopToolsIndexedMapOfShape) {.cdecl,
    importcpp: "DetectPseudoInternalEdge", dynlib: tkbool.}
proc face*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbool.}
proc initFace*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitFace", dynlib: tkbool.}
proc moreFace*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreFace", dynlib: tkbool.}
proc nextFace*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextFace",
    dynlib: tkbool.}
proc initWire*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitWire", dynlib: tkbool.}
proc moreWire*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreWire", dynlib: tkbool.}
proc nextWire*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextWire",
    dynlib: tkbool.}
proc isOldWire*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "IsOldWire", dynlib: tkbool.}
proc oldWire*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "OldWire", dynlib: tkbool.}
proc findNextValidElement*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl,
    importcpp: "FindNextValidElement", dynlib: tkbool.}
proc initEdge*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitEdge", dynlib: tkbool.}
proc moreEdge*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreEdge", dynlib: tkbool.}
proc nextEdge*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextEdge",
    dynlib: tkbool.}
proc edge*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkbool.}
proc edgeConnexity*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "EdgeConnexity", dynlib: tkbool.}
proc addEdgeWire*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape;
                 w: var TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "AddEdgeWire", dynlib: tkbool.}