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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpLin2d* {.importcpp: "gp_Lin2d", header: "gp_Lin2d.hxx", bycopy.} = object ## ! Creates a Line
                                                                      ## corresponding to X axis of the
                                                                      ## ! reference coordinate system.


proc constructGpLin2d*(): GpLin2d {.cdecl, constructor, importcpp: "gp_Lin2d(@)",
                                 dynlib: tkmath.}
proc constructGpLin2d*(a: GpAx2d): GpLin2d {.cdecl, constructor,
    importcpp: "gp_Lin2d(@)", dynlib: tkmath.}
proc constructGpLin2d*(p: GpPnt2d; v: GpDir2d): GpLin2d {.cdecl, constructor,
    importcpp: "gp_Lin2d(@)", dynlib: tkmath.}
proc constructGpLin2d*(a: cfloat; b: cfloat; c: cfloat): GpLin2d {.cdecl, constructor,
    importcpp: "gp_Lin2d(@)", dynlib: tkmath.}
proc reverse*(this: var GpLin2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpLin2d): GpLin2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                     dynlib: tkmath.}
proc setDirection*(this: var GpLin2d; v: GpDir2d) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc setLocation*(this: var GpLin2d; p: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpLin2d; a: GpAx2d) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc coefficients*(this: GpLin2d; a: var cfloat; b: var cfloat; c: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", dynlib: tkmath.}
proc direction*(this: GpLin2d): GpDir2d {.noSideEffect, cdecl, importcpp: "Direction",
                                      dynlib: tkmath.}
proc location*(this: GpLin2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                     dynlib: tkmath.}
proc position*(this: GpLin2d): GpAx2d {.noSideEffect, cdecl, importcpp: "Position",
                                    dynlib: tkmath.}
proc angle*(this: GpLin2d; other: GpLin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc contains*(this: GpLin2d; p: GpPnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc distance*(this: GpLin2d; p: GpPnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc distance*(this: GpLin2d; other: GpLin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpLin2d; p: GpPnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: GpLin2d; other: GpLin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc normal*(this: GpLin2d; p: GpPnt2d): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Normal", dynlib: tkmath.}
proc mirror*(this: var GpLin2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpLin2d; p: GpPnt2d): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpLin2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpLin2d; a: GpAx2d): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpLin2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpLin2d; p: GpPnt2d; ang: cfloat): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpLin2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpLin2d; p: GpPnt2d; s: cfloat): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpLin2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpLin2d; t: GpTrsf2d): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpLin2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpLin2d; v: GpVec2d): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpLin2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpLin2d; p1: GpPnt2d; p2: GpPnt2d): GpLin2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}