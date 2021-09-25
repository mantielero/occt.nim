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
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Pnt* {.importcpp: "gp_Pnt", header: "gp_Pnt.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.


proc constructPnt*(): Pnt {.constructor, importcpp: "gp_Pnt(@)", header: "gp_Pnt.hxx".}
proc constructPnt*(coord: Xyz): Pnt {.constructor, importcpp: "gp_Pnt(@)",
                                  header: "gp_Pnt.hxx".}
proc constructPnt*(xp: float; yp: float; zp: float): Pnt {.constructor,
    importcpp: "gp_Pnt(@)", header: "gp_Pnt.hxx".}
proc setCoord*(this: var Pnt; index: int; xi: float) {.importcpp: "SetCoord",
    header: "gp_Pnt.hxx".}
proc setCoord*(this: var Pnt; xp: float; yp: float; zp: float) {.importcpp: "SetCoord",
    header: "gp_Pnt.hxx".}
proc setX*(this: var Pnt; x: float) {.importcpp: "SetX", header: "gp_Pnt.hxx".}
proc setY*(this: var Pnt; y: float) {.importcpp: "SetY", header: "gp_Pnt.hxx".}
proc setZ*(this: var Pnt; z: float) {.importcpp: "SetZ", header: "gp_Pnt.hxx".}
proc setXYZ*(this: var Pnt; coord: Xyz) {.importcpp: "SetXYZ", header: "gp_Pnt.hxx".}
proc coord*(this: Pnt; index: int): float {.noSideEffect, importcpp: "Coord",
                                      header: "gp_Pnt.hxx".}
proc coord*(this: Pnt; xp: var float; yp: var float; zp: var float) {.noSideEffect,
    importcpp: "Coord", header: "gp_Pnt.hxx".}
proc x*(this: Pnt): float {.noSideEffect, importcpp: "X", header: "gp_Pnt.hxx".}
proc y*(this: Pnt): float {.noSideEffect, importcpp: "Y", header: "gp_Pnt.hxx".}
proc z*(this: Pnt): float {.noSideEffect, importcpp: "Z", header: "gp_Pnt.hxx".}
proc xyz*(this: Pnt): Xyz {.noSideEffect, importcpp: "XYZ", header: "gp_Pnt.hxx".}
proc coord*(this: Pnt): Xyz {.noSideEffect, importcpp: "Coord", header: "gp_Pnt.hxx".}
proc changeCoord*(this: var Pnt): var Xyz {.importcpp: "ChangeCoord",
                                      header: "gp_Pnt.hxx".}
proc baryCenter*(this: var Pnt; alpha: float; p: Pnt; beta: float) {.
    importcpp: "BaryCenter", header: "gp_Pnt.hxx".}
proc isEqual*(this: Pnt; other: Pnt; linearTolerance: float): bool {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Pnt.hxx".}
proc distance*(this: Pnt; other: Pnt): float {.noSideEffect, importcpp: "Distance",
    header: "gp_Pnt.hxx".}
proc squareDistance*(this: Pnt; other: Pnt): float {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pnt.hxx".}
proc mirror*(this: var Pnt; p: Pnt) {.importcpp: "Mirror", header: "gp_Pnt.hxx".}
proc mirrored*(this: Pnt; p: Pnt): Pnt {.noSideEffect, importcpp: "Mirrored",
                                   header: "gp_Pnt.hxx".}
proc mirror*(this: var Pnt; a1: Ax1) {.importcpp: "Mirror", header: "gp_Pnt.hxx".}
proc mirrored*(this: Pnt; a1: Ax1): Pnt {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Pnt.hxx".}
proc mirror*(this: var Pnt; a2: Ax2) {.importcpp: "Mirror", header: "gp_Pnt.hxx".}
proc mirrored*(this: Pnt; a2: Ax2): Pnt {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Pnt.hxx".}
proc rotate*(this: var Pnt; a1: Ax1; ang: float) {.importcpp: "Rotate",
    header: "gp_Pnt.hxx".}
proc rotated*(this: Pnt; a1: Ax1; ang: float): Pnt {.noSideEffect, importcpp: "Rotated",
    header: "gp_Pnt.hxx".}
proc scale*(this: var Pnt; p: Pnt; s: float) {.importcpp: "Scale", header: "gp_Pnt.hxx".}
proc scaled*(this: Pnt; p: Pnt; s: float): Pnt {.noSideEffect, importcpp: "Scaled",
    header: "gp_Pnt.hxx".}
proc transform*(this: var Pnt; t: Trsf) {.importcpp: "Transform", header: "gp_Pnt.hxx".}
proc transformed*(this: Pnt; t: Trsf): Pnt {.noSideEffect, importcpp: "Transformed",
                                       header: "gp_Pnt.hxx".}
proc translate*(this: var Pnt; v: Vec) {.importcpp: "Translate", header: "gp_Pnt.hxx".}
proc translated*(this: Pnt; v: Vec): Pnt {.noSideEffect, importcpp: "Translated",
                                     header: "gp_Pnt.hxx".}
proc translate*(this: var Pnt; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Pnt.hxx".}
proc translated*(this: Pnt; p1: Pnt; p2: Pnt): Pnt {.noSideEffect,
    importcpp: "Translated", header: "gp_Pnt.hxx".}
proc dumpJson*(this: Pnt; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Pnt.hxx".}
proc initFromJson*(this: var Pnt; theSStream: StandardSStream; theStreamPos: var int): bool {.
    importcpp: "InitFromJson", header: "gp_Pnt.hxx".}
