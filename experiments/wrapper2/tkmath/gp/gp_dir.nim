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
  GpDir* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object ## ! Creates a direction corresponding to X axis.


proc constructGpDir*(): GpDir {.cdecl, constructor, importcpp: "gp_Dir(@)",
                             dynlib: tkmath.}
proc constructGpDir*(v: GpVec): GpDir {.cdecl, constructor, importcpp: "gp_Dir(@)",
                                    dynlib: tkmath.}
proc constructGpDir*(coord: GpXYZ): GpDir {.cdecl, constructor,
                                        importcpp: "gp_Dir(@)", dynlib: tkmath.}
proc constructGpDir*(xv: cfloat; yv: cfloat; zv: cfloat): GpDir {.cdecl, constructor,
    importcpp: "gp_Dir(@)", dynlib: tkmath.}
proc setCoord*(this: var GpDir; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var GpDir; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setX*(this: var GpDir; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpDir; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var GpDir; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc setXYZ*(this: var GpDir; coord: GpXYZ) {.cdecl, importcpp: "SetXYZ", dynlib: tkmath.}
proc coord*(this: GpDir; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc coord*(this: GpDir; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", dynlib: tkmath.}
proc x*(this: GpDir): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpDir): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: GpDir): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc xyz*(this: GpDir): GpXYZ {.noSideEffect, cdecl, importcpp: "XYZ", dynlib: tkmath.}
proc isEqual*(this: GpDir; other: GpDir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: GpDir; other: GpDir; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: GpDir; other: GpDir; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: GpDir; other: GpDir; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: GpDir; other: GpDir): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc angleWithRef*(this: GpDir; other: GpDir; vRef: GpDir): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", dynlib: tkmath.}
proc cross*(this: var GpDir; right: GpDir) {.cdecl, importcpp: "Cross", dynlib: tkmath.}
proc `^=`*(this: var GpDir; right: GpDir) {.cdecl, importcpp: "(# ^= #)", dynlib: tkmath.}
proc crossed*(this: GpDir; right: GpDir): GpDir {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: GpDir; right: GpDir): GpDir {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                        dynlib: tkmath.}
proc crossCross*(this: var GpDir; v1: GpDir; v2: GpDir) {.cdecl, importcpp: "CrossCross",
    dynlib: tkmath.}
proc crossCrossed*(this: GpDir; v1: GpDir; v2: GpDir): GpDir {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc dot*(this: GpDir; other: GpDir): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    dynlib: tkmath.}
proc `*`*(this: GpDir; other: GpDir): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc dotCross*(this: GpDir; v1: GpDir; v2: GpDir): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", dynlib: tkmath.}
proc reverse*(this: var GpDir) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpDir): GpDir {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc `-`*(this: GpDir): GpDir {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc mirror*(this: var GpDir; v: GpDir) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpDir; v: GpDir): GpDir {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpDir; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpDir; a1: GpAx1): GpDir {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpDir; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpDir; a2: GpAx2): GpDir {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpDir; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpDir; a1: GpAx1; ang: cfloat): GpDir {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc transform*(this: var GpDir; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpDir; t: GpTrsf): GpDir {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc dumpJson*(this: GpDir; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var GpDir; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    dynlib: tkmath.}