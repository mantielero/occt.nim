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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of BRepBlend_Line"
type
  HandleBRepBlendLine* = Handle[BRepBlendLine]
  BRepBlendLine* {.importcpp: "BRepBlend_Line", header: "BRepBlend_Line.hxx", bycopy.} = object of StandardTransient


proc newBRepBlendLine*(): BRepBlendLine {.cdecl, constructor,
                                       importcpp: "BRepBlend_Line(@)",
                                       dynlib: tkfillet.}
proc clear*(this: var BRepBlendLine) {.cdecl, importcpp: "Clear", dynlib: tkfillet.}
proc append*(this: var BRepBlendLine; p: BlendPoint) {.cdecl, importcpp: "Append",
    dynlib: tkfillet.}
proc prepend*(this: var BRepBlendLine; p: BlendPoint) {.cdecl, importcpp: "Prepend",
    dynlib: tkfillet.}
proc insertBefore*(this: var BRepBlendLine; index: cint; p: BlendPoint) {.cdecl,
    importcpp: "InsertBefore", dynlib: tkfillet.}
proc remove*(this: var BRepBlendLine; fromIndex: cint; toIndex: cint) {.cdecl,
    importcpp: "Remove", dynlib: tkfillet.}
proc set*(this: var BRepBlendLine; tranS1: IntSurfTypeTrans; tranS2: IntSurfTypeTrans) {.
    cdecl, importcpp: "Set", dynlib: tkfillet.}
proc set*(this: var BRepBlendLine; trans: IntSurfTypeTrans) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc setStartPoints*(this: var BRepBlendLine; startPt1: BRepBlendExtremity;
                    startPt2: BRepBlendExtremity) {.cdecl,
    importcpp: "SetStartPoints", dynlib: tkfillet.}
proc setEndPoints*(this: var BRepBlendLine; endPt1: BRepBlendExtremity;
                  endPt2: BRepBlendExtremity) {.cdecl, importcpp: "SetEndPoints",
    dynlib: tkfillet.}
proc nbPoints*(this: BRepBlendLine): cint {.noSideEffect, cdecl,
                                        importcpp: "NbPoints", dynlib: tkfillet.}
proc point*(this: BRepBlendLine; index: cint): BlendPoint {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkfillet.}
proc transitionOnS1*(this: BRepBlendLine): IntSurfTypeTrans {.noSideEffect, cdecl,
    importcpp: "TransitionOnS1", dynlib: tkfillet.}
proc transitionOnS2*(this: BRepBlendLine): IntSurfTypeTrans {.noSideEffect, cdecl,
    importcpp: "TransitionOnS2", dynlib: tkfillet.}
proc startPointOnFirst*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect,
    cdecl, importcpp: "StartPointOnFirst", dynlib: tkfillet.}
proc startPointOnSecond*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect,
    cdecl, importcpp: "StartPointOnSecond", dynlib: tkfillet.}
proc endPointOnFirst*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect, cdecl,
    importcpp: "EndPointOnFirst", dynlib: tkfillet.}
proc endPointOnSecond*(this: BRepBlendLine): BRepBlendExtremity {.noSideEffect,
    cdecl, importcpp: "EndPointOnSecond", dynlib: tkfillet.}
proc transitionOnS*(this: BRepBlendLine): IntSurfTypeTrans {.noSideEffect, cdecl,
    importcpp: "TransitionOnS", dynlib: tkfillet.}