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
  Lin2d* {.importcpp: "gp_Lin2d", header: "gp_Lin2d.hxx", bycopy.} = object ## ! Creates a Line
                                                                    ## corresponding to X axis of the
                                                                    ## ! reference coordinate system.


proc newLin2d*(): Lin2d {.cdecl, constructor, importcpp: "gp_Lin2d(@)", dynlib: tkmath.}
proc newLin2d*(a: Ax2d): Lin2d {.cdecl, constructor, importcpp: "gp_Lin2d(@)",
                             dynlib: tkmath.}
proc newLin2d*(p: Pnt2d; v: Dir2d): Lin2d {.cdecl, constructor,
                                      importcpp: "gp_Lin2d(@)", dynlib: tkmath.}
proc newLin2d*(a: cfloat; b: cfloat; c: cfloat): Lin2d {.cdecl, constructor,
    importcpp: "gp_Lin2d(@)", dynlib: tkmath.}
proc reverse*(this: var Lin2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Lin2d): Lin2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc setDirection*(this: var Lin2d; v: Dir2d) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc setLocation*(this: var Lin2d; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var Lin2d; a: Ax2d) {.cdecl, importcpp: "SetPosition",
                                        dynlib: tkmath.}
proc coefficients*(this: Lin2d; a: var cfloat; b: var cfloat; c: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coefficients", dynlib: tkmath.}
proc direction*(this: Lin2d): Dir2d {.noSideEffect, cdecl, importcpp: "Direction",
                                  dynlib: tkmath.}
proc location*(this: Lin2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                 dynlib: tkmath.}
proc position*(this: Lin2d): Ax2d {.noSideEffect, cdecl, importcpp: "Position",
                                dynlib: tkmath.}
proc angle*(this: Lin2d; other: Lin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc contains*(this: Lin2d; p: Pnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc distance*(this: Lin2d; p: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc distance*(this: Lin2d; other: Lin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: Lin2d; p: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: Lin2d; other: Lin2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc normal*(this: Lin2d; p: Pnt2d): Lin2d {.noSideEffect, cdecl, importcpp: "Normal",
                                       dynlib: tkmath.}
proc mirror*(this: var Lin2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Lin2d; p: Pnt2d): Lin2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Lin2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Lin2d; a: Ax2d): Lin2d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Lin2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Lin2d; p: Pnt2d; ang: cfloat): Lin2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Lin2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Lin2d; p: Pnt2d; s: cfloat): Lin2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Lin2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: Lin2d; t: Trsf2d): Lin2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Lin2d; v: Vec2d) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: Lin2d; v: Vec2d): Lin2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Lin2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Lin2d; p1: Pnt2d; p2: Pnt2d): Lin2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}