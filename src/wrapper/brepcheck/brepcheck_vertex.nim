import brepcheck_types
import ../tkbrep/topods/topods_types
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

proc newBRepCheck_Vertex*(V: TopoDS_Vertex): BRepCheck_Vertex {.cdecl, constructor,
    importcpp: "BRepCheck_Vertex(@)", header: "BRepCheck_Vertex.hxx".}
proc InContext*(this: var BRepCheck_Vertex; ContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Vertex.hxx".}
proc Minimum*(this: var BRepCheck_Vertex) {.cdecl, importcpp: "Minimum",
                                        header: "BRepCheck_Vertex.hxx".}
proc Blind*(this: var BRepCheck_Vertex) {.cdecl, importcpp: "Blind",
                                      header: "BRepCheck_Vertex.hxx".}
proc Tolerance*(this: var BRepCheck_Vertex): cfloat {.cdecl, importcpp: "Tolerance",
    header: "BRepCheck_Vertex.hxx".}