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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
type
  BRepLibMakeWire* {.importcpp: "BRepLib_MakeWire", header: "BRepLib_MakeWire.hxx",
                    bycopy.} = object of BRepLibMakeShape ## ! NotDone MakeWire.


proc constructBRepLibMakeWire*(): BRepLibMakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLibMakeWire*(e: TopoDS_Edge): BRepLibMakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLibMakeWire*(e1: TopoDS_Edge; e2: TopoDS_Edge): BRepLibMakeWire {.
    constructor, importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLibMakeWire*(e1: TopoDS_Edge; e2: TopoDS_Edge; e3: TopoDS_Edge): BRepLibMakeWire {.
    constructor, importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLibMakeWire*(e1: TopoDS_Edge; e2: TopoDS_Edge; e3: TopoDS_Edge;
                              e4: TopoDS_Edge): BRepLibMakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLibMakeWire*(w: TopoDS_Wire): BRepLibMakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLibMakeWire*(w: TopoDS_Wire; e: TopoDS_Edge): BRepLibMakeWire {.
    constructor, importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc add*(this: var BRepLibMakeWire; e: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepLib_MakeWire.hxx".}
proc add*(this: var BRepLibMakeWire; w: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepLib_MakeWire.hxx".}
proc add*(this: var BRepLibMakeWire; L: TopToolsListOfShape) {.importcpp: "Add",
    header: "BRepLib_MakeWire.hxx".}
proc error*(this: BRepLibMakeWire): BRepLibWireError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeWire.hxx".}
proc wire*(this: var BRepLibMakeWire): TopoDS_Wire {.importcpp: "Wire",
    header: "BRepLib_MakeWire.hxx".}
converter `topoDS_Wire`*(this: var BRepLibMakeWire): TopoDS_Wire {.
    importcpp: "BRepLib_MakeWire::operator TopoDS_Wire",
    header: "BRepLib_MakeWire.hxx".}
proc edge*(this: BRepLibMakeWire): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepLib_MakeWire.hxx".}
proc vertex*(this: BRepLibMakeWire): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepLib_MakeWire.hxx".}
