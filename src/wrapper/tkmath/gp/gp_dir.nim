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
discard "forward decl of gp_Vec"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  Dir* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object ## ! Creates a direction corresponding to X axis.


proc newDir*(): Dir {.cdecl, constructor, importcpp: "gp_Dir(@)", dynlib: tkmath.}
proc newDir*(v: Vec): Dir {.cdecl, constructor, importcpp: "gp_Dir(@)", dynlib: tkmath.}
proc newDir*(coord: Xyz): Dir {.cdecl, constructor, importcpp: "gp_Dir(@)",
                            dynlib: tkmath.}
proc newDir*(xv: cfloat; yv: cfloat; zv: cfloat): Dir {.cdecl, constructor,
    importcpp: "gp_Dir(@)", dynlib: tkmath.}
proc setCoord*(this: var Dir; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Dir; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setX*(this: var Dir; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Dir; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var Dir; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc setXYZ*(this: var Dir; coord: Xyz) {.cdecl, importcpp: "SetXYZ", dynlib: tkmath.}
proc coord*(this: Dir; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        dynlib: tkmath.}
proc coord*(this: Dir; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Dir): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Dir): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: Dir): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc xyz*(this: Dir): Xyz {.noSideEffect, cdecl, importcpp: "XYZ", dynlib: tkmath.}
proc isEqual*(this: Dir; other: Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: Dir; other: Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: Dir; other: Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: Dir; other: Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: Dir; other: Dir): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       dynlib: tkmath.}
proc angleWithRef*(this: Dir; other: Dir; vRef: Dir): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", dynlib: tkmath.}
proc cross*(this: var Dir; right: Dir) {.cdecl, importcpp: "Cross", dynlib: tkmath.}
proc `^=`*(this: var Dir; right: Dir) {.cdecl, importcpp: "(# ^= #)", dynlib: tkmath.}
proc crossed*(this: Dir; right: Dir): Dir {.noSideEffect, cdecl, importcpp: "Crossed",
                                      dynlib: tkmath.}
proc `^`*(this: Dir; right: Dir): Dir {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  dynlib: tkmath.}
proc crossCross*(this: var Dir; v1: Dir; v2: Dir) {.cdecl, importcpp: "CrossCross",
    dynlib: tkmath.}
proc crossCrossed*(this: Dir; v1: Dir; v2: Dir): Dir {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc dot*(this: Dir; other: Dir): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     dynlib: tkmath.}
proc `*`*(this: Dir; other: Dir): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     dynlib: tkmath.}
proc dotCross*(this: Dir; v1: Dir; v2: Dir): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", dynlib: tkmath.}
proc reverse*(this: var Dir) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Dir): Dir {.noSideEffect, cdecl, importcpp: "Reversed",
                             dynlib: tkmath.}
proc `-`*(this: Dir): Dir {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc mirror*(this: var Dir; v: Dir) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Dir; v: Dir): Dir {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   dynlib: tkmath.}
proc mirror*(this: var Dir; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Dir; a1: Ax1): Dir {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc mirror*(this: var Dir; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Dir; a2: Ax2): Dir {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc rotate*(this: var Dir; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Dir; a1: Ax1; ang: cfloat): Dir {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc transform*(this: var Dir; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Dir; t: Trsf): Dir {.noSideEffect, cdecl,
                                       importcpp: "Transformed", dynlib: tkmath.}
proc dumpJson*(this: Dir; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var Dir; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", dynlib: tkmath.}