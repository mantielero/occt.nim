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
  Dir2d* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object ## ! Creates a direction
                                                                    ## corresponding to X axis.


proc constructDir2d*(): Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                             header: "gp_Dir2d.hxx".}
proc constructDir2d*(v: Vec2d): Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                                    header: "gp_Dir2d.hxx".}
proc constructDir2d*(coord: Xy): Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                                     header: "gp_Dir2d.hxx".}
proc constructDir2d*(xv: float; yv: float): Dir2d {.constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc setCoord*(this: var Dir2d; index: int; xi: float) {.importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setCoord*(this: var Dir2d; xv: float; yv: float) {.importcpp: "SetCoord",
    header: "gp_Dir2d.hxx".}
proc setX*(this: var Dir2d; x: float) {.importcpp: "SetX", header: "gp_Dir2d.hxx".}
proc setY*(this: var Dir2d; y: float) {.importcpp: "SetY", header: "gp_Dir2d.hxx".}
proc setXY*(this: var Dir2d; coord: Xy) {.importcpp: "SetXY", header: "gp_Dir2d.hxx".}
proc coord*(this: Dir2d; index: int): float {.noSideEffect, importcpp: "Coord",
                                        header: "gp_Dir2d.hxx".}
proc coord*(this: Dir2d; xv: var float; yv: var float) {.noSideEffect, importcpp: "Coord",
    header: "gp_Dir2d.hxx".}
proc x*(this: Dir2d): float {.noSideEffect, importcpp: "X", header: "gp_Dir2d.hxx".}
proc y*(this: Dir2d): float {.noSideEffect, importcpp: "Y", header: "gp_Dir2d.hxx".}
proc xy*(this: Dir2d): Xy {.noSideEffect, importcpp: "XY", header: "gp_Dir2d.hxx".}
proc isEqual*(this: Dir2d; other: Dir2d; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Dir2d.hxx".}
proc isNormal*(this: Dir2d; other: Dir2d; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsNormal", header: "gp_Dir2d.hxx".}
proc isOpposite*(this: Dir2d; other: Dir2d; angularTolerance: float): bool {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Dir2d.hxx".}
proc isParallel*(this: Dir2d; other: Dir2d; angularTolerance: float): bool {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Dir2d.hxx".}
proc angle*(this: Dir2d; other: Dir2d): float {.noSideEffect, importcpp: "Angle",
    header: "gp_Dir2d.hxx".}
proc crossed*(this: Dir2d; right: Dir2d): float {.noSideEffect, importcpp: "Crossed",
    header: "gp_Dir2d.hxx".}
proc `^`*(this: Dir2d; right: Dir2d): float {.noSideEffect, importcpp: "(# ^ #)",
                                        header: "gp_Dir2d.hxx".}
proc dot*(this: Dir2d; other: Dir2d): float {.noSideEffect, importcpp: "Dot",
                                        header: "gp_Dir2d.hxx".}
proc `*`*(this: Dir2d; other: Dir2d): float {.noSideEffect, importcpp: "(# * #)",
                                        header: "gp_Dir2d.hxx".}
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
proc rotate*(this: var Dir2d; ang: float) {.importcpp: "Rotate", header: "gp_Dir2d.hxx".}
proc rotated*(this: Dir2d; ang: float): Dir2d {.noSideEffect, importcpp: "Rotated",
    header: "gp_Dir2d.hxx".}
proc transform*(this: var Dir2d; t: Trsf2d) {.importcpp: "Transform",
                                        header: "gp_Dir2d.hxx".}
proc transformed*(this: Dir2d; t: Trsf2d): Dir2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Dir2d.hxx".}
proc dumpJson*(this: Dir2d; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Dir2d.hxx".}
