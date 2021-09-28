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
discard "forward decl of BRep_TEdge"
type
  HandleC1C1* = Handle[BRepTEdge]

## ! The TEdge from BRep is  inherited from  the  TEdge
## ! from TopoDS. It contains the geometric data.
## !
## ! The TEdge contains :
## !
## ! * A tolerance.
## !
## ! * A same parameter flag.
## !
## ! * A same range flag.
## !
## ! * A Degenerated flag.
## !
## ! *  A  list   of curve representation.

type
  BRepTEdge* {.importcpp: "BRep_TEdge", header: "BRep_TEdge.hxx", bycopy.} = object of TopoDS_TEdge ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## TEdge.


proc constructBRepTEdge*(): BRepTEdge {.constructor, importcpp: "BRep_TEdge(@)",
                                     header: "BRep_TEdge.hxx".}
proc tolerance*(this: BRepTEdge): cfloat {.noSideEffect, importcpp: "Tolerance",
                                       header: "BRep_TEdge.hxx".}
proc tolerance*(this: var BRepTEdge; t: cfloat) {.importcpp: "Tolerance",
    header: "BRep_TEdge.hxx".}
proc updateTolerance*(this: var BRepTEdge; t: cfloat) {.importcpp: "UpdateTolerance",
    header: "BRep_TEdge.hxx".}
proc sameParameter*(this: BRepTEdge): bool {.noSideEffect,
    importcpp: "SameParameter", header: "BRep_TEdge.hxx".}
proc sameParameter*(this: var BRepTEdge; s: bool) {.importcpp: "SameParameter",
    header: "BRep_TEdge.hxx".}
proc sameRange*(this: BRepTEdge): bool {.noSideEffect, importcpp: "SameRange",
                                     header: "BRep_TEdge.hxx".}
proc sameRange*(this: var BRepTEdge; s: bool) {.importcpp: "SameRange",
    header: "BRep_TEdge.hxx".}
proc degenerated*(this: BRepTEdge): bool {.noSideEffect, importcpp: "Degenerated",
                                       header: "BRep_TEdge.hxx".}
proc degenerated*(this: var BRepTEdge; s: bool) {.importcpp: "Degenerated",
    header: "BRep_TEdge.hxx".}
proc curves*(this: BRepTEdge): BRepListOfCurveRepresentation {.noSideEffect,
    importcpp: "Curves", header: "BRep_TEdge.hxx".}
proc changeCurves*(this: var BRepTEdge): var BRepListOfCurveRepresentation {.
    importcpp: "ChangeCurves", header: "BRep_TEdge.hxx".}
proc emptyCopy*(this: BRepTEdge): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "BRep_TEdge.hxx".}
proc dumpJson*(this: BRepTEdge; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "BRep_TEdge.hxx".}
type
  BRepTEdgebaseType* = TopoDS_TEdge

proc getTypeName*(): cstring {.importcpp: "BRep_TEdge::get_type_name(@)",
                            header: "BRep_TEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_TEdge::get_type_descriptor(@)", header: "BRep_TEdge.hxx".}
proc dynamicType*(this: BRepTEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_TEdge.hxx".}

























