##  Created on: 1994-08-31
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../TopTools/TopTools_ListOfShape,
  ../TColStd/TColStd_ListOfReal, ../TopTools/TopTools_ListIteratorOfListOfShape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
type
  Draft_VertexInfo* {.importcpp: "Draft_VertexInfo",
                     header: "Draft_VertexInfo.hxx", bycopy.} = object


proc constructDraft_VertexInfo*(): Draft_VertexInfo {.constructor,
    importcpp: "Draft_VertexInfo(@)", header: "Draft_VertexInfo.hxx".}
proc Add*(this: var Draft_VertexInfo; E: TopoDS_Edge) {.importcpp: "Add",
    header: "Draft_VertexInfo.hxx".}
proc Geometry*(this: Draft_VertexInfo): gp_Pnt {.noSideEffect, importcpp: "Geometry",
    header: "Draft_VertexInfo.hxx".}
proc Parameter*(this: var Draft_VertexInfo; E: TopoDS_Edge): Standard_Real {.
    importcpp: "Parameter", header: "Draft_VertexInfo.hxx".}
proc InitEdgeIterator*(this: var Draft_VertexInfo) {.importcpp: "InitEdgeIterator",
    header: "Draft_VertexInfo.hxx".}
proc Edge*(this: Draft_VertexInfo): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "Draft_VertexInfo.hxx".}
proc NextEdge*(this: var Draft_VertexInfo) {.importcpp: "NextEdge",
    header: "Draft_VertexInfo.hxx".}
proc MoreEdge*(this: Draft_VertexInfo): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdge", header: "Draft_VertexInfo.hxx".}
proc ChangeGeometry*(this: var Draft_VertexInfo): var gp_Pnt {.
    importcpp: "ChangeGeometry", header: "Draft_VertexInfo.hxx".}
proc ChangeParameter*(this: var Draft_VertexInfo; E: TopoDS_Edge): var Standard_Real {.
    importcpp: "ChangeParameter", header: "Draft_VertexInfo.hxx".}