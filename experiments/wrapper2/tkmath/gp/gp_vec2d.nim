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
  Vec2d* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object ## ! Creates a zero vector.


proc newVec2d*(): Vec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc newVec2d*(v: Dir2d): Vec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                              dynlib: tkmath.}
proc newVec2d*(coord: Xy): Vec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                               dynlib: tkmath.}
proc newVec2d*(xv: cfloat; yv: cfloat): Vec2d {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc newVec2d*(p1: Pnt2d; p2: Pnt2d): Vec2d {.cdecl, constructor,
                                        importcpp: "gp_Vec2d(@)", dynlib: tkmath.}
proc setCoord*(this: var Vec2d; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Vec2d; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var Vec2d; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Vec2d; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setXY*(this: var Vec2d; coord: Xy) {.cdecl, importcpp: "SetXY", dynlib: tkmath.}
proc coord*(this: Vec2d; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc coord*(this: Vec2d; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc xy*(this: Vec2d): Xy {.noSideEffect, cdecl, importcpp: "XY", dynlib: tkmath.}
proc isEqual*(this: Vec2d; other: Vec2d; linearTolerance: cfloat;
             angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: Vec2d; other: Vec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: Vec2d; other: Vec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: Vec2d; other: Vec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: Vec2d; other: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc magnitude*(this: Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                   dynlib: tkmath.}
proc squareMagnitude*(this: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkmath.}
proc add*(this: var Vec2d; other: Vec2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var Vec2d; other: Vec2d) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: Vec2d; other: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "Added",
    dynlib: tkmath.}
proc `+`*(this: Vec2d; other: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        dynlib: tkmath.}
proc crossed*(this: Vec2d; right: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: Vec2d; right: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", dynlib: tkmath.}
proc crossMagnitude*(this: Vec2d; right: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: Vec2d; right: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc divide*(this: var Vec2d; scalar: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var Vec2d; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        dynlib: tkmath.}
proc divided*(this: Vec2d; scalar: cfloat): Vec2d {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: Vec2d; scalar: cfloat): Vec2d {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc dot*(this: Vec2d; other: Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    dynlib: tkmath.}
proc `*`*(this: Vec2d; other: Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc getNormal*(this: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "GetNormal",
                                  dynlib: tkmath.}
proc multiply*(this: var Vec2d; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var Vec2d; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        dynlib: tkmath.}
proc multiplied*(this: Vec2d; scalar: cfloat): Vec2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Vec2d; scalar: cfloat): Vec2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc normalize*(this: var Vec2d) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "Normalized",
                                   dynlib: tkmath.}
proc reverse*(this: var Vec2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc `-`*(this: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc subtract*(this: var Vec2d; right: Vec2d) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var Vec2d; right: Vec2d) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: Vec2d; right: Vec2d): Vec2d {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: Vec2d; right: Vec2d): Vec2d {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        dynlib: tkmath.}
proc setLinearForm*(this: var Vec2d; a1: cfloat; v1: Vec2d; a2: cfloat; v2: Vec2d; v3: Vec2d) {.
    cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec2d; a1: cfloat; v1: Vec2d; a2: cfloat; v2: Vec2d) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec2d; a1: cfloat; v1: Vec2d; v2: Vec2d) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec2d; left: Vec2d; right: Vec2d) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc mirror*(this: var Vec2d; v: Vec2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Vec2d; v: Vec2d): Vec2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Vec2d; a1: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Vec2d; a1: Ax2d): Vec2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Vec2d; ang: cfloat) {.cdecl, importcpp: "Rotate", dynlib: tkmath.}
proc rotated*(this: Vec2d; ang: cfloat): Vec2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Vec2d; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Vec2d; s: cfloat): Vec2d {.noSideEffect, cdecl, importcpp: "Scaled",
                                        dynlib: tkmath.}
proc transform*(this: var Vec2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: Vec2d; t: Trsf2d): Vec2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}