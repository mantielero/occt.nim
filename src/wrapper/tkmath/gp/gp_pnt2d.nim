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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  Pnt2d* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.


proc newPnt2d*(): Pnt2d {.cdecl, constructor, importcpp: "gp_Pnt2d(@)", dynlib: tkmath.}
proc newPnt2d*(coord: Xy): Pnt2d {.cdecl, constructor, importcpp: "gp_Pnt2d(@)",
                               dynlib: tkmath.}
proc newPnt2d*(xp: cfloat; yp: cfloat): Pnt2d {.cdecl, constructor,
    importcpp: "gp_Pnt2d(@)", dynlib: tkmath.}
proc setCoord*(this: var Pnt2d; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Pnt2d; xp: cfloat; yp: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var Pnt2d; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Pnt2d; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setXY*(this: var Pnt2d; coord: Xy) {.cdecl, importcpp: "SetXY", dynlib: tkmath.}
proc coord*(this: Pnt2d; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc coord*(this: Pnt2d; xp: var cfloat; yp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Pnt2d): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Pnt2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc xy*(this: Pnt2d): Xy {.noSideEffect, cdecl, importcpp: "XY", dynlib: tkmath.}
proc coord*(this: Pnt2d): Xy {.noSideEffect, cdecl, importcpp: "Coord", dynlib: tkmath.}
proc changeCoord*(this: var Pnt2d): var Xy {.cdecl, importcpp: "ChangeCoord",
                                       dynlib: tkmath.}
proc isEqual*(this: Pnt2d; other: Pnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc distance*(this: Pnt2d; other: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: Pnt2d; other: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc mirror*(this: var Pnt2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pnt2d; p: Pnt2d): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Pnt2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pnt2d; a: Ax2d): Pnt2d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Pnt2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Pnt2d; p: Pnt2d; ang: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Pnt2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Pnt2d; p: Pnt2d; s: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Pnt2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: Pnt2d; t: Trsf2d): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Pnt2d; v: Vec2d) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: Pnt2d; v: Vec2d): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Pnt2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Pnt2d; p1: Pnt2d; p2: Pnt2d): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: Pnt2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}