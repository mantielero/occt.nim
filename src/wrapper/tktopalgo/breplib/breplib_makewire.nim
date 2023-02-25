import breplib_types
import ../../tkbrep/topods/topods_types
import ../../tkbrep/toptools/toptools_types

##  Created on: 1993-07-08
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

discard "forward decl of TopoDS_Wire"


proc newBRepLib_MakeWire*(): BRepLib_MakeWire {.cdecl, constructor,
    importcpp: "BRepLib_MakeWire(@)".}
proc newBRepLib_MakeWire*(E: TopoDS_Edge): BRepLib_MakeWire {.cdecl, constructor,
    importcpp: "BRepLib_MakeWire(@)".}
proc newBRepLib_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge): BRepLib_MakeWire {.cdecl,
    constructor, importcpp: "BRepLib_MakeWire(@)".}
proc newBRepLib_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge; E3: TopoDS_Edge): BRepLib_MakeWire {.
    cdecl, constructor, importcpp: "BRepLib_MakeWire(@)".}
proc newBRepLib_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge; E3: TopoDS_Edge;
                         E4: TopoDS_Edge): BRepLib_MakeWire {.cdecl, constructor,
    importcpp: "BRepLib_MakeWire(@)".}
proc newBRepLib_MakeWire*(W: TopoDS_Wire): BRepLib_MakeWire {.cdecl, constructor,
    importcpp: "BRepLib_MakeWire(@)".}
proc newBRepLib_MakeWire*(W: TopoDS_Wire; E: TopoDS_Edge): BRepLib_MakeWire {.cdecl,
    constructor, importcpp: "BRepLib_MakeWire(@)".}
proc Add*(this: var BRepLib_MakeWire; E: TopoDS_Edge) {.cdecl, importcpp: "Add",
    .}
proc Add*(this: var BRepLib_MakeWire; W: TopoDS_Wire) {.cdecl, importcpp: "Add",
    .}
proc Add*(this: var BRepLib_MakeWire; L: TopTools_ListOfShape) {.cdecl,
    importcpp: "Add".}
proc Error*(this: BRepLib_MakeWire): BRepLib_WireError {.noSideEffect, cdecl,
    importcpp: "Error".}
proc Wire*(this: var BRepLib_MakeWire): TopoDS_Wire {.cdecl, importcpp: "Wire",
    .}
converter `TopoDS_Wire`*(this: var BRepLib_MakeWire): TopoDS_Wire {.cdecl,
    importcpp: "BRepLib_MakeWire::operator TopoDS_Wire".}
proc Edge*(this: BRepLib_MakeWire): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge".}
proc Vertex*(this: BRepLib_MakeWire): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex".}