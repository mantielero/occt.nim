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
  Parab* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object ## ! Creates an indefinite Parabola.


proc newParab*(): Parab {.cdecl, constructor, importcpp: "gp_Parab(@)", dynlib: tkmath.}
proc newParab*(a2: Ax2; focal: cfloat): Parab {.cdecl, constructor,
    importcpp: "gp_Parab(@)", dynlib: tkmath.}
proc newParab*(d: Ax1; f: Pnt): Parab {.cdecl, constructor, importcpp: "gp_Parab(@)",
                                  dynlib: tkmath.}
proc setAxis*(this: var Parab; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setFocal*(this: var Parab; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    dynlib: tkmath.}
proc setLocation*(this: var Parab; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                       dynlib: tkmath.}
proc setPosition*(this: var Parab; a2: Ax2) {.cdecl, importcpp: "SetPosition",
                                        dynlib: tkmath.}
proc axis*(this: Parab): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc directrix*(this: Parab): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix",
                                dynlib: tkmath.}
proc focal*(this: Parab): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               dynlib: tkmath.}
proc focus*(this: Parab): Pnt {.noSideEffect, cdecl, importcpp: "Focus", dynlib: tkmath.}
proc location*(this: Parab): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               dynlib: tkmath.}
proc parameter*(this: Parab): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   dynlib: tkmath.}
proc position*(this: Parab): Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                               dynlib: tkmath.}
proc xAxis*(this: Parab): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Parab): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc mirror*(this: var Parab; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Parab; p: Pnt): Parab {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       dynlib: tkmath.}
proc mirror*(this: var Parab; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Parab; a1: Ax1): Parab {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Parab; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Parab; a2: Ax2): Parab {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Parab; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Parab; a1: Ax1; ang: cfloat): Parab {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Parab; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Parab; p: Pnt; s: cfloat): Parab {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Parab; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Parab; t: Trsf): Parab {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Parab; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Parab; v: Vec): Parab {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Parab; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Parab; p1: Pnt; p2: Pnt): Parab {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}