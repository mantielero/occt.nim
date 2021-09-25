##  Created on: 1995-12-07
##  Created by: Jacques GOUSSARD
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Vertex"
discard "forward decl of BRepCheck_Vertex"
type
  HandleBRepCheckVertex* = Handle[BRepCheckVertex]
  BRepCheckVertex* {.importcpp: "BRepCheck_Vertex", header: "BRepCheck_Vertex.hxx",
                    bycopy.} = object of BRepCheckResult


proc constructBRepCheckVertex*(v: TopoDS_Vertex): BRepCheckVertex {.constructor,
    importcpp: "BRepCheck_Vertex(@)", header: "BRepCheck_Vertex.hxx".}
proc inContext*(this: var BRepCheckVertex; contextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Vertex.hxx".}
proc minimum*(this: var BRepCheckVertex) {.importcpp: "Minimum",
                                       header: "BRepCheck_Vertex.hxx".}
proc blind*(this: var BRepCheckVertex) {.importcpp: "Blind",
                                     header: "BRepCheck_Vertex.hxx".}
proc tolerance*(this: var BRepCheckVertex): float {.importcpp: "Tolerance",
    header: "BRepCheck_Vertex.hxx".}
type
  BRepCheckVertexbaseType* = BRepCheckResult

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Vertex::get_type_name(@)",
                            header: "BRepCheck_Vertex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Vertex::get_type_descriptor(@)",
    header: "BRepCheck_Vertex.hxx".}
proc dynamicType*(this: BRepCheckVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Vertex.hxx".}
