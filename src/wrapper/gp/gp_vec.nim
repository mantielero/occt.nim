import gp_types
import ../standard/standard_types

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

proc vec*(): gp_Vec {.cdecl, constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc vec*(v: gp_Dir): gp_Vec {.cdecl, constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc vec*(coord: gp_Xyz): gp_Vec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                            header: "gp_Vec.hxx".}
proc vec*(xv: cfloat; yv: cfloat; zv: cfloat): gp_Vec {.cdecl, constructor,
    importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc vec*(p1: gp_Pnt; p2: gp_Pnt): gp_Vec {.cdecl, constructor, importcpp: "gp_Vec(@)",
                                header: "gp_Vec.hxx".}
proc setCoord*(this: var gp_Vec; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec.hxx".}
proc setCoord*(this: var gp_Vec; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_Vec.hxx".}
proc setX*(this: var gp_Vec; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Vec.hxx".}
proc setY*(this: var gp_Vec; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Vec.hxx".}
proc setZ*(this: var gp_Vec; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_Vec.hxx".}
proc setXYZ*(this: var gp_Vec; coord: gp_Xyz) {.cdecl, importcpp: "SetXYZ", header: "gp_Vec.hxx".}
proc coord*(this: gp_Vec; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_Vec.hxx".}
proc coord*(this: gp_Vec; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Vec.hxx".}
proc x*(this: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Vec.hxx".}
proc y*(this: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Vec.hxx".}
proc z*(this: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Vec.hxx".}
proc xyz*(this: gp_Vec): gp_Xyz {.noSideEffect, cdecl, importcpp: "XYZ", header: "gp_Vec.hxx".}
proc isEqual*(this: gp_Vec; other: gp_Vec; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "gp_Vec.hxx".}
proc isNormal*(this: gp_Vec; other: gp_Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Vec.hxx".}
proc isOpposite*(this: gp_Vec; other: gp_Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Vec.hxx".}
proc isParallel*(this: gp_Vec; other: gp_Vec; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Vec.hxx".}
proc angle*(this: gp_Vec; other: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Vec.hxx".}
proc angleWithRef*(this: gp_Vec; other: gp_Vec; vRef: gp_Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", header: "gp_Vec.hxx".}
proc magnitude*(this: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                 header: "gp_Vec.hxx".}
proc squareMagnitude*(this: gp_Vec): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareMagnitude",
                                       header: "gp_Vec.hxx".}
proc add*(this: var gp_Vec; other: gp_Vec) {.cdecl, importcpp: "Add", header: "gp_Vec.hxx".}
proc `+=`*(this: var gp_Vec; other: gp_Vec) {.cdecl, importcpp: "(# += #)", header: "gp_Vec.hxx".}
proc added*(this: gp_Vec; other: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_Vec.hxx".}
proc `+`*(this: gp_Vec; other: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_Vec.hxx".}
proc subtract*(this: var gp_Vec; right: gp_Vec) {.cdecl, importcpp: "Subtract", header: "gp_Vec.hxx".}
proc `-=`*(this: var gp_Vec; right: gp_Vec) {.cdecl, importcpp: "(# -= #)", header: "gp_Vec.hxx".}
proc subtracted*(this: gp_Vec; right: gp_Vec): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Vec.hxx".}
proc `-`*(this: gp_Vec; right: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_Vec.hxx".}
proc multiply*(this: var gp_Vec; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Vec.hxx".}
proc `*=`*(this: var gp_Vec; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_Vec.hxx".}
proc multiplied*(this: gp_Vec; scalar: cfloat): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Vec.hxx".}
proc `*`*(this: gp_Vec; scalar: cfloat): gp_Vec {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_Vec.hxx".}
proc divide*(this: var gp_Vec; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_Vec.hxx".}
proc `/=`*(this: var gp_Vec; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_Vec.hxx".}
proc divided*(this: gp_Vec; scalar: cfloat): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Vec.hxx".}
proc `/`*(this: gp_Vec; scalar: cfloat): gp_Vec {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_Vec.hxx".}
proc cross*(this: var gp_Vec; right: gp_Vec) {.cdecl, importcpp: "Cross", header: "gp_Vec.hxx".}
proc `^=`*(this: var gp_Vec; right: gp_Vec) {.cdecl, importcpp: "(# ^= #)", header: "gp_Vec.hxx".}
proc crossed*(this: gp_Vec; right: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_Vec.hxx".}
proc `^`*(this: gp_Vec; right: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_Vec.hxx".}
proc crossMagnitude*(this: gp_Vec; right: gp_Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_Vec.hxx".}
proc crossSquareMagnitude*(this: gp_Vec; right: gp_Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec.hxx".}
proc crossCross*(this: var gp_Vec; v1: gp_Vec; v2: gp_Vec) {.cdecl, importcpp: "CrossCross",
    header: "gp_Vec.hxx".}
proc crossCrossed*(this: gp_Vec; v1: gp_Vec; v2: gp_Vec): gp_Vec {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_Vec.hxx".}
proc dot*(this: gp_Vec; other: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_Vec.hxx".}
proc `*`*(this: gp_Vec; other: gp_Vec): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_Vec.hxx".}
proc dotCross*(this: gp_Vec; v1: gp_Vec; v2: gp_Vec): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_Vec.hxx".}
proc normalize*(this: var gp_Vec) {.cdecl, importcpp: "Normalize", header: "gp_Vec.hxx".}
proc normalized*(this: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "Normalized",
                               header: "gp_Vec.hxx".}
proc reverse*(this: var gp_Vec) {.cdecl, importcpp: "Reverse", header: "gp_Vec.hxx".}
proc reversed*(this: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Vec.hxx".}
proc `-`*(this: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var gp_Vec; a1: cfloat; v1: gp_Vec; a2: cfloat; v2: gp_Vec; a3: cfloat;
                   v3: gp_Vec; v4: gp_Vec) {.cdecl, importcpp: "SetLinearForm",
                                   header: "gp_Vec.hxx".}
proc setLinearForm*(this: var gp_Vec; a1: cfloat; v1: gp_Vec; a2: cfloat; v2: gp_Vec; a3: cfloat;
                   v3: gp_Vec) {.cdecl, importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var gp_Vec; a1: cfloat; v1: gp_Vec; a2: cfloat; v2: gp_Vec; v3: gp_Vec) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var gp_Vec; a1: cfloat; v1: gp_Vec; a2: cfloat; v2: gp_Vec) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var gp_Vec; a1: cfloat; v1: gp_Vec; v2: gp_Vec) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var gp_Vec; v1: gp_Vec; v2: gp_Vec) {.cdecl, importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc mirror*(this: var gp_Vec; v: gp_Vec) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: gp_Vec; v: gp_Vec): gp_Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Vec.hxx".}
proc mirror*(this: var gp_Vec; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: gp_Vec; a1: gp_Ax1): gp_Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc mirror*(this: var gp_Vec; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: gp_Vec; a2: gp_Ax2): gp_Vec {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc rotate*(this: var gp_Vec; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Vec.hxx".}
proc rotated*(this: gp_Vec; a1: gp_Ax1; ang: cfloat): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Vec.hxx".}
proc scale*(this: var gp_Vec; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Vec.hxx".}
proc scaled*(this: gp_Vec; s: cfloat): gp_Vec {.noSideEffect, cdecl, importcpp: "Scaled",
                                    header: "gp_Vec.hxx".}
proc transform*(this: var gp_Vec; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Vec.hxx".}
proc transformed*(this: gp_Vec; t: gp_Trsf): gp_Vec {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Vec.hxx".}
proc dumpJson*(this: gp_Vec; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Vec.hxx".}
