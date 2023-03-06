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

proc vec2d*(): Vec2dObj {.cdecl, constructor, importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc vec2d*(v: Dir2dObj): Vec2dObj {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                              header: "gp_Vec2d.hxx".}
proc vec2d*(coord: XyObj): Vec2dObj {.cdecl, constructor, importcpp: "gp_Vec2d(@)",
                               header: "gp_Vec2d.hxx".}
proc vec2d*(xv: cfloat; yv: cfloat): Vec2dObj {.cdecl, constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc vec2d*(p1: Pnt2dObj; p2: Pnt2dObj): Vec2dObj {.cdecl, constructor,
                                        importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc setCoord*(this: var Vec2dObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec2d.hxx".}
proc setCoord*(this: var Vec2dObj; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Vec2d.hxx".}
proc setX*(this: var Vec2dObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Vec2d.hxx".}
proc setY*(this: var Vec2dObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Vec2d.hxx".}
proc setXY*(this: var Vec2dObj; coord: XyObj) {.cdecl, importcpp: "SetXY", header: "gp_Vec2d.hxx".}
proc coord*(this: Vec2dObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    header: "gp_Vec2d.hxx".}
proc coord*(this: Vec2dObj; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Vec2d.hxx".}
proc x*(this: Vec2dObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Vec2d.hxx".}
proc y*(this: Vec2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Vec2d.hxx".}
proc xy*(this: Vec2dObj): XyObj {.noSideEffect, cdecl, importcpp: "XY", header: "gp_Vec2d.hxx".}
proc isEqual*(this: Vec2dObj; other: Vec2dObj; linearTolerance: cfloat;
             angularTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_Vec2d.hxx".}
proc isNormal*(this: Vec2dObj; other: Vec2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", header: "gp_Vec2d.hxx".}
proc isOpposite*(this: Vec2dObj; other: Vec2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", header: "gp_Vec2d.hxx".}
proc isParallel*(this: Vec2dObj; other: Vec2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "gp_Vec2d.hxx".}
proc angle*(this: Vec2dObj; other: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "gp_Vec2d.hxx".}
proc magnitude*(this: Vec2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Magnitude",
                                   header: "gp_Vec2d.hxx".}
proc squareMagnitude*(this: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "gp_Vec2d.hxx".}
proc add*(this: var Vec2dObj; other: Vec2dObj) {.cdecl, importcpp: "Add", header: "gp_Vec2d.hxx".}
proc `+=`*(this: var Vec2dObj; other: Vec2dObj) {.cdecl, importcpp: "(# += #)", header: "gp_Vec2d.hxx".}
proc added*(this: Vec2dObj; other: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "Added",
    header: "gp_Vec2d.hxx".}
proc `+`*(this: Vec2dObj; other: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        header: "gp_Vec2d.hxx".}
proc crossed*(this: Vec2dObj; right: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", header: "gp_Vec2d.hxx".}
proc `^`*(this: Vec2dObj; right: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", header: "gp_Vec2d.hxx".}
proc crossMagnitude*(this: Vec2dObj; right: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_Vec2d.hxx".}
proc crossSquareMagnitude*(this: Vec2dObj; right: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec2d.hxx".}
proc divide*(this: var Vec2dObj; scalar: cfloat) {.cdecl, importcpp: "Divide",
    header: "gp_Vec2d.hxx".}
proc `/=`*(this: var Vec2dObj; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        header: "gp_Vec2d.hxx".}
proc divided*(this: Vec2dObj; scalar: cfloat): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_Vec2d.hxx".}
proc `/`*(this: Vec2dObj; scalar: cfloat): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "(# / #)", header: "gp_Vec2d.hxx".}
proc dot*(this: Vec2dObj; other: Vec2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    header: "gp_Vec2d.hxx".}
proc `*`*(this: Vec2dObj; other: Vec2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc getNormal*(this: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "GetNormal",
                                  header: "gp_Vec2d.hxx".}
proc multiply*(this: var Vec2dObj; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_Vec2d.hxx".}
proc `*=`*(this: var Vec2dObj; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        header: "gp_Vec2d.hxx".}
proc multiplied*(this: Vec2dObj; scalar: cfloat): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_Vec2d.hxx".}
proc `*`*(this: Vec2dObj; scalar: cfloat): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc normalize*(this: var Vec2dObj) {.cdecl, importcpp: "Normalize", header: "gp_Vec2d.hxx".}
proc normalized*(this: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "Normalized",
                                   header: "gp_Vec2d.hxx".}
proc reverse*(this: var Vec2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Vec2d.hxx".}
proc reversed*(this: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                 header: "gp_Vec2d.hxx".}
proc `-`*(this: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Vec2d.hxx".}
proc subtract*(this: var Vec2dObj; right: Vec2dObj) {.cdecl, importcpp: "Subtract",
    header: "gp_Vec2d.hxx".}
proc `-=`*(this: var Vec2dObj; right: Vec2dObj) {.cdecl, importcpp: "(# -= #)", header: "gp_Vec2d.hxx".}
proc subtracted*(this: Vec2dObj; right: Vec2dObj): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_Vec2d.hxx".}
proc `-`*(this: Vec2dObj; right: Vec2dObj): Vec2dObj {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2dObj; a1: cfloat; v1: Vec2dObj; a2: cfloat; v2: Vec2dObj; v3: Vec2dObj) {.
    cdecl, importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2dObj; a1: cfloat; v1: Vec2dObj; a2: cfloat; v2: Vec2dObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2dObj; a1: cfloat; v1: Vec2dObj; v2: Vec2dObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2dObj; left: Vec2dObj; right: Vec2dObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc mirror*(this: var Vec2dObj; v: Vec2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Vec2d.hxx".}
proc mirrored*(this: Vec2dObj; v: Vec2dObj): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Vec2d.hxx".}
proc mirror*(this: var Vec2dObj; a1: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Vec2d.hxx".}
proc mirrored*(this: Vec2dObj; a1: Ax2dObj): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Vec2d.hxx".}
proc rotate*(this: var Vec2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate", header: "gp_Vec2d.hxx".}
proc rotated*(this: Vec2dObj; ang: cfloat): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Vec2d.hxx".}
proc scale*(this: var Vec2dObj; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Vec2d.hxx".}
proc scaled*(this: Vec2dObj; s: cfloat): Vec2dObj {.noSideEffect, cdecl, importcpp: "Scaled",
                                        header: "gp_Vec2d.hxx".}
proc transform*(this: var Vec2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Vec2d.hxx".}
proc transformed*(this: Vec2dObj; t: Trsf2dObj): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Vec2d.hxx".}
