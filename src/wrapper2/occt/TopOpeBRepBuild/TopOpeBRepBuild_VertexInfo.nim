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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Vertex, ../TopoDS/TopoDS_Edge,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_IndexedMapOfOrientedShape,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepBuild_VertexInfo* {.importcpp: "TopOpeBRepBuild_VertexInfo",
                               header: "TopOpeBRepBuild_VertexInfo.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_VertexInfo*(): TopOpeBRepBuild_VertexInfo {.
    constructor, importcpp: "TopOpeBRepBuild_VertexInfo(@)",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc SetVertex*(this: var TopOpeBRepBuild_VertexInfo; aV: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc Vertex*(this: TopOpeBRepBuild_VertexInfo): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc SetSmart*(this: var TopOpeBRepBuild_VertexInfo; aFlag: Standard_Boolean) {.
    importcpp: "SetSmart", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc Smart*(this: TopOpeBRepBuild_VertexInfo): Standard_Boolean {.noSideEffect,
    importcpp: "Smart", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc NbCases*(this: TopOpeBRepBuild_VertexInfo): Standard_Integer {.noSideEffect,
    importcpp: "NbCases", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc FoundOut*(this: TopOpeBRepBuild_VertexInfo): Standard_Integer {.noSideEffect,
    importcpp: "FoundOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc AddIn*(this: var TopOpeBRepBuild_VertexInfo; anE: TopoDS_Edge) {.
    importcpp: "AddIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc AddOut*(this: var TopOpeBRepBuild_VertexInfo; anE: TopoDS_Edge) {.
    importcpp: "AddOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc SetCurrentIn*(this: var TopOpeBRepBuild_VertexInfo; anE: TopoDS_Edge) {.
    importcpp: "SetCurrentIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc EdgesIn*(this: TopOpeBRepBuild_VertexInfo): TopTools_IndexedMapOfOrientedShape {.
    noSideEffect, importcpp: "EdgesIn", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc EdgesOut*(this: TopOpeBRepBuild_VertexInfo): TopTools_IndexedMapOfOrientedShape {.
    noSideEffect, importcpp: "EdgesOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc ChangeEdgesOut*(this: var TopOpeBRepBuild_VertexInfo): var TopTools_IndexedMapOfOrientedShape {.
    importcpp: "ChangeEdgesOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc Dump*(this: TopOpeBRepBuild_VertexInfo) {.noSideEffect, importcpp: "Dump",
    header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc CurrentOut*(this: var TopOpeBRepBuild_VertexInfo): TopoDS_Edge {.
    importcpp: "CurrentOut", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc AppendPassed*(this: var TopOpeBRepBuild_VertexInfo; anE: TopoDS_Edge) {.
    importcpp: "AppendPassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc RemovePassed*(this: var TopOpeBRepBuild_VertexInfo) {.
    importcpp: "RemovePassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc ListPassed*(this: TopOpeBRepBuild_VertexInfo): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ListPassed", header: "TopOpeBRepBuild_VertexInfo.hxx".}
proc Prepare*(this: var TopOpeBRepBuild_VertexInfo; aL: TopTools_ListOfShape) {.
    importcpp: "Prepare", header: "TopOpeBRepBuild_VertexInfo.hxx".}