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


proc newVec*(): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc newVec*(v: Dir): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc newVec*(coord: Xyz): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                            header: "gp_Vec.hxx".}
proc newVec*(xv: cfloat; yv: cfloat; zv: cfloat): Vec {.cdecl, constructor,
    importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc newVec*(p1: Pnt; p2: Pnt): Vec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                                header: "gp_Vec.hxx".}
proc setCoord*(this: var Vec; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec.hxx".}
proc setCoord*(this: var Vec; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_Vec.hxx".}
proc setX*(this: var Vec; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Vec.hxx".}
proc setY*(this: var Vec; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Vec.hxx".}
proc setZ*(this: var Vec; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_Vec.hxx".}
proc setXYZ*(this: var Vec; coord: Xyz) {.cdecl, importcpp: "SetXYZ", header: "gp_Vec.hxx".}
proc coord*(this: Vec; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_Vec.hxx".}
proc coord*(this: Vec; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Vec.hxx".}
proc x*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Vec.hxx".}
proc y*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Vec.hxx".}
proc z*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Vec.hxx".}
proc xyz*(this: Vec): Xyz {.noSideEffect, cdecl, importcpp: "XYZ", header: "gp_Vec.hxx".}
proc isEqual*(this: Vec; other: Vec; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "gp_Vec.hxx".}
proc isNormal*(this: Vec; other: Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Vec.hxx".}
proc isOpposite*(this: Vec; other: Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Vec.hxx".}
proc isParallel*(this: Vec; other: Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Vec.hxx".}
proc angle*(this: Vec; other: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Vec.hxx".}
proc angleWithRef*(this: Vec; other: Vec; vRef: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", header: "gp_Vec.hxx".}
proc magnitude*(this: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                 header: "gp_Vec.hxx".}
proc squareMagnitude*(this: Vec): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareMagnitude",
                                       header: "gp_Vec.hxx".}
proc add*(this: var Vec; other: Vec) {.cdecl, importcpp: "Add", header: "gp_Vec.hxx".}
proc `+=`*(this: var Vec; other: Vec) {.cdecl, importcpp: "(# += #)", header: "gp_Vec.hxx".}
proc added*(this: Vec; other: Vec): Vec {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_Vec.hxx".}
proc `+`*(this: Vec; other: Vec): Vec {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_Vec.hxx".}
proc subtract*(this: var Vec; right: Vec) {.cdecl, importcpp: "Subtract", header: "gp_Vec.hxx".}
proc `-=`*(this: var Vec; right: Vec) {.cdecl, importcpp: "(# -= #)", header: "gp_Vec.hxx".}
proc subtracted*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Vec.hxx".}
proc `-`*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_Vec.hxx".}
proc multiply*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Vec.hxx".}
proc `*=`*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_Vec.hxx".}
proc multiplied*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Vec.hxx".}
proc `*`*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_Vec.hxx".}
proc divide*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_Vec.hxx".}
proc `/=`*(this: var Vec; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_Vec.hxx".}
proc divided*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Vec.hxx".}
proc `/`*(this: Vec; scalar: cfloat): Vec {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_Vec.hxx".}
proc cross*(this: var Vec; right: Vec) {.cdecl, importcpp: "Cross", header: "gp_Vec.hxx".}
proc `^=`*(this: var Vec; right: Vec) {.cdecl, importcpp: "(# ^= #)", header: "gp_Vec.hxx".}
proc crossed*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_Vec.hxx".}
proc `^`*(this: Vec; right: Vec): Vec {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_Vec.hxx".}
proc crossMagnitude*(this: Vec; right: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_Vec.hxx".}
proc crossSquareMagnitude*(this: Vec; right: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec.hxx".}
proc crossCross*(this: var Vec; v1: Vec; v2: Vec) {.cdecl, importcpp: "CrossCross",
    header: "gp_Vec.hxx".}
proc crossCrossed*(this: Vec; v1: Vec; v2: Vec): Vec {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_Vec.hxx".}
proc dot*(this: Vec; other: Vec): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_Vec.hxx".}
proc `*`*(this: Vec; other: Vec): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_Vec.hxx".}
proc dotCross*(this: Vec; v1: Vec; v2: Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_Vec.hxx".}
proc normalize*(this: var Vec) {.cdecl, importcpp: "Normalize", header: "gp_Vec.hxx".}
proc normalized*(this: Vec): Vec {.noSideEffect, cdecl, importcpp: "Normalized",
                               header: "gp_Vec.hxx".}
proc reverse*(this: var Vec) {.cdecl, importcpp: "Reverse", header: "gp_Vec.hxx".}
proc reversed*(this: Vec): Vec {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Vec.hxx".}
proc `-`*(this: Vec): Vec {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec; a3: cfloat;
                   v3: Vec; v4: Vec) {.cdecl, importcpp: "SetLinearForm",
                                   header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec; a3: cfloat;
                   v3: Vec) {.cdecl, importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec; v3: Vec) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; a2: cfloat; v2: Vec) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: cfloat; v1: Vec; v2: Vec) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; v1: Vec; v2: Vec) {.cdecl, importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc mirror*(this: var Vec; v: Vec) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: Vec; v: Vec): Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Vec.hxx".}
proc mirror*(this: var Vec; a1: Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: Vec; a1: Ax1): Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc mirror*(this: var Vec; a2: Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: Vec; a2: Ax2): Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc rotate*(this: var Vec; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Vec.hxx".}
proc rotated*(this: Vec; a1: Ax1; ang: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Vec.hxx".}
proc scale*(this: var Vec; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Vec.hxx".}
proc scaled*(this: Vec; s: cfloat): Vec {.noSideEffect, cdecl, importcpp: "Scaled",
                                    header: "gp_Vec.hxx".}
proc transform*(this: var Vec; t: Trsf) {.cdecl, importcpp: "Transform", header: "gp_Vec.hxx".}
proc transformed*(this: Vec; t: Trsf): Vec {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Vec.hxx".}
proc dumpJson*(this: Vec; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Vec.hxx".}