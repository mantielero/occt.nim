##  Created on: 1993-12-02
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
  ../Standard/Standard_Handle, ../IntSurf/IntSurf_Transition,
  ../Standard/Standard_Real

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_Transition"
type
  BRepBlend_PointOnRst* {.importcpp: "BRepBlend_PointOnRst",
                         header: "BRepBlend_PointOnRst.hxx", bycopy.} = object ## ! Empty
                                                                          ## constructor.


proc constructBRepBlend_PointOnRst*(): BRepBlend_PointOnRst {.constructor,
    importcpp: "BRepBlend_PointOnRst(@)", header: "BRepBlend_PointOnRst.hxx".}
proc constructBRepBlend_PointOnRst*(A: handle[Adaptor2d_HCurve2d];
                                   Param: Standard_Real;
                                   TLine: IntSurf_Transition;
                                   TArc: IntSurf_Transition): BRepBlend_PointOnRst {.
    constructor, importcpp: "BRepBlend_PointOnRst(@)",
    header: "BRepBlend_PointOnRst.hxx".}
proc SetArc*(this: var BRepBlend_PointOnRst; A: handle[Adaptor2d_HCurve2d];
            Param: Standard_Real; TLine: IntSurf_Transition;
            TArc: IntSurf_Transition) {.importcpp: "SetArc",
                                      header: "BRepBlend_PointOnRst.hxx".}
proc Arc*(this: BRepBlend_PointOnRst): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "BRepBlend_PointOnRst.hxx".}
proc TransitionOnLine*(this: BRepBlend_PointOnRst): IntSurf_Transition {.
    noSideEffect, importcpp: "TransitionOnLine", header: "BRepBlend_PointOnRst.hxx".}
proc TransitionOnArc*(this: BRepBlend_PointOnRst): IntSurf_Transition {.
    noSideEffect, importcpp: "TransitionOnArc", header: "BRepBlend_PointOnRst.hxx".}
proc ParameterOnArc*(this: BRepBlend_PointOnRst): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc", header: "BRepBlend_PointOnRst.hxx".}