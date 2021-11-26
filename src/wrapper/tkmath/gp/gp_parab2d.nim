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
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  Parab2d* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object ## !
                                                                          ## Creates an
                                                                          ## indefinite
                                                                          ## parabola.


proc newParab2d*(): Parab2d {.cdecl, constructor, importcpp: "gp_Parab2d(@)",
                           dynlib: tkmath.}
proc newParab2d*(theMirrorAxis: Ax2d; theFocalLength: cfloat; theSense: bool = true): Parab2d {.
    cdecl, constructor, importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc newParab2d*(theAxes: Ax22d; theFocalLength: cfloat): Parab2d {.cdecl, constructor,
    importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc newParab2d*(theDirectrix: Ax2d; theFocus: Pnt2d; theSense: bool = true): Parab2d {.
    cdecl, constructor, importcpp: "gp_Parab2d(@)", dynlib: tkmath.}
proc setFocal*(this: var Parab2d; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    dynlib: tkmath.}
proc setLocation*(this: var Parab2d; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMirrorAxis*(this: var Parab2d; a: Ax2d) {.cdecl, importcpp: "SetMirrorAxis",
    dynlib: tkmath.}
proc setAxis*(this: var Parab2d; a: Ax22d) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc coefficients*(this: Parab2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc directrix*(this: Parab2d): Ax2d {.noSideEffect, cdecl, importcpp: "Directrix",
                                   dynlib: tkmath.}
proc focal*(this: Parab2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 dynlib: tkmath.}
proc focus*(this: Parab2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus",
                                dynlib: tkmath.}
proc location*(this: Parab2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                   dynlib: tkmath.}
proc mirrorAxis*(this: Parab2d): Ax2d {.noSideEffect, cdecl, importcpp: "MirrorAxis",
                                    dynlib: tkmath.}
proc axis*(this: Parab2d): Ax22d {.noSideEffect, cdecl, importcpp: "Axis",
                               dynlib: tkmath.}
proc parameter*(this: Parab2d): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     dynlib: tkmath.}
proc reverse*(this: var Parab2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Parab2d): Parab2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                     dynlib: tkmath.}
proc isDirect*(this: Parab2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                  dynlib: tkmath.}
proc mirror*(this: var Parab2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Parab2d; p: Pnt2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Parab2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Parab2d; a: Ax2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Parab2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Parab2d; p: Pnt2d; ang: cfloat): Parab2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Parab2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Parab2d; p: Pnt2d; s: cfloat): Parab2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Parab2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: Parab2d; t: Trsf2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Parab2d; v: Vec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Parab2d; v: Vec2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Parab2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Parab2d; p1: Pnt2d; p2: Pnt2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}