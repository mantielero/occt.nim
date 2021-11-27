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


proc newPnt*(): Pnt {.cdecl, constructor, importcpp: "gp_Pnt(@)", header: "gp_Pnt.hxx".}
proc newPnt*(coord: Xyz): Pnt {.cdecl, constructor, importcpp: "gp_Pnt(@)",
                            header: "gp_Pnt.hxx".}
proc newPnt*(xp: cfloat; yp: cfloat; zp: cfloat): Pnt {.cdecl, constructor,
    importcpp: "gp_Pnt(@)", header: "gp_Pnt.hxx".}
proc setCoord*(this: var Pnt; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Pnt.hxx".}
proc setCoord*(this: var Pnt; xp: cfloat; yp: cfloat; zp: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_Pnt.hxx".}
proc setX*(this: var Pnt; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Pnt.hxx".}
proc setY*(this: var Pnt; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Pnt.hxx".}
proc setZ*(this: var Pnt; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_Pnt.hxx".}
proc setXYZ*(this: var Pnt; coord: Xyz) {.cdecl, importcpp: "SetXYZ", header: "gp_Pnt.hxx".}
proc coord*(this: Pnt; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_Pnt.hxx".}
proc coord*(this: Pnt; xp: var cfloat; yp: var cfloat; zp: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Pnt.hxx".}
proc x*(this: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Pnt.hxx".}
proc y*(this: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Pnt.hxx".}
proc z*(this: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Pnt.hxx".}
proc xyz*(this: Pnt): Xyz {.noSideEffect, cdecl, importcpp: "XYZ", header: "gp_Pnt.hxx".}
proc coord*(this: Pnt): Xyz {.noSideEffect, cdecl, importcpp: "Coord", header: "gp_Pnt.hxx".}
proc changeCoord*(this: var Pnt): var Xyz {.cdecl, importcpp: "ChangeCoord",
                                      header: "gp_Pnt.hxx".}
proc baryCenter*(this: var Pnt; alpha: cfloat; p: Pnt; beta: cfloat) {.cdecl,
    importcpp: "BaryCenter", header: "gp_Pnt.hxx".}
proc isEqual*(this: Pnt; other: Pnt; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Pnt.hxx".}
proc distance*(this: Pnt; other: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Pnt.hxx".}
proc squareDistance*(this: Pnt; other: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pnt.hxx".}
proc mirror*(this: var Pnt; p: Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Pnt.hxx".}
proc mirrored*(this: Pnt; p: Pnt): Pnt {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Pnt.hxx".}
proc mirror*(this: var Pnt; a1: Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Pnt.hxx".}
proc mirrored*(this: Pnt; a1: Ax1): Pnt {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Pnt.hxx".}
proc mirror*(this: var Pnt; a2: Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Pnt.hxx".}
proc mirrored*(this: Pnt; a2: Ax2): Pnt {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Pnt.hxx".}
proc rotate*(this: var Pnt; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Pnt.hxx".}
proc rotated*(this: Pnt; a1: Ax1; ang: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Pnt.hxx".}
proc scale*(this: var Pnt; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Pnt.hxx".}
proc scaled*(this: Pnt; p: Pnt; s: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Pnt.hxx".}
proc transform*(this: var Pnt; t: Trsf) {.cdecl, importcpp: "Transform", header: "gp_Pnt.hxx".}
proc transformed*(this: Pnt; t: Trsf): Pnt {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Pnt.hxx".}
proc translate*(this: var Pnt; v: Vec) {.cdecl, importcpp: "Translate", header: "gp_Pnt.hxx".}
proc translated*(this: Pnt; v: Vec): Pnt {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Pnt.hxx".}
proc translate*(this: var Pnt; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Pnt.hxx".}
proc translated*(this: Pnt; p1: Pnt; p2: Pnt): Pnt {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pnt.hxx".}
proc dumpJson*(this: Pnt; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Pnt.hxx".}
proc initFromJson*(this: var Pnt; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Pnt.hxx".}