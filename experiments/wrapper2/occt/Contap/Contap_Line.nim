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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntSurf/IntSurf_TypeTrans,
  Contap_TheHSequenceOfPoint, Contap_IType, ../gp/gp_Pnt, ../gp/gp_Dir,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, ../gp/gp_Lin,
  ../gp/gp_Circ

discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of Contap_Point"
type
  Contap_Line* {.importcpp: "Contap_Line", header: "Contap_Line.hxx", bycopy.} = object


proc constructContap_Line*(): Contap_Line {.constructor,
    importcpp: "Contap_Line(@)", header: "Contap_Line.hxx".}
proc SetLineOn2S*(this: var Contap_Line; L: handle[IntSurf_LineOn2S]) {.
    importcpp: "SetLineOn2S", header: "Contap_Line.hxx".}
proc Clear*(this: var Contap_Line) {.importcpp: "Clear", header: "Contap_Line.hxx".}
proc LineOn2S*(this: Contap_Line): handle[IntSurf_LineOn2S] {.noSideEffect,
    importcpp: "LineOn2S", header: "Contap_Line.hxx".}
proc ResetSeqOfVertex*(this: var Contap_Line) {.importcpp: "ResetSeqOfVertex",
    header: "Contap_Line.hxx".}
proc Add*(this: var Contap_Line; P: IntSurf_PntOn2S) {.importcpp: "Add",
    header: "Contap_Line.hxx".}
proc SetValue*(this: var Contap_Line; L: gp_Lin) {.importcpp: "SetValue",
    header: "Contap_Line.hxx".}
proc SetValue*(this: var Contap_Line; C: gp_Circ) {.importcpp: "SetValue",
    header: "Contap_Line.hxx".}
proc SetValue*(this: var Contap_Line; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "SetValue", header: "Contap_Line.hxx".}
proc Add*(this: var Contap_Line; P: Contap_Point) {.importcpp: "Add",
    header: "Contap_Line.hxx".}
proc NbVertex*(this: Contap_Line): Standard_Integer {.noSideEffect,
    importcpp: "NbVertex", header: "Contap_Line.hxx".}
proc Vertex*(this: Contap_Line; Index: Standard_Integer): var Contap_Point {.
    noSideEffect, importcpp: "Vertex", header: "Contap_Line.hxx".}
proc TypeContour*(this: Contap_Line): Contap_IType {.noSideEffect,
    importcpp: "TypeContour", header: "Contap_Line.hxx".}
proc NbPnts*(this: Contap_Line): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "Contap_Line.hxx".}
proc Point*(this: Contap_Line; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Point", header: "Contap_Line.hxx".}
proc Line*(this: Contap_Line): gp_Lin {.noSideEffect, importcpp: "Line",
                                    header: "Contap_Line.hxx".}
proc Circle*(this: Contap_Line): gp_Circ {.noSideEffect, importcpp: "Circle",
                                       header: "Contap_Line.hxx".}
proc Arc*(this: Contap_Line): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "Contap_Line.hxx".}
proc SetTransitionOnS*(this: var Contap_Line; T: IntSurf_TypeTrans) {.
    importcpp: "SetTransitionOnS", header: "Contap_Line.hxx".}
proc TransitionOnS*(this: Contap_Line): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS", header: "Contap_Line.hxx".}