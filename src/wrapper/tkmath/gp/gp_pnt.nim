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
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Pnt* {.importcpp: "gp_Pnt", header: "gp_Pnt.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.


proc newPnt*(): Pnt {.cdecl, constructor, importcpp: "gp_Pnt(@)", dynlib: tkmath.}
proc newPnt*(coord: Xyz): Pnt {.cdecl, constructor, importcpp: "gp_Pnt(@)",
                            dynlib: tkmath.}
proc newPnt*(xp: cfloat; yp: cfloat; zp: cfloat): Pnt {.cdecl, constructor,
    importcpp: "gp_Pnt(@)", dynlib: tkmath.}
proc setCoord*(this: var Pnt; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Pnt; xp: cfloat; yp: cfloat; zp: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setX*(this: var Pnt; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Pnt; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var Pnt; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc setXYZ*(this: var Pnt; coord: Xyz) {.cdecl, importcpp: "SetXYZ", dynlib: tkmath.}
proc coord*(this: Pnt; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        dynlib: tkmath.}
proc coord*(this: Pnt; xp: var cfloat; yp: var cfloat; zp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc xyz*(this: Pnt): Xyz {.noSideEffect, cdecl, importcpp: "XYZ", dynlib: tkmath.}
proc coord*(this: Pnt): Xyz {.noSideEffect, cdecl, importcpp: "Coord", dynlib: tkmath.}
proc changeCoord*(this: var Pnt): var Xyz {.cdecl, importcpp: "ChangeCoord",
                                      dynlib: tkmath.}
proc baryCenter*(this: var Pnt; alpha: cfloat; p: Pnt; beta: cfloat) {.cdecl,
    importcpp: "BaryCenter", dynlib: tkmath.}
proc isEqual*(this: Pnt; other: Pnt; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc distance*(this: Pnt; other: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: Pnt; other: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc mirror*(this: var Pnt; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pnt; p: Pnt): Pnt {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   dynlib: tkmath.}
proc mirror*(this: var Pnt; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pnt; a1: Ax1): Pnt {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc mirror*(this: var Pnt; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Pnt; a2: Ax2): Pnt {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc rotate*(this: var Pnt; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Pnt; a1: Ax1; ang: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Pnt; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Pnt; p: Pnt; s: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Pnt; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Pnt; t: Trsf): Pnt {.noSideEffect, cdecl,
                                       importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Pnt; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Pnt; v: Vec): Pnt {.noSideEffect, cdecl, importcpp: "Translated",
                                     dynlib: tkmath.}
proc translate*(this: var Pnt; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Pnt; p1: Pnt; p2: Pnt): Pnt {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: Pnt; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var Pnt; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", dynlib: tkmath.}