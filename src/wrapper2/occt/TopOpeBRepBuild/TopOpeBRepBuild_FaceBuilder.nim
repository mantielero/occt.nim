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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, TopOpeBRepBuild_LoopSet,
  TopOpeBRepBuild_BlockIterator, TopOpeBRepBuild_BlockBuilder,
  TopOpeBRepBuild_FaceAreaBuilder, ../TopTools/TopTools_DataMapOfShapeInteger,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_IndexedDataMapOfShapeShape,
  ../TopTools/TopTools_IndexedMapOfShape, ../Standard/Standard_Integer

discard "forward decl of TopOpeBRepBuild_WireEdgeSet"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
type
  TopOpeBRepBuild_FaceBuilder* {.importcpp: "TopOpeBRepBuild_FaceBuilder",
                                header: "TopOpeBRepBuild_FaceBuilder.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_FaceBuilder*(): TopOpeBRepBuild_FaceBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc constructTopOpeBRepBuild_FaceBuilder*(ES: var TopOpeBRepBuild_WireEdgeSet;
    F: TopoDS_Shape; ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_FaceBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_FaceBuilder(@)",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc InitFaceBuilder*(this: var TopOpeBRepBuild_FaceBuilder;
                     ES: var TopOpeBRepBuild_WireEdgeSet; F: TopoDS_Shape;
                     ForceClass: Standard_Boolean) {.importcpp: "InitFaceBuilder",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc DetectUnclosedWire*(this: var TopOpeBRepBuild_FaceBuilder;
                        mapVVsameG: var TopTools_IndexedDataMapOfShapeShape;
                        mapVon1Edge: var TopTools_IndexedDataMapOfShapeShape) {.
    importcpp: "DetectUnclosedWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc CorrectGclosedWire*(this: var TopOpeBRepBuild_FaceBuilder;
                        mapVVref: TopTools_IndexedDataMapOfShapeShape;
                        mapVon1Edge: TopTools_IndexedDataMapOfShapeShape) {.
    importcpp: "CorrectGclosedWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc DetectPseudoInternalEdge*(this: var TopOpeBRepBuild_FaceBuilder;
                              mapE: var TopTools_IndexedMapOfShape) {.
    importcpp: "DetectPseudoInternalEdge",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc Face*(this: TopOpeBRepBuild_FaceBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc InitFace*(this: var TopOpeBRepBuild_FaceBuilder): Standard_Integer {.
    importcpp: "InitFace", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc MoreFace*(this: TopOpeBRepBuild_FaceBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreFace", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc NextFace*(this: var TopOpeBRepBuild_FaceBuilder) {.importcpp: "NextFace",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc InitWire*(this: var TopOpeBRepBuild_FaceBuilder): Standard_Integer {.
    importcpp: "InitWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc MoreWire*(this: TopOpeBRepBuild_FaceBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc NextWire*(this: var TopOpeBRepBuild_FaceBuilder) {.importcpp: "NextWire",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc IsOldWire*(this: TopOpeBRepBuild_FaceBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsOldWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc OldWire*(this: TopOpeBRepBuild_FaceBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "OldWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc FindNextValidElement*(this: var TopOpeBRepBuild_FaceBuilder) {.
    importcpp: "FindNextValidElement", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc InitEdge*(this: var TopOpeBRepBuild_FaceBuilder): Standard_Integer {.
    importcpp: "InitEdge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc MoreEdge*(this: TopOpeBRepBuild_FaceBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc NextEdge*(this: var TopOpeBRepBuild_FaceBuilder) {.importcpp: "NextEdge",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc Edge*(this: TopOpeBRepBuild_FaceBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc EdgeConnexity*(this: TopOpeBRepBuild_FaceBuilder; E: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "EdgeConnexity",
    header: "TopOpeBRepBuild_FaceBuilder.hxx".}
proc AddEdgeWire*(this: TopOpeBRepBuild_FaceBuilder; E: TopoDS_Shape;
                 W: var TopoDS_Shape): Standard_Integer {.noSideEffect,
    importcpp: "AddEdgeWire", header: "TopOpeBRepBuild_FaceBuilder.hxx".}