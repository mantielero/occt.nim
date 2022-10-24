import brepblend_types

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


proc newBRepBlendPointOnRst*(): BRepBlendPointOnRst {.cdecl, constructor,
    importcpp: "BRepBlend_PointOnRst(@)", header: "BRepBlend_PointOnRst.hxx".}
proc newBRepBlendPointOnRst*(a: Handle[Adaptor2dHCurve2d]; param: cfloat;
                            tLine: IntSurfTransition; tArc: IntSurfTransition): BRepBlendPointOnRst {.
    cdecl, constructor, importcpp: "BRepBlend_PointOnRst(@)", header: "BRepBlend_PointOnRst.hxx".}
proc setArc*(this: var BRepBlendPointOnRst; a: Handle[Adaptor2dHCurve2d];
            param: cfloat; tLine: IntSurfTransition; tArc: IntSurfTransition) {.cdecl,
    importcpp: "SetArc", header: "BRepBlend_PointOnRst.hxx".}
proc arc*(this: BRepBlendPointOnRst): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    cdecl, importcpp: "Arc", header: "BRepBlend_PointOnRst.hxx".}
proc transitionOnLine*(this: BRepBlendPointOnRst): IntSurfTransition {.noSideEffect,
    cdecl, importcpp: "TransitionOnLine", header: "BRepBlend_PointOnRst.hxx".}
proc transitionOnArc*(this: BRepBlendPointOnRst): IntSurfTransition {.noSideEffect,
    cdecl, importcpp: "TransitionOnArc", header: "BRepBlend_PointOnRst.hxx".}
proc parameterOnArc*(this: BRepBlendPointOnRst): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnArc", header: "BRepBlend_PointOnRst.hxx".}
