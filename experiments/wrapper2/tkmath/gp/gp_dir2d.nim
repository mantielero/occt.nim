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
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  Dir2d* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object ## ! Creates a direction
                                                                    ## corresponding to X axis.


proc newDir2d*(): Dir2d {.cdecl, constructor, importcpp: "gp_Dir2d(@)", dynlib: tkmath.}
proc newDir2d*(v: Vec2d): Dir2d {.cdecl, constructor, importcpp: "gp_Dir2d(@)",
                              dynlib: tkmath.}
proc newDir2d*(coord: Xy): Dir2d {.cdecl, constructor, importcpp: "gp_Dir2d(@)",
                               dynlib: tkmath.}
proc newDir2d*(xv: cfloat; yv: cfloat): Dir2d {.cdecl, constructor,
    importcpp: "gp_Dir2d(@)", dynlib: tkmath.}
proc setCoord*(this: var Dir2d; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Dir2d; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var Dir2d; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Dir2d; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setXY*(this: var Dir2d; coord: Xy) {.cdecl, importcpp: "SetXY", dynlib: tkmath.}
proc coord*(this: Dir2d; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc coord*(this: Dir2d; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Dir2d): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Dir2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc xy*(this: Dir2d): Xy {.noSideEffect, cdecl, importcpp: "XY", dynlib: tkmath.}
proc isEqual*(this: Dir2d; other: Dir2d; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: Dir2d; other: Dir2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: Dir2d; other: Dir2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: Dir2d; other: Dir2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: Dir2d; other: Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc crossed*(this: Dir2d; right: Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: Dir2d; right: Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", dynlib: tkmath.}
proc dot*(this: Dir2d; other: Dir2d): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    dynlib: tkmath.}
proc `*`*(this: Dir2d; other: Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc reverse*(this: var Dir2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Dir2d): Dir2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc `-`*(this: Dir2d): Dir2d {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc mirror*(this: var Dir2d; v: Dir2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Dir2d; v: Dir2d): Dir2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Dir2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Dir2d; a: Ax2d): Dir2d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Dir2d; ang: cfloat) {.cdecl, importcpp: "Rotate", dynlib: tkmath.}
proc rotated*(this: Dir2d; ang: cfloat): Dir2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc transform*(this: var Dir2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: Dir2d; t: Trsf2d): Dir2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc dumpJson*(this: Dir2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}