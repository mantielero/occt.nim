import brep_types

##  Created on: 1992-05-27
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TEdge"




proc newBRepTEdge*(): BRepTEdge {.cdecl, constructor, importcpp: "BRep_TEdge(@)",
                               header: "BRep_TEdge.hxx".}
proc tolerance*(this: BRepTEdge): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Tolerance", header: "BRep_TEdge.hxx".}
proc tolerance*(this: var BRepTEdge; t: cfloat) {.cdecl, importcpp: "Tolerance",
    header: "BRep_TEdge.hxx".}
proc updateTolerance*(this: var BRepTEdge; t: cfloat) {.cdecl,
    importcpp: "UpdateTolerance", header: "BRep_TEdge.hxx".}
proc sameParameter*(this: BRepTEdge): bool {.noSideEffect, cdecl,
    importcpp: "SameParameter", header: "BRep_TEdge.hxx".}
proc sameParameter*(this: var BRepTEdge; s: bool) {.cdecl, importcpp: "SameParameter",
    header: "BRep_TEdge.hxx".}
proc sameRange*(this: BRepTEdge): bool {.noSideEffect, cdecl, importcpp: "SameRange",
                                     header: "BRep_TEdge.hxx".}
proc sameRange*(this: var BRepTEdge; s: bool) {.cdecl, importcpp: "SameRange",
    header: "BRep_TEdge.hxx".}
proc degenerated*(this: BRepTEdge): bool {.noSideEffect, cdecl,
                                       importcpp: "Degenerated", header: "BRep_TEdge.hxx".}
proc degenerated*(this: var BRepTEdge; s: bool) {.cdecl, importcpp: "Degenerated",
    header: "BRep_TEdge.hxx".}
proc curves*(this: BRepTEdge): BRepListOfCurveRepresentation {.noSideEffect, cdecl,
    importcpp: "Curves", header: "BRep_TEdge.hxx".}
proc changeCurves*(this: var BRepTEdge): var BRepListOfCurveRepresentation {.cdecl,
    importcpp: "ChangeCurves", header: "BRep_TEdge.hxx".}
proc emptyCopy*(this: BRepTEdge): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", header: "BRep_TEdge.hxx".}
proc dumpJson*(this: BRepTEdge; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "BRep_TEdge.hxx".}
