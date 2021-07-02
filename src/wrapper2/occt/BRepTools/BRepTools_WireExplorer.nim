##  Created on: 1993-01-21
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepToolsWireExplorer* {.importcpp: "BRepTools_WireExplorer",
                          header: "BRepTools_WireExplorer.hxx", bycopy.} = object ## !
                                                                             ## Constructs an
                                                                             ## empty
                                                                             ## explorer
                                                                             ## (which can be
                                                                             ## initialized
                                                                             ## using
                                                                             ## Init)


proc constructBRepToolsWireExplorer*(): BRepToolsWireExplorer {.constructor,
    importcpp: "BRepTools_WireExplorer(@)", header: "BRepTools_WireExplorer.hxx".}
proc constructBRepToolsWireExplorer*(w: TopoDS_Wire): BRepToolsWireExplorer {.
    constructor, importcpp: "BRepTools_WireExplorer(@)",
    header: "BRepTools_WireExplorer.hxx".}
proc constructBRepToolsWireExplorer*(w: TopoDS_Wire; f: TopoDS_Face): BRepToolsWireExplorer {.
    constructor, importcpp: "BRepTools_WireExplorer(@)",
    header: "BRepTools_WireExplorer.hxx".}
proc init*(this: var BRepToolsWireExplorer; w: TopoDS_Wire) {.importcpp: "Init",
    header: "BRepTools_WireExplorer.hxx".}
proc init*(this: var BRepToolsWireExplorer; w: TopoDS_Wire; f: TopoDS_Face) {.
    importcpp: "Init", header: "BRepTools_WireExplorer.hxx".}
proc init*(this: var BRepToolsWireExplorer; w: TopoDS_Wire; f: TopoDS_Face;
          uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
          vMax: StandardReal) {.importcpp: "Init",
                              header: "BRepTools_WireExplorer.hxx".}
proc more*(this: BRepToolsWireExplorer): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "BRepTools_WireExplorer.hxx".}
proc next*(this: var BRepToolsWireExplorer) {.importcpp: "Next",
    header: "BRepTools_WireExplorer.hxx".}
proc current*(this: BRepToolsWireExplorer): TopoDS_Edge {.noSideEffect,
    importcpp: "Current", header: "BRepTools_WireExplorer.hxx".}
proc orientation*(this: BRepToolsWireExplorer): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "BRepTools_WireExplorer.hxx".}
proc currentVertex*(this: BRepToolsWireExplorer): TopoDS_Vertex {.noSideEffect,
    importcpp: "CurrentVertex", header: "BRepTools_WireExplorer.hxx".}
proc clear*(this: var BRepToolsWireExplorer) {.importcpp: "Clear",
    header: "BRepTools_WireExplorer.hxx".}

