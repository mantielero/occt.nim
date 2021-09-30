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
type
  Pnt2d* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object


proc `new`*(this: var Pnt2d; theSize: csize_t): pointer {.
    importcpp: "gp_Pnt2d::operator new", header: "gp_Pnt2d.hxx".}
proc `delete`*(this: var Pnt2d; theAddress: pointer) {.
    importcpp: "gp_Pnt2d::operator delete", header: "gp_Pnt2d.hxx".}
proc `new[]`*(this: var Pnt2d; theSize: csize_t): pointer {.
    importcpp: "gp_Pnt2d::operator new[]", header: "gp_Pnt2d.hxx".}
proc `delete[]`*(this: var Pnt2d; theAddress: pointer) {.
    importcpp: "gp_Pnt2d::operator delete[]", header: "gp_Pnt2d.hxx".}
proc `new`*(this: var Pnt2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Pnt2d::operator new", header: "gp_Pnt2d.hxx".}
proc `delete`*(this: var Pnt2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Pnt2d::operator delete", header: "gp_Pnt2d.hxx".}
proc constructPnt2d*(): Pnt2d {.constructor, importcpp: "gp_Pnt2d(@)",
                             header: "gp_Pnt2d.hxx".}
proc constructPnt2d*(coord: Xy): Pnt2d {.constructor, importcpp: "gp_Pnt2d(@)",
                                     header: "gp_Pnt2d.hxx".}
proc constructPnt2d*(xp: StandardReal; yp: StandardReal): Pnt2d {.constructor,
    importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc setCoord*(this: var Pnt2d; index: int; xi: StandardReal) {.importcpp: "SetCoord",
    header: "gp_Pnt2d.hxx".}
proc setCoord*(this: var Pnt2d; xp: StandardReal; yp: StandardReal) {.
    importcpp: "SetCoord", header: "gp_Pnt2d.hxx".}
proc setX*(this: var Pnt2d; x: StandardReal) {.importcpp: "SetX", header: "gp_Pnt2d.hxx".}
proc setY*(this: var Pnt2d; y: StandardReal) {.importcpp: "SetY", header: "gp_Pnt2d.hxx".}
proc setXY*(this: var Pnt2d; coord: Xy) {.importcpp: "SetXY", header: "gp_Pnt2d.hxx".}
proc coord*(this: Pnt2d; index: int): StandardReal {.noSideEffect, importcpp: "Coord",
    header: "gp_Pnt2d.hxx".}
proc coord*(this: Pnt2d; xp: var StandardReal; yp: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc x*(this: Pnt2d): StandardReal {.noSideEffect, importcpp: "X",
                                 header: "gp_Pnt2d.hxx".}
proc y*(this: Pnt2d): StandardReal {.noSideEffect, importcpp: "Y",
                                 header: "gp_Pnt2d.hxx".}
proc xy*(this: Pnt2d): Xy {.noSideEffect, importcpp: "XY", header: "gp_Pnt2d.hxx".}
proc coord*(this: Pnt2d): Xy {.noSideEffect, importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc changeCoord*(this: var Pnt2d): var Xy {.importcpp: "ChangeCoord",
                                       header: "gp_Pnt2d.hxx".}
proc isEqual*(this: Pnt2d; other: Pnt2d; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Pnt2d.hxx".}
proc distance*(this: Pnt2d; other: Pnt2d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "gp_Pnt2d.hxx".}
proc squareDistance*(this: Pnt2d; other: Pnt2d): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pnt2d.hxx".}
proc mirror*(this: var Pnt2d; p: Pnt2d) {.importcpp: "Mirror", header: "gp_Pnt2d.hxx".}
proc mirrored*(this: Pnt2d; p: Pnt2d): Pnt2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Pnt2d.hxx".}
proc mirror*(this: var Pnt2d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Pnt2d.hxx".}
proc mirrored*(this: Pnt2d; a: Ax2d): Pnt2d {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Pnt2d.hxx".}
proc rotate*(this: var Pnt2d; p: Pnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Pnt2d.hxx".}
proc rotated*(this: Pnt2d; p: Pnt2d; ang: StandardReal): Pnt2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Pnt2d.hxx".}
proc scale*(this: var Pnt2d; p: Pnt2d; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Pnt2d.hxx".}
proc scaled*(this: Pnt2d; p: Pnt2d; s: StandardReal): Pnt2d {.noSideEffect,
    importcpp: "Scaled", header: "gp_Pnt2d.hxx".}
proc transform*(this: var Pnt2d; t: Trsf2d) {.importcpp: "Transform",
                                        header: "gp_Pnt2d.hxx".}
proc transformed*(this: Pnt2d; t: Trsf2d): Pnt2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Pnt2d.hxx".}
proc translate*(this: var Pnt2d; v: Vec2d) {.importcpp: "Translate",
                                       header: "gp_Pnt2d.hxx".}
proc translated*(this: Pnt2d; v: Vec2d): Pnt2d {.noSideEffect, importcpp: "Translated",
    header: "gp_Pnt2d.hxx".}
proc translate*(this: var Pnt2d; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Translate",
    header: "gp_Pnt2d.hxx".}
proc translated*(this: Pnt2d; p1: Pnt2d; p2: Pnt2d): Pnt2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Pnt2d.hxx".}
proc dumpJson*(this: Pnt2d; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Pnt2d.hxx".}