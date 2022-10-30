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
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"

proc dir2d*(): Dir2dObj {.cdecl, constructor, importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc dir2d*(v: Vec2dObj): Dir2dObj {.cdecl, constructor, importcpp: "gp_Dir2d(@)",
                              header: "gp_Dir2d.hxx".}
proc dir2d*(coord: XyObj): Dir2dObj {.cdecl, constructor, importcpp: "gp_Dir2d(@)",
                               header: "gp_Dir2d.hxx".}
proc dir2d*(xv: cfloat; yv: cfloat): Dir2dObj {.cdecl, constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc setCoord*(this: var Dir2dObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setCoord*(this: var Dir2dObj; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setX*(this: var Dir2dObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Dir2d.hxx".}
proc setY*(this: var Dir2dObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Dir2d.hxx".}
proc setXY*(this: var Dir2dObj; coord: XyObj) {.cdecl, importcpp: "SetXY", header: "gp_Dir2d.hxx".}
proc coord*(this: Dir2dObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    header: "gp_Dir2d.hxx".}
proc coord*(this: Dir2dObj; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Dir2d.hxx".}
proc x*(this: Dir2dObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Dir2d.hxx".}
proc y*(this: Dir2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Dir2d.hxx".}
proc xy*(this: Dir2dObj): XyObj {.noSideEffect, cdecl, importcpp: "XY", header: "gp_Dir2d.hxx".}
proc isEqual*(this: Dir2dObj; other: Dir2dObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Dir2d.hxx".}
proc isNormal*(this: Dir2dObj; other: Dir2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", header: "gp_Dir2d.hxx".}
proc isOpposite*(this: Dir2dObj; other: Dir2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", header: "gp_Dir2d.hxx".}
proc isParallel*(this: Dir2dObj; other: Dir2dObj; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "gp_Dir2d.hxx".}
proc angle*(this: Dir2dObj; other: Dir2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "gp_Dir2d.hxx".}
proc crossed*(this: Dir2dObj; right: Dir2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", header: "gp_Dir2d.hxx".}
proc `^`*(this: Dir2dObj; right: Dir2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", header: "gp_Dir2d.hxx".}
proc dot*(this: Dir2dObj; other: Dir2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    header: "gp_Dir2d.hxx".}
proc `*`*(this: Dir2dObj; other: Dir2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Dir2d.hxx".}
proc reverse*(this: var Dir2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Dir2d.hxx".}
proc reversed*(this: Dir2dObj): Dir2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                 header: "gp_Dir2d.hxx".}
proc `-`*(this: Dir2dObj): Dir2dObj {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Dir2d.hxx".}
proc mirror*(this: var Dir2dObj; v: Dir2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Dir2d.hxx".}
proc mirrored*(this: Dir2dObj; v: Dir2dObj): Dir2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Dir2d.hxx".}
proc mirror*(this: var Dir2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Dir2d.hxx".}
proc mirrored*(this: Dir2dObj; a: Ax2dObj): Dir2dObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Dir2d.hxx".}
proc rotate*(this: var Dir2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate", header: "gp_Dir2d.hxx".}
proc rotated*(this: Dir2dObj; ang: cfloat): Dir2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Dir2d.hxx".}
proc transform*(this: var Dir2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
                                        header: "gp_Dir2d.hxx".}
proc transformed*(this: Dir2dObj; t: Trsf2dObj): Dir2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Dir2d.hxx".}
proc dumpJson*(this: Dir2dObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Dir2d.hxx".}
