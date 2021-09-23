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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepLib_WireError, ../TopoDS/TopoDS_Edge,
  ../TopoDS/TopoDS_Vertex, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_IndexedMapOfShape, BRepLib_MakeShape,
  ../TopTools/TopTools_ListOfShape, ../Bnd/Bnd_Box,
  ../NCollection/NCollection_UBTree

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
type
  BRepLib_MakeWire* {.importcpp: "BRepLib_MakeWire",
                     header: "BRepLib_MakeWire.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                     ## !
                                                                                     ## NotDone
                                                                                     ## MakeWire.


proc constructBRepLib_MakeWire*(): BRepLib_MakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLib_MakeWire*(E: TopoDS_Edge): BRepLib_MakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLib_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge): BRepLib_MakeWire {.
    constructor, importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLib_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge; E3: TopoDS_Edge): BRepLib_MakeWire {.
    constructor, importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLib_MakeWire*(E1: TopoDS_Edge; E2: TopoDS_Edge; E3: TopoDS_Edge;
                               E4: TopoDS_Edge): BRepLib_MakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLib_MakeWire*(W: TopoDS_Wire): BRepLib_MakeWire {.constructor,
    importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc constructBRepLib_MakeWire*(W: TopoDS_Wire; E: TopoDS_Edge): BRepLib_MakeWire {.
    constructor, importcpp: "BRepLib_MakeWire(@)", header: "BRepLib_MakeWire.hxx".}
proc Add*(this: var BRepLib_MakeWire; E: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepLib_MakeWire.hxx".}
proc Add*(this: var BRepLib_MakeWire; W: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepLib_MakeWire.hxx".}
proc Add*(this: var BRepLib_MakeWire; L: TopTools_ListOfShape) {.importcpp: "Add",
    header: "BRepLib_MakeWire.hxx".}
proc Error*(this: BRepLib_MakeWire): BRepLib_WireError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeWire.hxx".}
proc Wire*(this: var BRepLib_MakeWire): TopoDS_Wire {.importcpp: "Wire",
    header: "BRepLib_MakeWire.hxx".}
converter `TopoDS_Wire`*(this: var BRepLib_MakeWire): TopoDS_Wire {.
    importcpp: "BRepLib_MakeWire::operator TopoDS_Wire",
    header: "BRepLib_MakeWire.hxx".}
proc Edge*(this: BRepLib_MakeWire): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepLib_MakeWire.hxx".}
proc Vertex*(this: BRepLib_MakeWire): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepLib_MakeWire.hxx".}