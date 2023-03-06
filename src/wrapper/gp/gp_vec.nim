import gp_types
import ../../tkernel/standard/standard_types

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

proc vec*(): VecObj {.cdecl, constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc vec*(v: DirObj): VecObj {.cdecl, constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc vec*(coord: XyzObj): VecObj {.cdecl, constructor, importcpp: "gp_Vec(@)",
                            header: "gp_Vec.hxx".}
proc vec*(xv: cfloat; yv: cfloat; zv: cfloat): VecObj {.cdecl, constructor,
    importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc vec*(p1: PntObj; p2: PntObj): VecObj {.cdecl, constructor, importcpp: "gp_Vec(@)",
                                header: "gp_Vec.hxx".}
proc setCoord*(this: var VecObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec.hxx".}
proc setCoord*(this: var VecObj; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_Vec.hxx".}
proc setX*(this: var VecObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Vec.hxx".}
proc setY*(this: var VecObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Vec.hxx".}
proc setZ*(this: var VecObj; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_Vec.hxx".}
proc setXYZ*(this: var VecObj; coord: XyzObj) {.cdecl, importcpp: "SetXYZ", header: "gp_Vec.hxx".}
proc coord*(this: VecObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_Vec.hxx".}
proc coord*(this: VecObj; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Vec.hxx".}
proc x*(this: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Vec.hxx".}
proc y*(this: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Vec.hxx".}
proc z*(this: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Vec.hxx".}
proc xyz*(this: VecObj): XyzObj {.noSideEffect, cdecl, importcpp: "XYZ", header: "gp_Vec.hxx".}
proc isEqual*(this: VecObj; other: VecObj; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "gp_Vec.hxx".}
proc isNormal*(this: VecObj; other: VecObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Vec.hxx".}
proc isOpposite*(this: VecObj; other: VecObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Vec.hxx".}
proc isParallel*(this: VecObj; other: VecObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Vec.hxx".}
proc angle*(this: VecObj; other: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Vec.hxx".}
proc angleWithRef*(this: VecObj; other: VecObj; vRef: VecObj): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", header: "gp_Vec.hxx".}
proc magnitude*(this: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                 header: "gp_Vec.hxx".}
proc squareMagnitude*(this: VecObj): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareMagnitude",
                                       header: "gp_Vec.hxx".}
proc add*(this: var VecObj; other: VecObj) {.cdecl, importcpp: "Add", header: "gp_Vec.hxx".}
proc `+=`*(this: var VecObj; other: VecObj) {.cdecl, importcpp: "(# += #)", header: "gp_Vec.hxx".}
proc added*(this: VecObj; other: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_Vec.hxx".}
proc `+`*(this: VecObj; other: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_Vec.hxx".}
proc subtract*(this: var VecObj; right: VecObj) {.cdecl, importcpp: "Subtract", header: "gp_Vec.hxx".}
proc `-=`*(this: var VecObj; right: VecObj) {.cdecl, importcpp: "(# -= #)", header: "gp_Vec.hxx".}
proc subtracted*(this: VecObj; right: VecObj): VecObj {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Vec.hxx".}
proc `-`*(this: VecObj; right: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_Vec.hxx".}
proc multiply*(this: var VecObj; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Vec.hxx".}
proc `*=`*(this: var VecObj; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_Vec.hxx".}
proc multiplied*(this: VecObj; scalar: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Vec.hxx".}
proc `*`*(this: VecObj; scalar: cfloat): VecObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_Vec.hxx".}
proc divide*(this: var VecObj; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_Vec.hxx".}
proc `/=`*(this: var VecObj; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_Vec.hxx".}
proc divided*(this: VecObj; scalar: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Vec.hxx".}
proc `/`*(this: VecObj; scalar: cfloat): VecObj {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_Vec.hxx".}
proc cross*(this: var VecObj; right: VecObj) {.cdecl, importcpp: "Cross", header: "gp_Vec.hxx".}
proc `^=`*(this: var VecObj; right: VecObj) {.cdecl, importcpp: "(# ^= #)", header: "gp_Vec.hxx".}
proc crossed*(this: VecObj; right: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_Vec.hxx".}
proc `^`*(this: VecObj; right: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_Vec.hxx".}
proc crossMagnitude*(this: VecObj; right: VecObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_Vec.hxx".}
proc crossSquareMagnitude*(this: VecObj; right: VecObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec.hxx".}
proc crossCross*(this: var VecObj; v1: VecObj; v2: VecObj) {.cdecl, importcpp: "CrossCross",
    header: "gp_Vec.hxx".}
proc crossCrossed*(this: VecObj; v1: VecObj; v2: VecObj): VecObj {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_Vec.hxx".}
proc dot*(this: VecObj; other: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_Vec.hxx".}
proc `*`*(this: VecObj; other: VecObj): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_Vec.hxx".}
proc dotCross*(this: VecObj; v1: VecObj; v2: VecObj): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_Vec.hxx".}
proc normalize*(this: var VecObj) {.cdecl, importcpp: "Normalize", header: "gp_Vec.hxx".}
proc normalized*(this: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "Normalized",
                               header: "gp_Vec.hxx".}
proc reverse*(this: var VecObj) {.cdecl, importcpp: "Reverse", header: "gp_Vec.hxx".}
proc reversed*(this: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Vec.hxx".}
proc `-`*(this: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var VecObj; a1: cfloat; v1: VecObj; a2: cfloat; v2: VecObj; a3: cfloat;
                   v3: VecObj; v4: VecObj) {.cdecl, importcpp: "SetLinearForm",
                                   header: "gp_Vec.hxx".}
proc setLinearForm*(this: var VecObj; a1: cfloat; v1: VecObj; a2: cfloat; v2: VecObj; a3: cfloat;
                   v3: VecObj) {.cdecl, importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var VecObj; a1: cfloat; v1: VecObj; a2: cfloat; v2: VecObj; v3: VecObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var VecObj; a1: cfloat; v1: VecObj; a2: cfloat; v2: VecObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var VecObj; a1: cfloat; v1: VecObj; v2: VecObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var VecObj; v1: VecObj; v2: VecObj) {.cdecl, importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc mirror*(this: var VecObj; v: VecObj) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: VecObj; v: VecObj): VecObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Vec.hxx".}
proc mirror*(this: var VecObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: VecObj; a1: Ax1Obj): VecObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc mirror*(this: var VecObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: VecObj; a2: Ax2Obj): VecObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc rotate*(this: var VecObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Vec.hxx".}
proc rotated*(this: VecObj; a1: Ax1Obj; ang: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Vec.hxx".}
proc scale*(this: var VecObj; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Vec.hxx".}
proc scaled*(this: VecObj; s: cfloat): VecObj {.noSideEffect, cdecl, importcpp: "Scaled",
                                    header: "gp_Vec.hxx".}
proc transform*(this: var VecObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Vec.hxx".}
proc transformed*(this: VecObj; t: TrsfObj): VecObj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Vec.hxx".}
proc dumpJson*(this: VecObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Vec.hxx".}
