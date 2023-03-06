#{.experimental: "callOperator".}
import gp_types
#import ../ncollection/ncollection_types
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc pnt2d*(): gp_Pnt2d {.cdecl, constructor, importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc pnt2d*(coord: gp_Xy): gp_Pnt2d {.cdecl, constructor, importcpp: "gp_Pnt2d(@)",
                               header: "gp_Pnt2d.hxx".}
proc pnt2d*(xp: cfloat; yp: cfloat): gp_Pnt2d {.cdecl, constructor,
    importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc setCoord*(this: var gp_Pnt2d; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Pnt2d.hxx".}
proc setCoord*(this: var gp_Pnt2d; xp: cfloat; yp: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Pnt2d.hxx".}
proc setX*(this: var gp_Pnt2d; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Pnt2d.hxx".}
proc setY*(this: var gp_Pnt2d; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Pnt2d.hxx".}
proc setXY*(this: var gp_Pnt2d; coord: gp_Xy) {.cdecl, importcpp: "SetXY", header: "gp_Pnt2d.hxx".}
proc coord*(this: gp_Pnt2d; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    header: "gp_Pnt2d.hxx".}
proc coord*(this: gp_Pnt2d; xp: var cfloat; yp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc x*(this: gp_Pnt2d): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Pnt2d.hxx".}
proc y*(this: gp_Pnt2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Pnt2d.hxx".}
proc xy*(this: gp_Pnt2d): gp_Xy {.noSideEffect, cdecl, importcpp: "XY", header: "gp_Pnt2d.hxx".}
proc coord*(this: gp_Pnt2d): gp_Xy {.noSideEffect, cdecl, importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc changeCoord*(this: var gp_Pnt2d): var gp_Xy {.cdecl, importcpp: "ChangeCoord",
                                       header: "gp_Pnt2d.hxx".}
proc isEqual*(this: gp_Pnt2d; other: gp_Pnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Pnt2d.hxx".}
proc distance*(this: gp_Pnt2d; other: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Pnt2d.hxx".}
proc squareDistance*(this: gp_Pnt2d; other: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pnt2d.hxx".}
proc mirror*(this: var gp_Pnt2d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Pnt2d.hxx".}
proc mirrored*(this: gp_Pnt2d; p: gp_Pnt2d): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Pnt2d.hxx".}
proc mirror*(this: var gp_Pnt2d; a: gp_Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Pnt2d.hxx".}
proc mirrored*(this: gp_Pnt2d; a: gp_Ax2d): gp_Pnt2d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Pnt2d.hxx".}
proc rotate*(this: var gp_Pnt2d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Pnt2d.hxx".}
proc rotated*(this: gp_Pnt2d; p: gp_Pnt2d; ang: cfloat): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Pnt2d.hxx".}
proc scale*(this: var gp_Pnt2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Pnt2d.hxx".}
proc scaled*(this: gp_Pnt2d; p: gp_Pnt2d; s: cfloat): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Pnt2d.hxx".}
proc transform*(this: var gp_Pnt2d; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
                                        header: "gp_Pnt2d.hxx".}
proc transformed*(this: gp_Pnt2d; t: gp_Trsf2d): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Pnt2d.hxx".}
proc translate*(this: var gp_Pnt2d; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
                                       header: "gp_Pnt2d.hxx".}
proc translated*(this: gp_Pnt2d; v: gp_Vec2d): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pnt2d.hxx".}
proc translate*(this: var gp_Pnt2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Pnt2d.hxx".}
proc translated*(this: gp_Pnt2d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pnt2d.hxx".}
proc dumpJson*(this: gp_Pnt2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Pnt2d.hxx".}
