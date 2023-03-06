import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import topopebrepbuild_types





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



proc newTopOpeBRepBuildFaceBuilder*(): TopOpeBRepBuildFaceBuilder {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc newTopOpeBRepBuildFaceBuilder*(es: var TopOpeBRepBuildWireEdgeSet;
                                   f: TopoDS_Shape; forceClass: bool = false): TopOpeBRepBuildFaceBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initFaceBuilder*(this: var TopOpeBRepBuildFaceBuilder;
                     es: var TopOpeBRepBuildWireEdgeSet; f: TopoDS_Shape;
                     forceClass: bool) {.cdecl, importcpp: "InitFaceBuilder",
                                       header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc detectUnclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVsameG: var TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: var TopToolsIndexedDataMapOfShapeShape) {.
    cdecl, importcpp: "DetectUnclosedWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc correctGclosedWire*(this: var TopOpeBRepBuildFaceBuilder;
                        mapVVref: TopToolsIndexedDataMapOfShapeShape;
                        mapVon1Edge: TopToolsIndexedDataMapOfShapeShape) {.cdecl,
    importcpp: "CorrectGclosedWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc detectPseudoInternalEdge*(this: var TopOpeBRepBuildFaceBuilder;
                              mapE: var TopToolsIndexedMapOfShape) {.cdecl,
    importcpp: "DetectPseudoInternalEdge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc face*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Face", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initFace*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitFace", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc moreFace*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreFace", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc nextFace*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextFace",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initWire*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc moreWire*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc nextWire*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextWire",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc isOldWire*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "IsOldWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc oldWire*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "OldWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc findNextValidElement*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl,
    importcpp: "FindNextValidElement", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc initEdge*(this: var TopOpeBRepBuildFaceBuilder): cint {.cdecl,
    importcpp: "InitEdge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc moreEdge*(this: TopOpeBRepBuildFaceBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreEdge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc nextEdge*(this: var TopOpeBRepBuildFaceBuilder) {.cdecl, importcpp: "NextEdge",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc edge*(this: TopOpeBRepBuildFaceBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Edge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc edgeConnexity*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "EdgeConnexity", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc addEdgeWire*(this: TopOpeBRepBuildFaceBuilder; e: TopoDS_Shape;
                 w: var TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "AddEdgeWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}


