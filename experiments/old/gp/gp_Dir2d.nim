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
type
  Dir2d* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object


proc `new`*(this: var Dir2d; theSize: csize_t): pointer {.
    importcpp: "gp_Dir2d::operator new", header: "gp_Dir2d.hxx".}
proc `delete`*(this: var Dir2d; theAddress: pointer) {.
    importcpp: "gp_Dir2d::operator delete", header: "gp_Dir2d.hxx".}
proc `new[]`*(this: var Dir2d; theSize: csize_t): pointer {.
    importcpp: "gp_Dir2d::operator new[]", header: "gp_Dir2d.hxx".}
proc `delete[]`*(this: var Dir2d; theAddress: pointer) {.
    importcpp: "gp_Dir2d::operator delete[]", header: "gp_Dir2d.hxx".}
proc `new`*(this: var Dir2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Dir2d::operator new", header: "gp_Dir2d.hxx".}
proc `delete`*(this: var Dir2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Dir2d::operator delete", header: "gp_Dir2d.hxx".}
proc constructDir2d*(): Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                             header: "gp_Dir2d.hxx".}
proc constructDir2d*(v: Vec2d): Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                                    header: "gp_Dir2d.hxx".}
proc constructDir2d*(coord: Xy): Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                                     header: "gp_Dir2d.hxx".}
proc constructDir2d*(xv: StandardReal; yv: StandardReal): Dir2d {.constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc setCoord*(this: var Dir2d; index: int; xi: StandardReal) {.importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setCoord*(this: var Dir2d; xv: StandardReal; yv: StandardReal) {.
    importcpp: "SetCoord", header: "gp_Dir2d.hxx".}
proc setX*(this: var Dir2d; x: StandardReal) {.importcpp: "SetX", header: "gp_Dir2d.hxx".}
proc setY*(this: var Dir2d; y: StandardReal) {.importcpp: "SetY", header: "gp_Dir2d.hxx".}
proc setXY*(this: var Dir2d; coord: Xy) {.importcpp: "SetXY", header: "gp_Dir2d.hxx".}
proc coord*(this: Dir2d; index: int): StandardReal {.noSideEffect, importcpp: "Coord",
    header: "gp_Dir2d.hxx".}
proc coord*(this: Dir2d; xv: var StandardReal; yv: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: "gp_Dir2d.hxx".}
proc x*(this: Dir2d): StandardReal {.noSideEffect, importcpp: "X",
                                 header: "gp_Dir2d.hxx".}
proc y*(this: Dir2d): StandardReal {.noSideEffect, importcpp: "Y",
                                 header: "gp_Dir2d.hxx".}
proc xy*(this: Dir2d): Xy {.noSideEffect, importcpp: "XY", header: "gp_Dir2d.hxx".}
proc isEqual*(this: Dir2d; other: Dir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Dir2d.hxx".}
proc isNormal*(this: Dir2d; other: Dir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Dir2d.hxx".}
proc isOpposite*(this: Dir2d; other: Dir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Dir2d.hxx".}
proc isParallel*(this: Dir2d; other: Dir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Dir2d.hxx".}
proc angle*(this: Dir2d; other: Dir2d): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "gp_Dir2d.hxx".}
proc crossed*(this: Dir2d; right: Dir2d): StandardReal {.noSideEffect,
    importcpp: "Crossed", header: "gp_Dir2d.hxx".}
proc `^`*(this: Dir2d; right: Dir2d): StandardReal {.noSideEffect,
    importcpp: "(# ^ #)", header: "gp_Dir2d.hxx".}
proc dot*(this: Dir2d; other: Dir2d): StandardReal {.noSideEffect, importcpp: "Dot",
    header: "gp_Dir2d.hxx".}
proc `*`*(this: Dir2d; other: Dir2d): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Dir2d.hxx".}
proc reverse*(this: var Dir2d) {.importcpp: "Reverse", header: "gp_Dir2d.hxx".}
proc reversed*(this: Dir2d): Dir2d {.noSideEffect, importcpp: "Reversed",
                                 header: "gp_Dir2d.hxx".}
proc `-`*(this: Dir2d): Dir2d {.noSideEffect, importcpp: "(- #)",
                            header: "gp_Dir2d.hxx".}
proc mirror*(this: var Dir2d; v: Dir2d) {.importcpp: "Mirror", header: "gp_Dir2d.hxx".}
proc mirrored*(this: Dir2d; v: Dir2d): Dir2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Dir2d.hxx".}
proc mirror*(this: var Dir2d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Dir2d.hxx".}
proc mirrored*(this: Dir2d; a: Ax2d): Dir2d {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Dir2d.hxx".}
proc rotate*(this: var Dir2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Dir2d.hxx".}
proc rotated*(this: Dir2d; ang: StandardReal): Dir2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Dir2d.hxx".}
proc transform*(this: var Dir2d; t: Trsf2d) {.importcpp: "Transform",
                                        header: "gp_Dir2d.hxx".}
proc transformed*(this: Dir2d; t: Trsf2d): Dir2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Dir2d.hxx".}
proc dumpJson*(this: Dir2d; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Dir2d.hxx".}