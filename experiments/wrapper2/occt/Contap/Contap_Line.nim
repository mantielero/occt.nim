##  Created on: 1993-02-05
##  Created by: Jacques GOUSSARD
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

discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of Contap_Point"
type
  ContapLine* {.importcpp: "Contap_Line", header: "Contap_Line.hxx", bycopy.} = object


proc constructContapLine*(): ContapLine {.constructor, importcpp: "Contap_Line(@)",
                                       header: "Contap_Line.hxx".}
proc setLineOn2S*(this: var ContapLine; L: Handle[IntSurfLineOn2S]) {.
    importcpp: "SetLineOn2S", header: "Contap_Line.hxx".}
proc clear*(this: var ContapLine) {.importcpp: "Clear", header: "Contap_Line.hxx".}
proc lineOn2S*(this: ContapLine): Handle[IntSurfLineOn2S] {.noSideEffect,
    importcpp: "LineOn2S", header: "Contap_Line.hxx".}
proc resetSeqOfVertex*(this: var ContapLine) {.importcpp: "ResetSeqOfVertex",
    header: "Contap_Line.hxx".}
proc add*(this: var ContapLine; p: IntSurfPntOn2S) {.importcpp: "Add",
    header: "Contap_Line.hxx".}
proc setValue*(this: var ContapLine; L: Lin) {.importcpp: "SetValue",
    header: "Contap_Line.hxx".}
proc setValue*(this: var ContapLine; c: Circ) {.importcpp: "SetValue",
    header: "Contap_Line.hxx".}
proc setValue*(this: var ContapLine; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "SetValue", header: "Contap_Line.hxx".}
proc add*(this: var ContapLine; p: ContapPoint) {.importcpp: "Add",
    header: "Contap_Line.hxx".}
proc nbVertex*(this: ContapLine): cint {.noSideEffect, importcpp: "NbVertex",
                                     header: "Contap_Line.hxx".}
proc vertex*(this: ContapLine; index: cint): var ContapPoint {.noSideEffect,
    importcpp: "Vertex", header: "Contap_Line.hxx".}
proc typeContour*(this: ContapLine): ContapIType {.noSideEffect,
    importcpp: "TypeContour", header: "Contap_Line.hxx".}
proc nbPnts*(this: ContapLine): cint {.noSideEffect, importcpp: "NbPnts",
                                   header: "Contap_Line.hxx".}
proc point*(this: ContapLine; index: cint): IntSurfPntOn2S {.noSideEffect,
    importcpp: "Point", header: "Contap_Line.hxx".}
proc line*(this: ContapLine): Lin {.noSideEffect, importcpp: "Line",
                                header: "Contap_Line.hxx".}
proc circle*(this: ContapLine): Circ {.noSideEffect, importcpp: "Circle",
                                   header: "Contap_Line.hxx".}
proc arc*(this: ContapLine): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "Contap_Line.hxx".}
proc setTransitionOnS*(this: var ContapLine; t: IntSurfTypeTrans) {.
    importcpp: "SetTransitionOnS", header: "Contap_Line.hxx".}
proc transitionOnS*(this: ContapLine): IntSurfTypeTrans {.noSideEffect,
    importcpp: "TransitionOnS", header: "Contap_Line.hxx".}

























