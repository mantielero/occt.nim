##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpCirc* {.importcpp: "gp_Circ", header: "gp_Circ.hxx", bycopy.} = object ## ! Creates an indefinite circle.


proc constructGpCirc*(): GpCirc {.cdecl, constructor, importcpp: "gp_Circ(@)",
                               dynlib: tkmath.}
proc constructGpCirc*(a2: GpAx2; radius: cfloat): GpCirc {.cdecl, constructor,
    importcpp: "gp_Circ(@)", dynlib: tkmath.}
proc setAxis*(this: var GpCirc; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GpCirc; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpCirc; a2: GpAx2) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc setRadius*(this: var GpCirc; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc area*(this: GpCirc): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                               dynlib: tkmath.}
proc axis*(this: GpCirc): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc length*(this: GpCirc): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                                 dynlib: tkmath.}
proc location*(this: GpCirc): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc position*(this: GpCirc): GpAx2 {.noSideEffect, cdecl, importcpp: "Position",
                                  dynlib: tkmath.}
proc radius*(this: GpCirc): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                 dynlib: tkmath.}
proc xAxis*(this: GpCirc): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                               dynlib: tkmath.}
proc yAxis*(this: GpCirc): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                               dynlib: tkmath.}
proc distance*(this: GpCirc; p: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpCirc; p: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc contains*(this: GpCirc; p: GpPnt; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc mirror*(this: var GpCirc; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCirc; p: GpPnt): GpCirc {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCirc; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCirc; a1: GpAx1): GpCirc {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCirc; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCirc; a2: GpAx2): GpCirc {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpCirc; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpCirc; a1: GpAx1; ang: cfloat): GpCirc {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpCirc; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpCirc; p: GpPnt; s: cfloat): GpCirc {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpCirc; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpCirc; t: GpTrsf): GpCirc {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpCirc; v: GpVec) {.cdecl, importcpp: "Translate",
                                        dynlib: tkmath.}
proc translated*(this: GpCirc; v: GpVec): GpCirc {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpCirc; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpCirc; p1: GpPnt; p2: GpPnt): GpCirc {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}