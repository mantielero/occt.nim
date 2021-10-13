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
  GpPnt* {.importcpp: "gp_Pnt", header: "gp_Pnt.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.


proc constructGpPnt*(): GpPnt {.cdecl, constructor, importcpp: "gp_Pnt(@)",
                             dynlib: tkmath.}
proc constructGpPnt*(coord: GpXYZ): GpPnt {.cdecl, constructor,
                                        importcpp: "gp_Pnt(@)", dynlib: tkmath.}
proc constructGpPnt*(xp: cfloat; yp: cfloat; zp: cfloat): GpPnt {.cdecl, constructor,
    importcpp: "gp_Pnt(@)", dynlib: tkmath.}
proc setCoord*(this: var GpPnt; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var GpPnt; xp: cfloat; yp: cfloat; zp: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setX*(this: var GpPnt; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpPnt; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var GpPnt; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc setXYZ*(this: var GpPnt; coord: GpXYZ) {.cdecl, importcpp: "SetXYZ", dynlib: tkmath.}
proc coord*(this: GpPnt; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc coord*(this: GpPnt; xp: var cfloat; yp: var cfloat; zp: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", dynlib: tkmath.}
proc x*(this: GpPnt): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpPnt): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: GpPnt): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc xyz*(this: GpPnt): GpXYZ {.noSideEffect, cdecl, importcpp: "XYZ", dynlib: tkmath.}
proc coord*(this: GpPnt): GpXYZ {.noSideEffect, cdecl, importcpp: "Coord",
                              dynlib: tkmath.}
proc changeCoord*(this: var GpPnt): var GpXYZ {.cdecl, importcpp: "ChangeCoord",
    dynlib: tkmath.}
proc baryCenter*(this: var GpPnt; alpha: cfloat; p: GpPnt; beta: cfloat) {.cdecl,
    importcpp: "BaryCenter", dynlib: tkmath.}
proc isEqual*(this: GpPnt; other: GpPnt; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc distance*(this: GpPnt; other: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpPnt; other: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc mirror*(this: var GpPnt; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPnt; p: GpPnt): GpPnt {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpPnt; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPnt; a1: GpAx1): GpPnt {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpPnt; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPnt; a2: GpAx2): GpPnt {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpPnt; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpPnt; a1: GpAx1; ang: cfloat): GpPnt {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpPnt; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpPnt; p: GpPnt; s: cfloat): GpPnt {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpPnt; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpPnt; t: GpTrsf): GpPnt {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpPnt; v: GpVec) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: GpPnt; v: GpVec): GpPnt {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpPnt; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpPnt; p1: GpPnt; p2: GpPnt): GpPnt {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpPnt; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var GpPnt; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    dynlib: tkmath.}