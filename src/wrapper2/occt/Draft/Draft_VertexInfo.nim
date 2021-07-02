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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
type
  DraftVertexInfo* {.importcpp: "Draft_VertexInfo", header: "Draft_VertexInfo.hxx",
                    bycopy.} = object


proc constructDraftVertexInfo*(): DraftVertexInfo {.constructor,
    importcpp: "Draft_VertexInfo(@)", header: "Draft_VertexInfo.hxx".}
proc add*(this: var DraftVertexInfo; e: TopoDS_Edge) {.importcpp: "Add",
    header: "Draft_VertexInfo.hxx".}
proc geometry*(this: DraftVertexInfo): GpPnt {.noSideEffect, importcpp: "Geometry",
    header: "Draft_VertexInfo.hxx".}
proc parameter*(this: var DraftVertexInfo; e: TopoDS_Edge): StandardReal {.
    importcpp: "Parameter", header: "Draft_VertexInfo.hxx".}
proc initEdgeIterator*(this: var DraftVertexInfo) {.importcpp: "InitEdgeIterator",
    header: "Draft_VertexInfo.hxx".}
proc edge*(this: DraftVertexInfo): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "Draft_VertexInfo.hxx".}
proc nextEdge*(this: var DraftVertexInfo) {.importcpp: "NextEdge",
                                        header: "Draft_VertexInfo.hxx".}
proc moreEdge*(this: DraftVertexInfo): StandardBoolean {.noSideEffect,
    importcpp: "MoreEdge", header: "Draft_VertexInfo.hxx".}
proc changeGeometry*(this: var DraftVertexInfo): var GpPnt {.
    importcpp: "ChangeGeometry", header: "Draft_VertexInfo.hxx".}
proc changeParameter*(this: var DraftVertexInfo; e: TopoDS_Edge): var StandardReal {.
    importcpp: "ChangeParameter", header: "Draft_VertexInfo.hxx".}

