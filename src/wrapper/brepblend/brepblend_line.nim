import brepblend_types
import ../intsurf/intsurf_types
import ../blend/blend_types





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



proc newBRepBlendLine*(): BRepBlendLine {.cdecl, constructor,
                                       importcpp: "BRepBlend_Line(@)",
                                       header: "BRepBlend_Line.hxx".}
proc clear*(this: var BRepBlendLine) {.cdecl, importcpp: "Clear", header: "BRepBlend_Line.hxx".}
proc append*(this: var BRepBlendLine; p: BlendPoint) {.cdecl, importcpp: "Append",
    header: "BRepBlend_Line.hxx".}
proc prepend*(this: var BRepBlendLine; p: BlendPoint) {.cdecl, importcpp: "Prepend",
    header: "BRepBlend_Line.hxx".}
proc insertBefore*(this: var BRepBlendLine; index: cint; p: BlendPoint) {.cdecl,
    importcpp: "InsertBefore", header: "BRepBlend_Line.hxx".}
proc remove*(this: var BRepBlendLine; fromIndex: cint; toIndex: cint) {.cdecl,
    importcpp: "Remove", header: "BRepBlend_Line.hxx".}
proc set*(this: var BRepBlendLine; tranS1: IntSurfTypeTrans; tranS2: IntSurfTypeTrans) {.
    cdecl, importcpp: "Set", header: "BRepBlend_Line.hxx".}
proc set*(this: var BRepBlendLine; trans: IntSurfTypeTrans) {.cdecl, importcpp: "Set",
    header: "BRepBlend_Line.hxx".}
proc setStartPoints*(this: var BRepBlendLine; startPt1: BRepBlendExtremity;
                    startPt2: BRepBlendExtremity) {.cdecl,
    importcpp: "SetStartPoints", header: "BRepBlend_Line.hxx".}
proc setEndPoints*(this: var BRepBlendLine; endPt1: BRepBlendExtremity;
                  endPt2: BRepBlendExtremity) {.cdecl, importcpp: "SetEndPoints",
    header: "BRepBlend_Line.hxx".}
proc nbPoints*(this: BRepBlendLine): cint {.noSideEffect, cdecl,
                                        importcpp: "NbPoints", header: "BRepBlend_Line.hxx".}
proc point*(this: BRepBlendLine; index: cint): BlendPoint {.noSideEffect, cdecl,
    importcpp: "Point", header: "BRepBlend_Line.hxx".}
proc transitionOnS1*(this: BRepBlendLine): IntSurfTypeTrans {.noSideEffect, cdecl,
    importcpp: "TransitionOnS1", header: "BRepBlend_Line.hxx".}
proc transitionOnS2*(this: BRepBlendLine): IntSurfTypeTrans {.noSideEffect, cdecl,
    importcpp: "TransitionOnS2", header: "BRepBlend_Line.hxx".}
proc startPointOnFirst*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect,
    cdecl, importcpp: "StartPointOnFirst", header: "BRepBlend_Line.hxx".}
proc startPointOnSecond*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect,
    cdecl, importcpp: "StartPointOnSecond", header: "BRepBlend_Line.hxx".}
proc endPointOnFirst*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect, cdecl,
    importcpp: "EndPointOnFirst", header: "BRepBlend_Line.hxx".}
proc endPointOnSecond*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect,
    cdecl, importcpp: "EndPointOnSecond", header: "BRepBlend_Line.hxx".}
proc transitionOnS*(this: BRepBlendLine): IntSurfTypeTrans {.noSideEffect, cdecl,
    importcpp: "TransitionOnS", header: "BRepBlend_Line.hxx".}


