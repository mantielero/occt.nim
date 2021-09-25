##  Created on: 1994-12-16
##  Created by: Laurent BUCHARD
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2dHatch_Element"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dHatchElements* {.importcpp: "Geom2dHatch_Elements",
                        header: "Geom2dHatch_Elements.hxx", bycopy.} = object


proc constructGeom2dHatchElements*(): Geom2dHatchElements {.constructor,
    importcpp: "Geom2dHatch_Elements(@)", header: "Geom2dHatch_Elements.hxx".}
proc constructGeom2dHatchElements*(other: Geom2dHatchElements): Geom2dHatchElements {.
    constructor, importcpp: "Geom2dHatch_Elements(@)",
    header: "Geom2dHatch_Elements.hxx".}
proc clear*(this: var Geom2dHatchElements) {.importcpp: "Clear",
    header: "Geom2dHatch_Elements.hxx".}
proc destroyGeom2dHatchElements*(this: var Geom2dHatchElements) {.
    importcpp: "#.~Geom2dHatch_Elements()", header: "Geom2dHatch_Elements.hxx".}
proc `bind`*(this: var Geom2dHatchElements; k: int; i: Geom2dHatchElement): bool {.
    importcpp: "Bind", header: "Geom2dHatch_Elements.hxx".}
proc isBound*(this: Geom2dHatchElements; k: int): bool {.noSideEffect,
    importcpp: "IsBound", header: "Geom2dHatch_Elements.hxx".}
proc unBind*(this: var Geom2dHatchElements; k: int): bool {.importcpp: "UnBind",
    header: "Geom2dHatch_Elements.hxx".}
proc find*(this: Geom2dHatchElements; k: int): Geom2dHatchElement {.noSideEffect,
    importcpp: "Find", header: "Geom2dHatch_Elements.hxx".}
proc `()`*(this: Geom2dHatchElements; k: int): Geom2dHatchElement {.noSideEffect,
    importcpp: "#(@)", header: "Geom2dHatch_Elements.hxx".}
proc changeFind*(this: var Geom2dHatchElements; k: int): var Geom2dHatchElement {.
    importcpp: "ChangeFind", header: "Geom2dHatch_Elements.hxx".}
proc `()`*(this: var Geom2dHatchElements; k: int): var Geom2dHatchElement {.
    importcpp: "#(@)", header: "Geom2dHatch_Elements.hxx".}
proc checkPoint*(this: var Geom2dHatchElements; p: var Pnt2d): bool {.
    importcpp: "CheckPoint", header: "Geom2dHatch_Elements.hxx".}
proc reject*(this: Geom2dHatchElements; p: Pnt2d): bool {.noSideEffect,
    importcpp: "Reject", header: "Geom2dHatch_Elements.hxx".}
proc segment*(this: var Geom2dHatchElements; p: Pnt2d; L: var Lin2d; par: var float): bool {.
    importcpp: "Segment", header: "Geom2dHatch_Elements.hxx".}
proc otherSegment*(this: var Geom2dHatchElements; p: Pnt2d; L: var Lin2d; par: var float): bool {.
    importcpp: "OtherSegment", header: "Geom2dHatch_Elements.hxx".}
proc initWires*(this: var Geom2dHatchElements) {.importcpp: "InitWires",
    header: "Geom2dHatch_Elements.hxx".}
proc moreWires*(this: Geom2dHatchElements): bool {.noSideEffect,
    importcpp: "MoreWires", header: "Geom2dHatch_Elements.hxx".}
proc nextWire*(this: var Geom2dHatchElements) {.importcpp: "NextWire",
    header: "Geom2dHatch_Elements.hxx".}
proc rejectWire*(this: Geom2dHatchElements; L: Lin2d; par: float): bool {.noSideEffect,
    importcpp: "RejectWire", header: "Geom2dHatch_Elements.hxx".}
proc initEdges*(this: var Geom2dHatchElements) {.importcpp: "InitEdges",
    header: "Geom2dHatch_Elements.hxx".}
proc moreEdges*(this: Geom2dHatchElements): bool {.noSideEffect,
    importcpp: "MoreEdges", header: "Geom2dHatch_Elements.hxx".}
proc nextEdge*(this: var Geom2dHatchElements) {.importcpp: "NextEdge",
    header: "Geom2dHatch_Elements.hxx".}
proc rejectEdge*(this: Geom2dHatchElements; L: Lin2d; par: float): bool {.noSideEffect,
    importcpp: "RejectEdge", header: "Geom2dHatch_Elements.hxx".}
proc currentEdge*(this: Geom2dHatchElements; e: var Geom2dAdaptorCurve;
                 `or`: var TopAbsOrientation) {.noSideEffect,
    importcpp: "CurrentEdge", header: "Geom2dHatch_Elements.hxx".}
