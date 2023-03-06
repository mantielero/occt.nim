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
discard "forward decl of gp_Vec"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"

proc dir*(): gp_Dir {.cdecl, constructor, importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc dir*(v: gp_Vec): gp_Dir {.cdecl, constructor, importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc dir*(coord: gp_Xyz): gp_Dir {.cdecl, constructor, importcpp: "gp_Dir(@)",
                            header: "gp_Dir.hxx".}
proc dir*(xv: cfloat; yv: cfloat; zv: cfloat): gp_Dir {.cdecl, constructor,
    importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc setCoord*(this: var gp_Dir; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Dir.hxx".}
proc setCoord*(this: var gp_Dir; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_Dir.hxx".}
proc setX*(this: var gp_Dir; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Dir.hxx".}
proc setY*(this: var gp_Dir; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Dir.hxx".}
proc setZ*(this: var gp_Dir; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_Dir.hxx".}
proc setXYZ*(this: var gp_Dir; coord: gp_Xyz) {.cdecl, importcpp: "SetXYZ", header: "gp_Dir.hxx".}
proc coord*(this: gp_Dir; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_Dir.hxx".}
proc coord*(this: gp_Dir; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Dir.hxx".}
proc x*(this: gp_Dir): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Dir.hxx".}
proc y*(this: gp_Dir): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Dir.hxx".}
proc z*(this: gp_Dir): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Dir.hxx".}
proc xyz*(this: gp_Dir): gp_Xyz {.noSideEffect, cdecl, importcpp: "XYZ", header: "gp_Dir.hxx".}
proc isEqual*(this: gp_Dir; other: gp_Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Dir.hxx".}
proc isNormal*(this: gp_Dir; other: gp_Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Dir.hxx".}
proc isOpposite*(this: gp_Dir; other: gp_Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Dir.hxx".}
proc isParallel*(this: gp_Dir; other: gp_Dir; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Dir.hxx".}
proc angle*(this: gp_Dir; other: gp_Dir): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Dir.hxx".}
proc angleWithRef*(this: gp_Dir; other: gp_Dir; vRef: gp_Dir): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", header: "gp_Dir.hxx".}
proc cross*(this: var gp_Dir; right: gp_Dir) {.cdecl, importcpp: "Cross", header: "gp_Dir.hxx".}
proc `^=`*(this: var gp_Dir; right: gp_Dir) {.cdecl, importcpp: "(# ^= #)", header: "gp_Dir.hxx".}
proc crossed*(this: gp_Dir; right: gp_Dir): gp_Dir {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_Dir.hxx".}
proc `^`*(this: gp_Dir; right: gp_Dir): gp_Dir {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_Dir.hxx".}
proc crossCross*(this: var gp_Dir; v1: gp_Dir; v2: gp_Dir) {.cdecl, importcpp: "CrossCross",
    header: "gp_Dir.hxx".}
proc crossCrossed*(this: gp_Dir; v1: gp_Dir; v2: gp_Dir): gp_Dir {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_Dir.hxx".}
proc dot*(this: gp_Dir; other: gp_Dir): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_Dir.hxx".}
proc `*`*(this: gp_Dir; other: gp_Dir): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_Dir.hxx".}
proc dotCross*(this: gp_Dir; v1: gp_Dir; v2: gp_Dir): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_Dir.hxx".}
proc reverse*(this: var gp_Dir) {.cdecl, importcpp: "Reverse", header: "gp_Dir.hxx".}
proc reversed*(this: gp_Dir): gp_Dir {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Dir.hxx".}
proc `-`*(this: gp_Dir): gp_Dir {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Dir.hxx".}
proc mirror*(this: var gp_Dir; v: gp_Dir) {.cdecl, importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: gp_Dir; v: gp_Dir): gp_Dir {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Dir.hxx".}
proc mirror*(this: var gp_Dir; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: gp_Dir; a1: gp_Ax1): gp_Dir {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Dir.hxx".}
proc mirror*(this: var gp_Dir; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: gp_Dir; a2: gp_Ax2): gp_Dir {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Dir.hxx".}
proc rotate*(this: var gp_Dir; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Dir.hxx".}
proc rotated*(this: gp_Dir; a1: gp_Ax1; ang: cfloat): gp_Dir {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Dir.hxx".}
proc transform*(this: var gp_Dir; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Dir.hxx".}
proc transformed*(this: gp_Dir; t: gp_Trsf): gp_Dir {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Dir.hxx".}
proc dumpJson*(this: gp_Dir; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Dir.hxx".}
proc initFromJson*(this: var gp_Dir; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Dir.hxx".}
