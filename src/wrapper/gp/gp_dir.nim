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

proc dir*(): DirObj {.cdecl, constructor, importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc dir*(v: gp_Vec): DirObj {.cdecl, constructor, importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc dir*(coord: XyzObj): DirObj {.cdecl, constructor, importcpp: "gp_Dir(@)",
                            header: "gp_Dir.hxx".}
proc dir*(xv: cfloat; yv: cfloat; zv: cfloat): DirObj {.cdecl, constructor,
    importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc setCoord*(this: var DirObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_Dir.hxx".}
proc setCoord*(this: var DirObj; xv: cfloat; yv: cfloat; zv: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_Dir.hxx".}
proc setX*(this: var DirObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_Dir.hxx".}
proc setY*(this: var DirObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_Dir.hxx".}
proc setZ*(this: var DirObj; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_Dir.hxx".}
proc setXYZ*(this: var DirObj; coord: XyzObj) {.cdecl, importcpp: "SetXYZ", header: "gp_Dir.hxx".}
proc coord*(this: DirObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_Dir.hxx".}
proc coord*(this: DirObj; xv: var cfloat; yv: var cfloat; zv: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_Dir.hxx".}
proc x*(this: DirObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_Dir.hxx".}
proc y*(this: DirObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_Dir.hxx".}
proc z*(this: DirObj): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_Dir.hxx".}
proc xyz*(this: DirObj): XyzObj {.noSideEffect, cdecl, importcpp: "XYZ", header: "gp_Dir.hxx".}
proc isEqual*(this: DirObj; other: DirObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "gp_Dir.hxx".}
proc isNormal*(this: DirObj; other: DirObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Dir.hxx".}
proc isOpposite*(this: DirObj; other: DirObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Dir.hxx".}
proc isParallel*(this: DirObj; other: DirObj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Dir.hxx".}
proc angle*(this: DirObj; other: DirObj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Dir.hxx".}
proc angleWithRef*(this: DirObj; other: DirObj; vRef: DirObj): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", header: "gp_Dir.hxx".}
proc cross*(this: var DirObj; right: DirObj) {.cdecl, importcpp: "Cross", header: "gp_Dir.hxx".}
proc `^=`*(this: var DirObj; right: DirObj) {.cdecl, importcpp: "(# ^= #)", header: "gp_Dir.hxx".}
proc crossed*(this: DirObj; right: DirObj): DirObj {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_Dir.hxx".}
proc `^`*(this: DirObj; right: DirObj): DirObj {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_Dir.hxx".}
proc crossCross*(this: var DirObj; v1: DirObj; v2: DirObj) {.cdecl, importcpp: "CrossCross",
    header: "gp_Dir.hxx".}
proc crossCrossed*(this: DirObj; v1: DirObj; v2: DirObj): DirObj {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_Dir.hxx".}
proc dot*(this: DirObj; other: DirObj): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_Dir.hxx".}
proc `*`*(this: DirObj; other: DirObj): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_Dir.hxx".}
proc dotCross*(this: DirObj; v1: DirObj; v2: DirObj): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_Dir.hxx".}
proc reverse*(this: var DirObj) {.cdecl, importcpp: "Reverse", header: "gp_Dir.hxx".}
proc reversed*(this: DirObj): DirObj {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Dir.hxx".}
proc `-`*(this: DirObj): DirObj {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_Dir.hxx".}
proc mirror*(this: var DirObj; v: DirObj) {.cdecl, importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: DirObj; v: DirObj): DirObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Dir.hxx".}
proc mirror*(this: var DirObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: DirObj; a1: Ax1Obj): DirObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Dir.hxx".}
proc mirror*(this: var DirObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: DirObj; a2: Ax2Obj): DirObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Dir.hxx".}
proc rotate*(this: var DirObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Dir.hxx".}
proc rotated*(this: DirObj; a1: Ax1Obj; ang: cfloat): DirObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Dir.hxx".}
proc transform*(this: var DirObj; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Dir.hxx".}
proc transformed*(this: DirObj; t: gp_Trsf): DirObj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Dir.hxx".}
proc dumpJson*(this: DirObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Dir.hxx".}
proc initFromJson*(this: var DirObj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Dir.hxx".}
