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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  GpVec2d* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object ## ! Creates a zero vector.


proc constructGpVec2d*(): GpVec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                                 dynlib: tkmath.}
proc constructGpVec2d*(v: GpDir2d): GpVec2d {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc constructGpVec2d*(coord: GpXY): GpVec2d {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc constructGpVec2d*(xv: cfloat; yv: cfloat): GpVec2d {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc constructGpVec2d*(p1: GpPnt2d; p2: GpPnt2d): GpVec2d {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc setCoord*(this: var GpVec2d; index: cint; xi: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setCoord*(this: var GpVec2d; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var GpVec2d; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpVec2d; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setXY*(this: var GpVec2d; coord: GpXY) {.cdecl, importcpp: "SetXY", dynlib: tkmath.}
proc coord*(this: GpVec2d; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc coord*(this: GpVec2d; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: GpVec2d): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpVec2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc xy*(this: GpVec2d): GpXY {.noSideEffect, cdecl, importcpp: "XY", dynlib: tkmath.}
proc isEqual*(this: GpVec2d; other: GpVec2d; linearTolerance: cfloat;
             angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: GpVec2d; other: GpVec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: GpVec2d; other: GpVec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: GpVec2d; other: GpVec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: GpVec2d; other: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc magnitude*(this: GpVec2d): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                     dynlib: tkmath.}
proc squareMagnitude*(this: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkmath.}
proc add*(this: var GpVec2d; other: GpVec2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var GpVec2d; other: GpVec2d) {.cdecl, importcpp: "(# += #)",
    dynlib: tkmath.}
proc added*(this: GpVec2d; other: GpVec2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Added", dynlib: tkmath.}
proc `+`*(this: GpVec2d; other: GpVec2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "(# + #)", dynlib: tkmath.}
proc crossed*(this: GpVec2d; right: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: GpVec2d; right: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", dynlib: tkmath.}
proc crossMagnitude*(this: GpVec2d; right: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: GpVec2d; right: GpVec2d): cfloat {.noSideEffect,
    cdecl, importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc divide*(this: var GpVec2d; scalar: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var GpVec2d; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkmath.}
proc divided*(this: GpVec2d; scalar: cfloat): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: GpVec2d; scalar: cfloat): GpVec2d {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc dot*(this: GpVec2d; other: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", dynlib: tkmath.}
proc `*`*(this: GpVec2d; other: GpVec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc getNormal*(this: GpVec2d): GpVec2d {.noSideEffect, cdecl, importcpp: "GetNormal",
                                      dynlib: tkmath.}
proc multiply*(this: var GpVec2d; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpVec2d; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkmath.}
proc multiplied*(this: GpVec2d; scalar: cfloat): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpVec2d; scalar: cfloat): GpVec2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc normalize*(this: var GpVec2d) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: GpVec2d): GpVec2d {.noSideEffect, cdecl,
                                       importcpp: "Normalized", dynlib: tkmath.}
proc reverse*(this: var GpVec2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpVec2d): GpVec2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                     dynlib: tkmath.}
proc `-`*(this: GpVec2d): GpVec2d {.noSideEffect, cdecl, importcpp: "(- #)",
                                dynlib: tkmath.}
proc subtract*(this: var GpVec2d; right: GpVec2d) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var GpVec2d; right: GpVec2d) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkmath.}
proc subtracted*(this: GpVec2d; right: GpVec2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpVec2d; right: GpVec2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "(# - #)", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec2d; a1: cfloat; v1: GpVec2d; a2: cfloat; v2: GpVec2d;
                   v3: GpVec2d) {.cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec2d; a1: cfloat; v1: GpVec2d; a2: cfloat; v2: GpVec2d) {.
    cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec2d; a1: cfloat; v1: GpVec2d; v2: GpVec2d) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpVec2d; left: GpVec2d; right: GpVec2d) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc mirror*(this: var GpVec2d; v: GpVec2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpVec2d; v: GpVec2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpVec2d; a1: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpVec2d; a1: GpAx2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpVec2d; ang: cfloat) {.cdecl, importcpp: "Rotate", dynlib: tkmath.}
proc rotated*(this: GpVec2d; ang: cfloat): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpVec2d; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: GpVec2d; s: cfloat): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpVec2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpVec2d; t: GpTrsf2d): GpVec2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}