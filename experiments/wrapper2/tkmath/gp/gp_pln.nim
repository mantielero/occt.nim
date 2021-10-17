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
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Pln* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object ## ! Creates a plane coincident with OXY plane of the
                                                              ## ! reference coordinate system.


proc newPln*(): Pln {.cdecl, constructor, importcpp: "gp_Pln(@)", dynlib: tkmath.}
proc newPln*(a3: Ax3): Pln {.cdecl, constructor, importcpp: "gp_Pln(@)", dynlib: tkmath.}
proc newPln*(p: Pnt; v: Dir): Pln {.cdecl, constructor, importcpp: "gp_Pln(@)",
                              dynlib: tkmath.}
proc newPln*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): Pln {.cdecl, constructor,
    importcpp: "gp_Pln(@)", dynlib: tkmath.}
proc coefficients*(this: Pln; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", dynlib: tkmath.}
proc setAxis*(this: var Pln; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var Pln; loc: Pnt) {.cdecl, importcpp: "SetLocation",
                                       dynlib: tkmath.}
proc setPosition*(this: var Pln; a3: Ax3) {.cdecl, importcpp: "SetPosition",
                                      dynlib: tkmath.}
proc uReverse*(this: var Pln) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var Pln) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: Pln): bool {.noSideEffect, cdecl, importcpp: "Direct", dynlib: tkmath.}
proc axis*(this: Pln): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc location*(this: Pln): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             dynlib: tkmath.}
proc position*(this: Pln): Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                             dynlib: tkmath.}
proc distance*(this: Pln; p: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      dynlib: tkmath.}
proc distance*(this: Pln; L: Lin): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      dynlib: tkmath.}
proc distance*(this: Pln; other: Pln): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: Pln; p: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: Pln; L: Lin): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: Pln; other: Pln): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc xAxis*(this: Pln): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Pln): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc contains*(this: Pln; p: Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkmath.}
proc contains*(this: Pln; L: Lin; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Contains", dynlib: tkmath.}
proc mirror*(this: var Pln; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pln; p: Pnt): Pln {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   dynlib: tkmath.}
proc mirror*(this: var Pln; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pln; a1: Ax1): Pln {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc mirror*(this: var Pln; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pln; a2: Ax2): Pln {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc rotate*(this: var Pln; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Pln; a1: Ax1; ang: cfloat): Pln {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Pln; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Pln; p: Pnt; s: cfloat): Pln {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Pln; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Pln; t: Trsf): Pln {.noSideEffect, cdecl,
                                       importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Pln; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Pln; v: Vec): Pln {.noSideEffect, cdecl, importcpp: "Translated",
                                     dynlib: tkmath.}
proc translate*(this: var Pln; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Pln; p1: Pnt; p2: Pnt): Pln {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: Pln; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}