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


proc newTopOpeBRepBuildVertexInfo*(): TopOpeBRepBuildVertexInfo {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_VertexInfo(@)", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc setVertex*(this: var TopOpeBRepBuildVertexInfo; aV: TopoDS_Vertex) {.cdecl,
    importcpp: "SetVertex", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc vertex*(this: TopOpeBRepBuildVertexInfo): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc setSmart*(this: var TopOpeBRepBuildVertexInfo; aFlag: bool) {.cdecl,
    importcpp: "SetSmart", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc smart*(this: TopOpeBRepBuildVertexInfo): bool {.noSideEffect, cdecl,
    importcpp: "Smart", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc nbCases*(this: TopOpeBRepBuildVertexInfo): cint {.noSideEffect, cdecl,
    importcpp: "NbCases", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc foundOut*(this: TopOpeBRepBuildVertexInfo): cint {.noSideEffect, cdecl,
    importcpp: "FoundOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc addIn*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.cdecl,
    importcpp: "AddIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc addOut*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.cdecl,
    importcpp: "AddOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc setCurrentIn*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.cdecl,
    importcpp: "SetCurrentIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc edgesIn*(this: TopOpeBRepBuildVertexInfo): TopToolsIndexedMapOfOrientedShape {.
    noSideEffect, cdecl, importcpp: "EdgesIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc edgesOut*(this: TopOpeBRepBuildVertexInfo): TopToolsIndexedMapOfOrientedShape {.
    noSideEffect, cdecl, importcpp: "EdgesOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc changeEdgesOut*(this: var TopOpeBRepBuildVertexInfo): var TopToolsIndexedMapOfOrientedShape {.
    cdecl, importcpp: "ChangeEdgesOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc dump*(this: TopOpeBRepBuildVertexInfo) {.noSideEffect, cdecl, importcpp: "Dump",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc currentOut*(this: var TopOpeBRepBuildVertexInfo): TopoDS_Edge {.cdecl,
    importcpp: "CurrentOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc appendPassed*(this: var TopOpeBRepBuildVertexInfo; anE: TopoDS_Edge) {.cdecl,
    importcpp: "AppendPassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc removePassed*(this: var TopOpeBRepBuildVertexInfo) {.cdecl,
    importcpp: "RemovePassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc listPassed*(this: TopOpeBRepBuildVertexInfo): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ListPassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc prepare*(this: var TopOpeBRepBuildVertexInfo; aL: TopToolsListOfShape) {.cdecl,
    importcpp: "Prepare", header: "TopOpeBRepBuild_VertexInfo.hxx".}