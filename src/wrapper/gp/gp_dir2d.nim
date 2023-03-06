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
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"

proc dir2d*(): gp_Dir2d {.cdecl, constructor, importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc dir2d*(v: gp_Vec2d): gp_Dir2d {.cdecl, constructor, importcpp: "gp_Dir2d(@)",
                              header: "gp_Dir2d.hxx".}
proc dir2d*(coord: gp_Xy): gp_Dir2d {.cdecl, constructor, importcpp: "gp_Dir2d(@)",
                               header: "gp_Dir2d.hxx".}
proc dir2d*(xv: cfloat; yv: cfloat): gp_Dir2d {.cdecl, constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc setCoord*(this: var gp_Dir2d; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setCoord*(this: var gp_Dir2d; xv: cfloat; yv: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setX*(this: var gp_Dir2d; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Dir2d.hxx".}
proc setY*(this: var gp_Dir2d; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Dir2d.hxx".}
proc setXY*(this: var gp_Dir2d; coord: gp_Xy) {.cdecl, importcpp: "SetXY", header: "gp_Dir2d.hxx".}
proc coord*(this: gp_Dir2d; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    header: "gp_Dir2d.hxx".}
proc coord*(this: gp_Dir2d; xv: var cfloat; yv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Dir2d.hxx".}
proc x*(this: gp_Dir2d): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Dir2d.hxx".}
proc y*(this: gp_Dir2d): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Dir2d.hxx".}
proc xy*(this: gp_Dir2d): gp_Xy {.noSideEffect, cdecl, importcpp: "XY", header: "gp_Dir2d.hxx".}
proc isEqual*(this: gp_Dir2d; other: gp_Dir2d; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Dir2d.hxx".}
proc isNormal*(this: gp_Dir2d; other: gp_Dir2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsNormal", header: "gp_Dir2d.hxx".}
proc isOpposite*(this: gp_Dir2d; other: gp_Dir2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", header: "gp_Dir2d.hxx".}
proc isParallel*(this: gp_Dir2d; other: gp_Dir2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "gp_Dir2d.hxx".}
proc angle*(this: gp_Dir2d; other: gp_Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "gp_Dir2d.hxx".}
proc crossed*(this: gp_Dir2d; right: gp_Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", header: "gp_Dir2d.hxx".}
proc `^`*(this: gp_Dir2d; right: gp_Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# ^ #)", header: "gp_Dir2d.hxx".}
proc dot*(this: gp_Dir2d; other: gp_Dir2d): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    header: "gp_Dir2d.hxx".}
proc `*`*(this: gp_Dir2d; other: gp_Dir2d): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_Dir2d.hxx".}
proc reverse*(this: var gp_Dir2d) {.cdecl, importcpp: "Reverse", header: "gp_Dir2d.hxx".}
proc reversed*(this: gp_Dir2d): gp_Dir2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                 header: "gp_Dir2d.hxx".}
proc `-`*(this: gp_Dir2d): gp_Dir2d {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Dir2d.hxx".}
proc mirror*(this: var gp_Dir2d; v: gp_Dir2d) {.cdecl, importcpp: "Mirror", header: "gp_Dir2d.hxx".}
proc mirrored*(this: gp_Dir2d; v: gp_Dir2d): gp_Dir2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Dir2d.hxx".}
proc mirror*(this: var gp_Dir2d; a: gp_Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Dir2d.hxx".}
proc mirrored*(this: gp_Dir2d; a: gp_Ax2d): gp_Dir2d {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Dir2d.hxx".}
proc rotate*(this: var gp_Dir2d; ang: cfloat) {.cdecl, importcpp: "Rotate", header: "gp_Dir2d.hxx".}
proc rotated*(this: gp_Dir2d; ang: cfloat): gp_Dir2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Dir2d.hxx".}
proc transform*(this: var gp_Dir2d; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
                                        header: "gp_Dir2d.hxx".}
proc transformed*(this: gp_Dir2d; t: gp_Trsf2d): gp_Dir2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Dir2d.hxx".}
proc dumpJson*(this: gp_Dir2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Dir2d.hxx".}
