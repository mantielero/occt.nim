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
  Vec* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object ## ! Creates a zero vector.


proc newVec*(): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)", dynlib: tkmath.}
proc newVec*(v: Dir): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)", dynlib: tkmath.}
proc newVec*(coord: Xyz): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                            dynlib: tkmath.}
proc newVec*(xv: cfloat; yv: cfloat; zv: cfloat): Vec {.cdecl, constructor,
    importcpp: "gp_Vec(@)", dynlib: tkmath.}
proc newVec*(p1: Pnt; p2: Pnt): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                                dynlib: tkmath.}
proc setCoord*(this: var Vec; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Vec; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setX*(this: var Vec; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Vec; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var Vec; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc setXYZ*(this: var Vec; coord: Xyz) {.cdecl, importcpp: "SetXYZ", dynlib: tkmath.}
proc coord*(this: Vec; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        dynlib: tkmath.}
proc coord*(this: Vec; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc xyz*(this: Vec): Xyz {.noSideEffect, cdecl, importcpp: "XYZ", dynlib: tkmath.}
proc isEqual*(this: Vec; other: Vec; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkmath.}
proc isNormal*(this: Vec; other: Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", dynlib: tkmath.}
proc isOpposite*(this: Vec; other: Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", dynlib: tkmath.}
proc isParallel*(this: Vec; other: Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc angle*(this: Vec; other: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       dynlib: tkmath.}
proc angleWithRef*(this: Vec; other: Vec; vRef: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", dynlib: tkmath.}
proc magnitude*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                 dynlib: tkmath.}
proc squareMagnitude*(this: Vec): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareMagnitude",
                                       dynlib: tkmath.}
proc add*(this: var Vec; other: Vec) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var Vec; other: Vec) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: Vec; other: Vec): Vec {.noSideEffect, cdecl, importcpp: "Added",
                                    dynlib: tkmath.}
proc `+`*(this: Vec; other: Vec): Vec {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  dynlib: tkmath.}
proc subtract*(this: var Vec; right: Vec) {.cdecl, importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var Vec; right: Vec) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  dynlib: tkmath.}
proc multiply*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiplied*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      dynlib: tkmath.}
proc divide*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "Divide", dynlib: tkmath.}
proc `/=`*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", dynlib: tkmath.}
proc divided*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      dynlib: tkmath.}
proc cross*(this: var Vec; right: Vec) {.cdecl, importcpp: "Cross", dynlib: tkmath.}
proc `^=`*(this: var Vec; right: Vec) {.cdecl, importcpp: "(# ^= #)", dynlib: tkmath.}
proc crossed*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl, importcpp: "Crossed",
                                      dynlib: tkmath.}
proc `^`*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  dynlib: tkmath.}
proc crossMagnitude*(this: Vec; right: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: Vec; right: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc crossCross*(this: var Vec; v1: Vec; v2: Vec) {.cdecl, importcpp: "CrossCross",
    dynlib: tkmath.}
proc crossCrossed*(this: Vec; v1: Vec; v2: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc dot*(this: Vec; other: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     dynlib: tkmath.}
proc `*`*(this: Vec; other: Vec): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     dynlib: tkmath.}
proc dotCross*(this: Vec; v1: Vec; v2: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", dynlib: tkmath.}
proc normalize*(this: var Vec) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: Vec): Vec {.noSideEffect, cdecl, importcpp: "Normalized",
                               dynlib: tkmath.}
proc reverse*(this: var Vec) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Vec): Vec {.noSideEffect, cdecl, importcpp: "Reversed",
                             dynlib: tkmath.}
proc `-`*(this: Vec): Vec {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec; a3: cfloat;
                   v3: Vec; v4: Vec) {.cdecl, importcpp: "SetLinearForm",
                                   dynlib: tkmath.}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec; a3: cfloat;
                   v3: Vec) {.cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec; v3: Vec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; v2: Vec) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Vec; v1: Vec; v2: Vec) {.cdecl, importcpp: "SetLinearForm",
    dynlib: tkmath.}
proc mirror*(this: var Vec; v: Vec) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Vec; v: Vec): Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   dynlib: tkmath.}
proc mirror*(this: var Vec; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Vec; a1: Ax1): Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc mirror*(this: var Vec; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Vec; a2: Ax2): Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc rotate*(this: var Vec; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Vec; a1: Ax1; ang: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Vec; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Vec; s: cfloat): Vec {.noSideEffect, cdecl, importcpp: "Scaled",
                                    dynlib: tkmath.}
proc transform*(this: var Vec; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Vec; t: Trsf): Vec {.noSideEffect, cdecl,
                                       importcpp: "Transformed", dynlib: tkmath.}
proc dumpJson*(this: Vec; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}