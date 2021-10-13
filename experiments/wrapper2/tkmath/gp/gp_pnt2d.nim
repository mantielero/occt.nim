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
  GpPnt2d* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object ## ! Creates a point with zero
                                                                      ## coordinates.


proc constructGpPnt2d*(): GpPnt2d {.cdecl, constructor, importcpp: "gp_Pnt2d(@)",
                                 dynlib: tkmath.}
proc constructGpPnt2d*(coord: GpXY): GpPnt2d {.cdecl, constructor,
    importcpp: "gp_Pnt2d(@)", dynlib: tkmath.}
proc constructGpPnt2d*(xp: cfloat; yp: cfloat): GpPnt2d {.cdecl, constructor,
    importcpp: "gp_Pnt2d(@)", dynlib: tkmath.}
proc setCoord*(this: var GpPnt2d; index: cint; xi: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setCoord*(this: var GpPnt2d; xp: cfloat; yp: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var GpPnt2d; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpPnt2d; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setXY*(this: var GpPnt2d; coord: GpXY) {.cdecl, importcpp: "SetXY", dynlib: tkmath.}
proc coord*(this: GpPnt2d; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc coord*(this: GpPnt2d; xp: var cfloat; yp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: GpPnt2d): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpPnt2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc xy*(this: GpPnt2d): GpXY {.noSideEffect, cdecl, importcpp: "XY", dynlib: tkmath.}
proc coord*(this: GpPnt2d): GpXY {.noSideEffect, cdecl, importcpp: "Coord",
                               dynlib: tkmath.}
proc changeCoord*(this: var GpPnt2d): var GpXY {.cdecl, importcpp: "ChangeCoord",
    dynlib: tkmath.}
proc isEqual*(this: GpPnt2d; other: GpPnt2d; linearTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc distance*(this: GpPnt2d; other: GpPnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpPnt2d; other: GpPnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc mirror*(this: var GpPnt2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPnt2d; p: GpPnt2d): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpPnt2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPnt2d; a: GpAx2d): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpPnt2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpPnt2d; p: GpPnt2d; ang: cfloat): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpPnt2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpPnt2d; p: GpPnt2d; s: cfloat): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpPnt2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpPnt2d; t: GpTrsf2d): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpPnt2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpPnt2d; v: GpVec2d): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpPnt2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpPnt2d; p1: GpPnt2d; p2: GpPnt2d): GpPnt2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpPnt2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}