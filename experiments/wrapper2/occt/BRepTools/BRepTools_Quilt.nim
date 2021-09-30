##  Created on: 1994-12-22
##  Created by: Remi LEQUETTE
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
type
  BRepToolsQuilt* {.importcpp: "BRepTools_Quilt", header: "BRepTools_Quilt.hxx",
                   bycopy.} = object


proc `new`*(this: var BRepToolsQuilt; theSize: csize_t): pointer {.
    importcpp: "BRepTools_Quilt::operator new", header: "BRepTools_Quilt.hxx".}
proc `delete`*(this: var BRepToolsQuilt; theAddress: pointer) {.
    importcpp: "BRepTools_Quilt::operator delete", header: "BRepTools_Quilt.hxx".}
proc `new[]`*(this: var BRepToolsQuilt; theSize: csize_t): pointer {.
    importcpp: "BRepTools_Quilt::operator new[]", header: "BRepTools_Quilt.hxx".}
proc `delete[]`*(this: var BRepToolsQuilt; theAddress: pointer) {.
    importcpp: "BRepTools_Quilt::operator delete[]", header: "BRepTools_Quilt.hxx".}
proc `new`*(this: var BRepToolsQuilt; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepTools_Quilt::operator new", header: "BRepTools_Quilt.hxx".}
proc `delete`*(this: var BRepToolsQuilt; a2: pointer; a3: pointer) {.
    importcpp: "BRepTools_Quilt::operator delete", header: "BRepTools_Quilt.hxx".}
proc constructBRepToolsQuilt*(): BRepToolsQuilt {.constructor,
    importcpp: "BRepTools_Quilt(@)", header: "BRepTools_Quilt.hxx".}
proc `bind`*(this: var BRepToolsQuilt; eold: TopoDS_Edge; enew: TopoDS_Edge) {.
    importcpp: "Bind", header: "BRepTools_Quilt.hxx".}
proc `bind`*(this: var BRepToolsQuilt; vold: TopoDS_Vertex; vnew: TopoDS_Vertex) {.
    importcpp: "Bind", header: "BRepTools_Quilt.hxx".}
proc add*(this: var BRepToolsQuilt; s: TopoDS_Shape) {.importcpp: "Add",
    header: "BRepTools_Quilt.hxx".}
proc isCopied*(this: BRepToolsQuilt; s: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "IsCopied", header: "BRepTools_Quilt.hxx".}
proc copy*(this: BRepToolsQuilt; s: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Copy", header: "BRepTools_Quilt.hxx".}
proc shells*(this: BRepToolsQuilt): TopoDS_Shape {.noSideEffect, importcpp: "Shells",
    header: "BRepTools_Quilt.hxx".}