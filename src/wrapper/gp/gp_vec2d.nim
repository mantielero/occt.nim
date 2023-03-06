import gp_types

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

proc vec2d*(): gp_Vec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc vec2d*(v: Dir2dObj): gp_Vec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                              header: "gp_Vec2d.hxx".}
proc vec2d*(coord: XyObj): gp_Vec2d {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                               header: "gp_Vec2d.hxx".}
proc vec2d*(xv: cfloat; yv: cfloat): gp_Vec2d {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc vec2d*(p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Vec2d {.cdecl, constructor,
                                        importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc setCoord*(this: var gp_Vec2d; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec2d.hxx".}
proc setCoord*(this: var gp_Vec2d; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec2d.hxx".}
proc setX*(this: var gp_Vec2d; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Vec2d.hxx".}
proc setY*(this: var gp_Vec2d; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Vec2d.hxx".}
proc setXY*(this: var gp_Vec2d; coord: XyObj) {.cdecl, importcpp: "SetXY", header: "gp_Vec2d.hxx".}
proc coord*(this: gp_Vec2d; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    header: "gp_Vec2d.hxx".}
proc coord*(this: gp_Vec2d; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Vec2d.hxx".}
proc x*(this: gp_Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Vec2d.hxx".}
proc y*(this: gp_Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Vec2d.hxx".}
proc xy*(this: gp_Vec2d): XyObj {.noSideEffect, cdecl, importcpp: "XY", header: "gp_Vec2d.hxx".}
proc isEqual*(this: gp_Vec2d; other: gp_Vec2d; linearTolerance: cfloat;
             angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_Vec2d.hxx".}
proc isNormal*(this: gp_Vec2d; other: gp_Vec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", header: "gp_Vec2d.hxx".}
proc isOpposite*(this: gp_Vec2d; other: gp_Vec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", header: "gp_Vec2d.hxx".}
proc isParallel*(this: gp_Vec2d; other: gp_Vec2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "gp_Vec2d.hxx".}
proc angle*(this: gp_Vec2d; other: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "gp_Vec2d.hxx".}
proc magnitude*(this: gp_Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                   header: "gp_Vec2d.hxx".}
proc squareMagnitude*(this: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "gp_Vec2d.hxx".}
proc add*(this: var gp_Vec2d; other: gp_Vec2d) {.cdecl, importcpp: "Add", header: "gp_Vec2d.hxx".}
proc `+=`*(this: var gp_Vec2d; other: gp_Vec2d) {.cdecl, importcpp: "(# += #)", header: "gp_Vec2d.hxx".}
proc added*(this: gp_Vec2d; other: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "Added",
    header: "gp_Vec2d.hxx".}
proc `+`*(this: gp_Vec2d; other: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        header: "gp_Vec2d.hxx".}
proc crossed*(this: gp_Vec2d; right: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", header: "gp_Vec2d.hxx".}
proc `^`*(this: gp_Vec2d; right: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", header: "gp_Vec2d.hxx".}
proc crossMagnitude*(this: gp_Vec2d; right: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_Vec2d.hxx".}
proc crossSquareMagnitude*(this: gp_Vec2d; right: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec2d.hxx".}
proc divide*(this: var gp_Vec2d; scalar: cfloat) {.cdecl, importcpp: "Divide",
    header: "gp_Vec2d.hxx".}
proc `/=`*(this: var gp_Vec2d; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        header: "gp_Vec2d.hxx".}
proc divided*(this: gp_Vec2d; scalar: cfloat): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Vec2d.hxx".}
proc `/`*(this: gp_Vec2d; scalar: cfloat): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "gp_Vec2d.hxx".}
proc dot*(this: gp_Vec2d; other: gp_Vec2d): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    header: "gp_Vec2d.hxx".}
proc `*`*(this: gp_Vec2d; other: gp_Vec2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc getNormal*(this: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "GetNormal",
                                  header: "gp_Vec2d.hxx".}
proc multiply*(this: var gp_Vec2d; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Vec2d.hxx".}
proc `*=`*(this: var gp_Vec2d; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        header: "gp_Vec2d.hxx".}
proc multiplied*(this: gp_Vec2d; scalar: cfloat): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Vec2d.hxx".}
proc `*`*(this: gp_Vec2d; scalar: cfloat): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc normalize*(this: var gp_Vec2d) {.cdecl, importcpp: "Normalize", header: "gp_Vec2d.hxx".}
proc normalized*(this: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "Normalized",
                                   header: "gp_Vec2d.hxx".}
proc reverse*(this: var gp_Vec2d) {.cdecl, importcpp: "Reverse", header: "gp_Vec2d.hxx".}
proc reversed*(this: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                 header: "gp_Vec2d.hxx".}
proc `-`*(this: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Vec2d.hxx".}
proc subtract*(this: var gp_Vec2d; right: gp_Vec2d) {.cdecl, importcpp: "Subtract",
    header: "gp_Vec2d.hxx".}
proc `-=`*(this: var gp_Vec2d; right: gp_Vec2d) {.cdecl, importcpp: "(# -= #)", header: "gp_Vec2d.hxx".}
proc subtracted*(this: gp_Vec2d; right: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Vec2d.hxx".}
proc `-`*(this: gp_Vec2d; right: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var gp_Vec2d; a1: cfloat; v1: gp_Vec2d; a2: cfloat; v2: gp_Vec2d; v3: gp_Vec2d) {.
    cdecl, importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var gp_Vec2d; a1: cfloat; v1: gp_Vec2d; a2: cfloat; v2: gp_Vec2d) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var gp_Vec2d; a1: cfloat; v1: gp_Vec2d; v2: gp_Vec2d) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var gp_Vec2d; left: gp_Vec2d; right: gp_Vec2d) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc mirror*(this: var gp_Vec2d; v: gp_Vec2d) {.cdecl, importcpp: "Mirror", header: "gp_Vec2d.hxx".}
proc mirrored*(this: gp_Vec2d; v: gp_Vec2d): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Vec2d.hxx".}
proc mirror*(this: var gp_Vec2d; a1: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Vec2d.hxx".}
proc mirrored*(this: gp_Vec2d; a1: Ax2dObj): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Vec2d.hxx".}
proc rotate*(this: var gp_Vec2d; ang: cfloat) {.cdecl, importcpp: "Rotate", header: "gp_Vec2d.hxx".}
proc rotated*(this: gp_Vec2d; ang: cfloat): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Vec2d.hxx".}
proc scale*(this: var gp_Vec2d; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Vec2d.hxx".}
proc scaled*(this: gp_Vec2d; s: cfloat): gp_Vec2d {.noSideEffect, cdecl, importcpp: "Scaled",
                                        header: "gp_Vec2d.hxx".}
proc transform*(this: var gp_Vec2d; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Vec2d.hxx".}
proc transformed*(this: gp_Vec2d; t: Trsf2dObj): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Vec2d.hxx".}
