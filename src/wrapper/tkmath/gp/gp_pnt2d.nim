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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc pnt2d*(): Pnt2dObj {.cdecl, constructor, importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc pnt2d*(coord: XyObj): Pnt2dObj {.cdecl, constructor, importcpp: "gp_Pnt2d(@)",
                               header: "gp_Pnt2d.hxx".}
proc pnt2d*(xp: cfloat; yp: cfloat): Pnt2dObj {.cdecl, constructor,
    importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc setCoord*(this: var Pnt2dObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Pnt2d.hxx".}
proc setCoord*(this: var Pnt2dObj; xp: cfloat; yp: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Pnt2d.hxx".}
proc setX*(this: var Pnt2dObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Pnt2d.hxx".}
proc setY*(this: var Pnt2dObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Pnt2d.hxx".}
proc setXY*(this: var Pnt2dObj; coord: XyObj) {.cdecl, importcpp: "SetXY", header: "gp_Pnt2d.hxx".}
proc coord*(this: Pnt2dObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    header: "gp_Pnt2d.hxx".}
proc coord*(this: Pnt2dObj; xp: var cfloat; yp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc x*(this: Pnt2dObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Pnt2d.hxx".}
proc y*(this: Pnt2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Pnt2d.hxx".}
proc xy*(this: Pnt2dObj): XyObj {.noSideEffect, cdecl, importcpp: "XY", header: "gp_Pnt2d.hxx".}
proc coord*(this: Pnt2dObj): XyObj {.noSideEffect, cdecl, importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc changeCoord*(this: var Pnt2dObj): var XyObj {.cdecl, importcpp: "ChangeCoord",
                                       header: "gp_Pnt2d.hxx".}
proc isEqual*(this: Pnt2dObj; other: Pnt2dObj; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Pnt2d.hxx".}
proc distance*(this: Pnt2dObj; other: Pnt2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Pnt2d.hxx".}
proc squareDistance*(this: Pnt2dObj; other: Pnt2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pnt2d.hxx".}
proc mirror*(this: var Pnt2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Pnt2d.hxx".}
proc mirrored*(this: Pnt2dObj; p: Pnt2dObj): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Pnt2d.hxx".}
proc mirror*(this: var Pnt2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Pnt2d.hxx".}
proc mirrored*(this: Pnt2dObj; a: Ax2dObj): Pnt2dObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Pnt2d.hxx".}
proc rotate*(this: var Pnt2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Pnt2d.hxx".}
proc rotated*(this: Pnt2dObj; p: Pnt2dObj; ang: cfloat): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Pnt2d.hxx".}
proc scale*(this: var Pnt2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Pnt2d.hxx".}
proc scaled*(this: Pnt2dObj; p: Pnt2dObj; s: cfloat): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Pnt2d.hxx".}
proc transform*(this: var Pnt2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Pnt2d.hxx".}
proc transformed*(this: Pnt2dObj; t: Trsf2dObj): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Pnt2d.hxx".}
proc translate*(this: var Pnt2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate",
                                       header: "gp_Pnt2d.hxx".}
proc translated*(this: Pnt2dObj; v: Vec2dObj): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pnt2d.hxx".}
proc translate*(this: var Pnt2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Pnt2d.hxx".}
proc translated*(this: Pnt2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pnt2d.hxx".}
proc dumpJson*(this: Pnt2dObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Pnt2d.hxx".}
