##  Created on: 1999-11-29
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepBuildVertexInfo* {.importcpp: "TopOpeBRepBuild_VertexInfo",
                              header: "TopOpeBRepBuild_VertexInfo.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildVertexInfo; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_VertexInfo::operator new",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc `delete`*(this: var TopOpeBRepBuildVertexInfo; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_VertexInfo::operator delete",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildVertexInfo; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_VertexInfo::operator new[]",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildVertexInfo; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_VertexInfo::operator delete[]",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc `new`*(this: var TopOpeBRepBuildVertexInfo; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_VertexInfo::operator new",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc `delete`*(this: var TopOpeBRepBuildVertexInfo; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_VertexInfo::operator delete",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc constructTopOpeBRepBuildVertexInfo*(): TopOpeBRepBuildVertexInfo {.
    constructor, importcpp: "TopOpeBRepBuild_VertexInfo(@)",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc setVertex*(this: var TopOpeBRepBuildVertexInfo; aV: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc vertex*(this: TopOpeBRepBuildVertexInfo): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc setSmart*(this: var TopOpeBRepBuildVertexInfo; aFlag: StandardBoolean) {.
    importcpp: "SetSmart", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc smart*(this: TopOpeBRepBuildVertexInfo): StandardBoolean {.noSideEffect,
    importcpp: "Smart", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc nbCases*(this: TopOpeBRepBuildVertexInfo): int {.noSideEffect,
    importcpp: "NbCases", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc foundOut*(this: TopOpeBRepBuildVertexInfo): int {.noSideEffect,
    importcpp: "FoundOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc addIn*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.
    importcpp: "AddIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc addOut*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.
    importcpp: "AddOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc setCurrentIn*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.
    importcpp: "SetCurrentIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc edgesIn*(this: TopOpeBRepBuildVertexInfo): TopToolsIndexedMapOfOrientedShape {.
    noSideEffect, importcpp: "EdgesIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc edgesOut*(this: TopOpeBRepBuildVertexInfo): TopToolsIndexedMapOfOrientedShape {.
    noSideEffect, importcpp: "EdgesOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc changeEdgesOut*(this: var TopOpeBRepBuildVertexInfo): var TopToolsIndexedMapOfOrientedShape {.
    importcpp: "ChangeEdgesOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc dump*(this: TopOpeBRepBuildVertexInfo) {.noSideEffect, importcpp: "Dump",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc currentOut*(this: var TopOpeBRepBuildVertexInfo): TopoDS_Edge {.
    importcpp: "CurrentOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc appendPassed*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.
    importcpp: "AppendPassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc removePassed*(this: var TopOpeBRepBuildVertexInfo) {.importcpp: "RemovePassed",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc listPassed*(this: TopOpeBRepBuildVertexInfo): TopToolsListOfShape {.
    noSideEffect, importcpp: "ListPassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc prepare*(this: var TopOpeBRepBuildVertexInfo; aL: TopToolsListOfShape) {.
    importcpp: "Prepare", header: "TopOpeBRepBuild_VertexInfo.hxx".}