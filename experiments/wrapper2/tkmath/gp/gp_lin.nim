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
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpLin* {.importcpp: "gp_Lin", header: "gp_Lin.hxx", bycopy.} = object ## ! Creates a Line corresponding to Z axis of the
                                                                ## ! reference coordinate system.


proc constructGpLin*(): GpLin {.cdecl, constructor, importcpp: "gp_Lin(@)",
                             dynlib: tkmath.}
proc constructGpLin*(a1: GpAx1): GpLin {.cdecl, constructor, importcpp: "gp_Lin(@)",
                                     dynlib: tkmath.}
proc constructGpLin*(p: GpPnt; v: GpDir): GpLin {.cdecl, constructor,
    importcpp: "gp_Lin(@)", dynlib: tkmath.}
proc reverse*(this: var GpLin) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpLin): GpLin {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc setDirection*(this: var GpLin; v: GpDir) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc setLocation*(this: var GpLin; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpLin; a1: GpAx1) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc direction*(this: GpLin): GpDir {.noSideEffect, cdecl, importcpp: "Direction",
                                  dynlib: tkmath.}
proc location*(this: GpLin): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                 dynlib: tkmath.}
proc position*(this: GpLin): GpAx1 {.noSideEffect, cdecl, importcpp: "Position",
                                 dynlib: tkmath.}
proc angle*(this: GpLin; other: GpLin): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc contains*(this: GpLin; p: GpPnt; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc distance*(this: GpLin; p: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc distance*(this: GpLin; other: GpLin): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpLin; p: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: GpLin; other: GpLin): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc normal*(this: GpLin; p: GpPnt): GpLin {.noSideEffect, cdecl, importcpp: "Normal",
                                       dynlib: tkmath.}
proc mirror*(this: var GpLin; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpLin; p: GpPnt): GpLin {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpLin; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpLin; a1: GpAx1): GpLin {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpLin; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpLin; a2: GpAx2): GpLin {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpLin; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpLin; a1: GpAx1; ang: cfloat): GpLin {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpLin; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpLin; p: GpPnt; s: cfloat): GpLin {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpLin; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpLin; t: GpTrsf): GpLin {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpLin; v: GpVec) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: GpLin; v: GpVec): GpLin {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpLin; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpLin; p1: GpPnt; p2: GpPnt): GpLin {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}