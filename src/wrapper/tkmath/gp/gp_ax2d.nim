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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  Ax2d* {.importcpp: "gp_Ax2d", header: "gp_Ax2d.hxx", bycopy.} = object ## ! Creates an axis object representing X axis of
                                                                 ## ! the reference co-ordinate system.


proc newAx2d*(): Ax2d {.cdecl, constructor, importcpp: "gp_Ax2d(@)", dynlib: tkmath.}
proc newAx2d*(p: Pnt2d; v: Dir2d): Ax2d {.cdecl, constructor, importcpp: "gp_Ax2d(@)",
                                    dynlib: tkmath.}
proc setLocation*(this: var Ax2d; locat: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setDirection*(this: var Ax2d; v: Dir2d) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc location*(this: Ax2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                dynlib: tkmath.}
proc direction*(this: Ax2d): Dir2d {.noSideEffect, cdecl, importcpp: "Direction",
                                 dynlib: tkmath.}
proc isCoaxial*(this: Ax2d; other: Ax2d; angularTolerance: cfloat;
               linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoaxial", dynlib: tkmath.}
proc isNormal*(this: Ax2d; other: Ax2d; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: Ax2d; other: Ax2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: Ax2d; other: Ax2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: Ax2d; other: Ax2d): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    dynlib: tkmath.}
proc reverse*(this: var Ax2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Ax2d): Ax2d {.noSideEffect, cdecl, importcpp: "Reversed",
                               dynlib: tkmath.}
proc mirror*(this: var Ax2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax2d; p: Pnt2d): Ax2d {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       dynlib: tkmath.}
proc mirror*(this: var Ax2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Ax2d; a: Ax2d): Ax2d {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc rotate*(this: var Ax2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Ax2d; p: Pnt2d; ang: cfloat): Ax2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Ax2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Ax2d; p: Pnt2d; s: cfloat): Ax2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Ax2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
                                       dynlib: tkmath.}
proc transformed*(this: Ax2d; t: Trsf2d): Ax2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Ax2d; v: Vec2d) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Ax2d; v: Vec2d): Ax2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Ax2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Ax2d; p1: Pnt2d; p2: Pnt2d): Ax2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: Ax2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}