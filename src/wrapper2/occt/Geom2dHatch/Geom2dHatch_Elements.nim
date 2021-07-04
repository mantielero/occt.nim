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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Geom2dHatch_MapOfElements,
  Geom2dHatch_DataMapIteratorOfMapOfElements, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2dHatch_Element"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dHatch_Elements* {.importcpp: "Geom2dHatch_Elements",
                         header: "Geom2dHatch_Elements.hxx", bycopy.} = object


proc constructGeom2dHatch_Elements*(): Geom2dHatch_Elements {.constructor,
    importcpp: "Geom2dHatch_Elements(@)", header: "Geom2dHatch_Elements.hxx".}
proc constructGeom2dHatch_Elements*(Other: Geom2dHatch_Elements): Geom2dHatch_Elements {.
    constructor, importcpp: "Geom2dHatch_Elements(@)",
    header: "Geom2dHatch_Elements.hxx".}
proc Clear*(this: var Geom2dHatch_Elements) {.importcpp: "Clear",
    header: "Geom2dHatch_Elements.hxx".}
proc destroyGeom2dHatch_Elements*(this: var Geom2dHatch_Elements) {.
    importcpp: "#.~Geom2dHatch_Elements()", header: "Geom2dHatch_Elements.hxx".}
proc Bind*(this: var Geom2dHatch_Elements; K: Standard_Integer; I: Geom2dHatch_Element): Standard_Boolean {.
    importcpp: "Bind", header: "Geom2dHatch_Elements.hxx".}
proc IsBound*(this: Geom2dHatch_Elements; K: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsBound", header: "Geom2dHatch_Elements.hxx".}
proc UnBind*(this: var Geom2dHatch_Elements; K: Standard_Integer): Standard_Boolean {.
    importcpp: "UnBind", header: "Geom2dHatch_Elements.hxx".}
proc Find*(this: Geom2dHatch_Elements; K: Standard_Integer): Geom2dHatch_Element {.
    noSideEffect, importcpp: "Find", header: "Geom2dHatch_Elements.hxx".}
proc `()`*(this: Geom2dHatch_Elements; K: Standard_Integer): Geom2dHatch_Element {.
    noSideEffect, importcpp: "#(@)", header: "Geom2dHatch_Elements.hxx".}
proc ChangeFind*(this: var Geom2dHatch_Elements; K: Standard_Integer): var Geom2dHatch_Element {.
    importcpp: "ChangeFind", header: "Geom2dHatch_Elements.hxx".}
proc `()`*(this: var Geom2dHatch_Elements; K: Standard_Integer): var Geom2dHatch_Element {.
    importcpp: "#(@)", header: "Geom2dHatch_Elements.hxx".}
proc CheckPoint*(this: var Geom2dHatch_Elements; P: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "CheckPoint", header: "Geom2dHatch_Elements.hxx".}
proc Reject*(this: Geom2dHatch_Elements; P: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "Geom2dHatch_Elements.hxx".}
proc Segment*(this: var Geom2dHatch_Elements; P: gp_Pnt2d; L: var gp_Lin2d;
             Par: var Standard_Real): Standard_Boolean {.importcpp: "Segment",
    header: "Geom2dHatch_Elements.hxx".}
proc OtherSegment*(this: var Geom2dHatch_Elements; P: gp_Pnt2d; L: var gp_Lin2d;
                  Par: var Standard_Real): Standard_Boolean {.
    importcpp: "OtherSegment", header: "Geom2dHatch_Elements.hxx".}
proc InitWires*(this: var Geom2dHatch_Elements) {.importcpp: "InitWires",
    header: "Geom2dHatch_Elements.hxx".}
proc MoreWires*(this: Geom2dHatch_Elements): Standard_Boolean {.noSideEffect,
    importcpp: "MoreWires", header: "Geom2dHatch_Elements.hxx".}
proc NextWire*(this: var Geom2dHatch_Elements) {.importcpp: "NextWire",
    header: "Geom2dHatch_Elements.hxx".}
proc RejectWire*(this: Geom2dHatch_Elements; L: gp_Lin2d; Par: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectWire", header: "Geom2dHatch_Elements.hxx".}
proc InitEdges*(this: var Geom2dHatch_Elements) {.importcpp: "InitEdges",
    header: "Geom2dHatch_Elements.hxx".}
proc MoreEdges*(this: Geom2dHatch_Elements): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdges", header: "Geom2dHatch_Elements.hxx".}
proc NextEdge*(this: var Geom2dHatch_Elements) {.importcpp: "NextEdge",
    header: "Geom2dHatch_Elements.hxx".}
proc RejectEdge*(this: Geom2dHatch_Elements; L: gp_Lin2d; Par: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectEdge", header: "Geom2dHatch_Elements.hxx".}
proc CurrentEdge*(this: Geom2dHatch_Elements; E: var Geom2dAdaptor_Curve;
                 Or: var TopAbs_Orientation) {.noSideEffect,
    importcpp: "CurrentEdge", header: "Geom2dHatch_Elements.hxx".}