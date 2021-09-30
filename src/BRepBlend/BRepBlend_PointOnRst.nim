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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_Transition"
type
  BRepBlendPointOnRst* {.importcpp: "BRepBlend_PointOnRst",
                        header: "BRepBlend_PointOnRst.hxx", bycopy.} = object


proc `new`*(this: var BRepBlendPointOnRst; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_PointOnRst::operator new",
    header: "BRepBlend_PointOnRst.hxx".}
proc `delete`*(this: var BRepBlendPointOnRst; theAddress: pointer) {.
    importcpp: "BRepBlend_PointOnRst::operator delete",
    header: "BRepBlend_PointOnRst.hxx".}
proc `new[]`*(this: var BRepBlendPointOnRst; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_PointOnRst::operator new[]",
    header: "BRepBlend_PointOnRst.hxx".}
proc `delete[]`*(this: var BRepBlendPointOnRst; theAddress: pointer) {.
    importcpp: "BRepBlend_PointOnRst::operator delete[]",
    header: "BRepBlend_PointOnRst.hxx".}
proc `new`*(this: var BRepBlendPointOnRst; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_PointOnRst::operator new",
    header: "BRepBlend_PointOnRst.hxx".}
proc `delete`*(this: var BRepBlendPointOnRst; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_PointOnRst::operator delete",
    header: "BRepBlend_PointOnRst.hxx".}
proc constructBRepBlendPointOnRst*(): BRepBlendPointOnRst {.constructor,
    importcpp: "BRepBlend_PointOnRst(@)", header: "BRepBlend_PointOnRst.hxx".}
proc constructBRepBlendPointOnRst*(a: Handle[Adaptor2dHCurve2d];
                                  param: StandardReal; tLine: IntSurfTransition;
                                  tArc: IntSurfTransition): BRepBlendPointOnRst {.
    constructor, importcpp: "BRepBlend_PointOnRst(@)",
    header: "BRepBlend_PointOnRst.hxx".}
proc setArc*(this: var BRepBlendPointOnRst; a: Handle[Adaptor2dHCurve2d];
            param: StandardReal; tLine: IntSurfTransition; tArc: IntSurfTransition) {.
    importcpp: "SetArc", header: "BRepBlend_PointOnRst.hxx".}
proc arc*(this: BRepBlendPointOnRst): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "BRepBlend_PointOnRst.hxx".}
proc transitionOnLine*(this: BRepBlendPointOnRst): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnLine", header: "BRepBlend_PointOnRst.hxx".}
proc transitionOnArc*(this: BRepBlendPointOnRst): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnArc", header: "BRepBlend_PointOnRst.hxx".}
proc parameterOnArc*(this: BRepBlendPointOnRst): StandardReal {.noSideEffect,
    importcpp: "ParameterOnArc", header: "BRepBlend_PointOnRst.hxx".}