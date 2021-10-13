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
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  GpVec* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object ## ! Creates a zero vector.


proc constructGpVec*(): GpVec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                             dynlib: tkmath.}
proc constructGpVec*(v: GpDir): GpVec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                                    dynlib: tkmath.}
proc constructGpVec*(coord: GpXYZ): GpVec {.cdecl, constructor,
                                        importcpp: "gp_Vec(@)", dynlib: tkmath.}
proc constructGpVec*(xv: cfloat; yv: cfloat; zv: cfloat): GpVec {.cdecl, constructor,
    importcpp: "gp_Vec(@)", dynlib: tkmath.}
proc constructGpVec*(p1: GpPnt; p2: GpPnt): GpVec {.cdecl, constructor,
    importcpp: "gp_Vec(@)", dynlib: tkmath.}
proc setCoord*(this: var GpVec; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var GpVec; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setX*(this: var GpVec; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpVec; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var GpVec; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc setXYZ*(this: var GpVec; coord: GpXYZ) {.cdecl, importcpp: "SetXYZ", dynlib: tkmath.}
proc coord*(this: GpVec; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc coord*(this: GpVec; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", dynlib: tkmath.}
proc x*(this: GpVec): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpVec): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: GpVec): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc xyz*(this: GpVec): GpXYZ {.noSideEffect, cdecl, importcpp: "XYZ", dynlib: tkmath.}
proc isEqual*(this: GpVec; other: GpVec; linearTolerance: cfloat;
             angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: GpVec; other: GpVec; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: GpVec; other: GpVec; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: GpVec; other: GpVec; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: GpVec; other: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc angleWithRef*(this: GpVec; other: GpVec; vRef: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", dynlib: tkmath.}
proc magnitude*(this: GpVec): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                   dynlib: tkmath.}
proc squareMagnitude*(this: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkmath.}
proc add*(this: var GpVec; other: GpVec) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var GpVec; other: GpVec) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: GpVec; other: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "Added",
    dynlib: tkmath.}
proc `+`*(this: GpVec; other: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        dynlib: tkmath.}
proc subtract*(this: var GpVec; right: GpVec) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var GpVec; right: GpVec) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: GpVec; right: GpVec): GpVec {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpVec; right: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        dynlib: tkmath.}
proc multiply*(this: var GpVec; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpVec; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        dynlib: tkmath.}
proc multiplied*(this: GpVec; scalar: cfloat): GpVec {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpVec; scalar: cfloat): GpVec {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc divide*(this: var GpVec; scalar: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var GpVec; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        dynlib: tkmath.}
proc divided*(this: GpVec; scalar: cfloat): GpVec {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: GpVec; scalar: cfloat): GpVec {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc cross*(this: var GpVec; right: GpVec) {.cdecl, importcpp: "Cross", dynlib: tkmath.}
proc `^=`*(this: var GpVec; right: GpVec) {.cdecl, importcpp: "(# ^= #)", dynlib: tkmath.}
proc crossed*(this: GpVec; right: GpVec): GpVec {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: GpVec; right: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                        dynlib: tkmath.}
proc crossMagnitude*(this: GpVec; right: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: GpVec; right: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc crossCross*(this: var GpVec; v1: GpVec; v2: GpVec) {.cdecl, importcpp: "CrossCross",
    dynlib: tkmath.}
proc crossCrossed*(this: GpVec; v1: GpVec; v2: GpVec): GpVec {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc dot*(this: GpVec; other: GpVec): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    dynlib: tkmath.}
proc `*`*(this: GpVec; other: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc dotCross*(this: GpVec; v1: GpVec; v2: GpVec): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", dynlib: tkmath.}
proc normalize*(this: var GpVec) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "Normalized",
                                   dynlib: tkmath.}
proc reverse*(this: var GpVec) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc `-`*(this: GpVec): GpVec {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec; a1: cfloat; v1: GpVec; a2: cfloat; v2: GpVec;
                   a3: cfloat; v3: GpVec; v4: GpVec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec; a1: cfloat; v1: GpVec; a2: cfloat; v2: GpVec;
                   a3: cfloat; v3: GpVec) {.cdecl, importcpp: "SetLinearForm",
                                        dynlib: tkmath.}
proc setLinearForm*(this: var GpVec; a1: cfloat; v1: GpVec; a2: cfloat; v2: GpVec; v3: GpVec) {.
    cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec; a1: cfloat; v1: GpVec; a2: cfloat; v2: GpVec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec; a1: cfloat; v1: GpVec; v2: GpVec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec; v1: GpVec; v2: GpVec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc mirror*(this: var GpVec; v: GpVec) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpVec; v: GpVec): GpVec {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpVec; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpVec; a1: GpAx1): GpVec {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpVec; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpVec; a2: GpAx2): GpVec {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpVec; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpVec; a1: GpAx1; ang: cfloat): GpVec {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpVec; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: GpVec; s: cfloat): GpVec {.noSideEffect, cdecl, importcpp: "Scaled",
                                        dynlib: tkmath.}
proc transform*(this: var GpVec; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpVec; t: GpTrsf): GpVec {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc dumpJson*(this: GpVec; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}