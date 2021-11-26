##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
type
  BRepBuilderAPI_MakeVertex* {.importcpp: "BRepBuilderAPI_MakeVertex",
                              header: "BRepBuilderAPI_MakeVertex.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepBuilderAPI_MakeVertex; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator new",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeVertex; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator delete",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_MakeVertex; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator new[]",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_MakeVertex; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator delete[]",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc `new`*(this: var BRepBuilderAPI_MakeVertex; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator new",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeVertex; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator delete",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc constructBRepBuilderAPI_MakeVertex*(p: Pnt): BRepBuilderAPI_MakeVertex {.
    constructor, importcpp: "BRepBuilderAPI_MakeVertex(@)",
    header: "BRepBuilderAPI_MakeVertex.hxx".}
proc vertex*(this: var BRepBuilderAPI_MakeVertex): TopoDS_Vertex {.
    importcpp: "Vertex", header: "BRepBuilderAPI_MakeVertex.hxx".}
converter `topoDS_Vertex`*(this: var BRepBuilderAPI_MakeVertex): TopoDS_Vertex {.
    importcpp: "BRepBuilderAPI_MakeVertex::operator TopoDS_Vertex",
    header: "BRepBuilderAPI_MakeVertex.hxx".}