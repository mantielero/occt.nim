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
  Circ* {.importcpp: "gp_Circ", header: "gp_Circ.hxx", bycopy.} = object ## ! Creates an indefinite circle.


proc newCirc*(): Circ {.cdecl, constructor, importcpp: "gp_Circ(@)", dynlib: tkmath.}
proc newCirc*(a2: Ax2; radius: cfloat): Circ {.cdecl, constructor,
    importcpp: "gp_Circ(@)", dynlib: tkmath.}
proc setAxis*(this: var Circ; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var Circ; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                      dynlib: tkmath.}
proc setPosition*(this: var Circ; a2: Ax2) {.cdecl, importcpp: "SetPosition",
                                       dynlib: tkmath.}
proc setRadius*(this: var Circ; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc area*(this: Circ): cfloat {.noSideEffect, cdecl, importcpp: "Area", dynlib: tkmath.}
proc axis*(this: Circ): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc length*(this: Circ): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                               dynlib: tkmath.}
proc location*(this: Circ): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                              dynlib: tkmath.}
proc position*(this: Circ): Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                              dynlib: tkmath.}
proc radius*(this: Circ): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                               dynlib: tkmath.}
proc xAxis*(this: Circ): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Circ): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc distance*(this: Circ; p: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                       dynlib: tkmath.}
proc squareDistance*(this: Circ; p: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc contains*(this: Circ; p: Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkmath.}
proc mirror*(this: var Circ; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Circ; p: Pnt): Circ {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     dynlib: tkmath.}
proc mirror*(this: var Circ; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Circ; a1: Ax1): Circ {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc mirror*(this: var Circ; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Circ; a2: Ax2): Circ {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc rotate*(this: var Circ; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Circ; a1: Ax1; ang: cfloat): Circ {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Circ; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Circ; p: Pnt; s: cfloat): Circ {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Circ; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Circ; t: Trsf): Circ {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Circ; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Circ; v: Vec): Circ {.noSideEffect, cdecl,
                                       importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Circ; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Circ; p1: Pnt; p2: Pnt): Circ {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}