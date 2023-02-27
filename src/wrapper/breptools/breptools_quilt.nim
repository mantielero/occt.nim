import breptools_types
import ../tkbrep/topods/topods_types
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"

proc newBRepTools_Quilt*(): BRepTools_Quilt {.cdecl, constructor,
    importcpp: "BRepTools_Quilt(@)", header: "BRepTools_Quilt.hxx".}
proc Bind*(this: var BRepTools_Quilt; Eold: TopoDS_Edge; Enew: TopoDS_Edge) {.cdecl,
    importcpp: "Bind", header: "BRepTools_Quilt.hxx".}
proc Bind*(this: var BRepTools_Quilt; Vold: TopoDS_Vertex; Vnew: TopoDS_Vertex) {.cdecl,
    importcpp: "Bind", header: "BRepTools_Quilt.hxx".}
proc Add*(this: var BRepTools_Quilt; S: TopoDS_Shape) {.cdecl, importcpp: "Add",
    header: "BRepTools_Quilt.hxx".}
proc IsCopied*(this: BRepTools_Quilt; S: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "IsCopied", header: "BRepTools_Quilt.hxx".}
proc Copy*(this: BRepTools_Quilt; S: TopoDS_Shape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Copy", header: "BRepTools_Quilt.hxx".}
proc Shells*(this: BRepTools_Quilt): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shells", header: "BRepTools_Quilt.hxx".}