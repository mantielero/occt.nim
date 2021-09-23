##  Created on: 1993-03-04
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../IntSurf/IntSurf_Transition

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of IntSurf_Transition"
type
  Contap_Point* {.importcpp: "Contap_Point", header: "Contap_Point.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor.


proc constructContap_Point*(): Contap_Point {.constructor,
    importcpp: "Contap_Point(@)", header: "Contap_Point.hxx".}
proc constructContap_Point*(Pt: gp_Pnt; U: Standard_Real; V: Standard_Real): Contap_Point {.
    constructor, importcpp: "Contap_Point(@)", header: "Contap_Point.hxx".}
proc SetValue*(this: var Contap_Point; Pt: gp_Pnt; U: Standard_Real; V: Standard_Real) {.
    importcpp: "SetValue", header: "Contap_Point.hxx".}
proc SetParameter*(this: var Contap_Point; Para: Standard_Real) {.
    importcpp: "SetParameter", header: "Contap_Point.hxx".}
proc SetVertex*(this: var Contap_Point; V: handle[Adaptor3d_HVertex]) {.
    importcpp: "SetVertex", header: "Contap_Point.hxx".}
proc SetArc*(this: var Contap_Point; A: handle[Adaptor2d_HCurve2d];
            Param: Standard_Real; TLine: IntSurf_Transition;
            TArc: IntSurf_Transition) {.importcpp: "SetArc",
                                      header: "Contap_Point.hxx".}
proc SetMultiple*(this: var Contap_Point) {.importcpp: "SetMultiple",
                                        header: "Contap_Point.hxx".}
proc SetInternal*(this: var Contap_Point) {.importcpp: "SetInternal",
                                        header: "Contap_Point.hxx".}
proc Value*(this: Contap_Point): gp_Pnt {.noSideEffect, importcpp: "Value",
                                      header: "Contap_Point.hxx".}
proc ParameterOnLine*(this: Contap_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnLine", header: "Contap_Point.hxx".}
proc Parameters*(this: Contap_Point; U1: var Standard_Real; V1: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters", header: "Contap_Point.hxx".}
proc IsOnArc*(this: Contap_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnArc", header: "Contap_Point.hxx".}
proc Arc*(this: Contap_Point): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "Contap_Point.hxx".}
proc ParameterOnArc*(this: Contap_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc", header: "Contap_Point.hxx".}
proc TransitionOnLine*(this: Contap_Point): IntSurf_Transition {.noSideEffect,
    importcpp: "TransitionOnLine", header: "Contap_Point.hxx".}
proc TransitionOnArc*(this: Contap_Point): IntSurf_Transition {.noSideEffect,
    importcpp: "TransitionOnArc", header: "Contap_Point.hxx".}
proc IsVertex*(this: Contap_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "Contap_Point.hxx".}
proc Vertex*(this: Contap_Point): handle[Adaptor3d_HVertex] {.noSideEffect,
    importcpp: "Vertex", header: "Contap_Point.hxx".}
proc IsMultiple*(this: Contap_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsMultiple", header: "Contap_Point.hxx".}
proc IsInternal*(this: Contap_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsInternal", header: "Contap_Point.hxx".}