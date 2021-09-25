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
type
  Dir* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object ## ! Creates a direction corresponding to X axis.


proc constructDir*(): Dir {.constructor, importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc constructDir*(v: Vec): Dir {.constructor, importcpp: "gp_Dir(@)",
                              header: "gp_Dir.hxx".}
proc constructDir*(coord: Xyz): Dir {.constructor, importcpp: "gp_Dir(@)",
                                  header: "gp_Dir.hxx".}
proc constructDir*(xv: float; yv: float; zv: float): Dir {.constructor,
    importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc setCoord*(this: var Dir; index: int; xi: float) {.importcpp: "SetCoord",
    header: "gp_Dir.hxx".}
proc setCoord*(this: var Dir; xv: float; yv: float; zv: float) {.importcpp: "SetCoord",
    header: "gp_Dir.hxx".}
proc setX*(this: var Dir; x: float) {.importcpp: "SetX", header: "gp_Dir.hxx".}
proc setY*(this: var Dir; y: float) {.importcpp: "SetY", header: "gp_Dir.hxx".}
proc setZ*(this: var Dir; z: float) {.importcpp: "SetZ", header: "gp_Dir.hxx".}
proc setXYZ*(this: var Dir; coord: Xyz) {.importcpp: "SetXYZ", header: "gp_Dir.hxx".}
proc coord*(this: Dir; index: int): float {.noSideEffect, importcpp: "Coord",
                                      header: "gp_Dir.hxx".}
proc coord*(this: Dir; xv: var float; yv: var float; zv: var float) {.noSideEffect,
    importcpp: "Coord", header: "gp_Dir.hxx".}
proc x*(this: Dir): float {.noSideEffect, importcpp: "X", header: "gp_Dir.hxx".}
proc y*(this: Dir): float {.noSideEffect, importcpp: "Y", header: "gp_Dir.hxx".}
proc z*(this: Dir): float {.noSideEffect, importcpp: "Z", header: "gp_Dir.hxx".}
proc xyz*(this: Dir): Xyz {.noSideEffect, importcpp: "XYZ", header: "gp_Dir.hxx".}
proc isEqual*(this: Dir; other: Dir; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Dir.hxx".}
proc isNormal*(this: Dir; other: Dir; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsNormal", header: "gp_Dir.hxx".}
proc isOpposite*(this: Dir; other: Dir; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsOpposite", header: "gp_Dir.hxx".}
proc isParallel*(this: Dir; other: Dir; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsParallel", header: "gp_Dir.hxx".}
proc angle*(this: Dir; other: Dir): float {.noSideEffect, importcpp: "Angle",
                                      header: "gp_Dir.hxx".}
proc angleWithRef*(this: Dir; other: Dir; vRef: Dir): float {.noSideEffect,
    importcpp: "AngleWithRef", header: "gp_Dir.hxx".}
proc cross*(this: var Dir; right: Dir) {.importcpp: "Cross", header: "gp_Dir.hxx".}
proc `^=`*(this: var Dir; right: Dir) {.importcpp: "(# ^= #)", header: "gp_Dir.hxx".}
proc crossed*(this: Dir; right: Dir): Dir {.noSideEffect, importcpp: "Crossed",
                                      header: "gp_Dir.hxx".}
proc `^`*(this: Dir; right: Dir): Dir {.noSideEffect, importcpp: "(# ^ #)",
                                  header: "gp_Dir.hxx".}
proc crossCross*(this: var Dir; v1: Dir; v2: Dir) {.importcpp: "CrossCross",
    header: "gp_Dir.hxx".}
proc crossCrossed*(this: Dir; v1: Dir; v2: Dir): Dir {.noSideEffect,
    importcpp: "CrossCrossed", header: "gp_Dir.hxx".}
proc dot*(this: Dir; other: Dir): float {.noSideEffect, importcpp: "Dot",
                                    header: "gp_Dir.hxx".}
proc `*`*(this: Dir; other: Dir): float {.noSideEffect, importcpp: "(# * #)",
                                    header: "gp_Dir.hxx".}
proc dotCross*(this: Dir; v1: Dir; v2: Dir): float {.noSideEffect, importcpp: "DotCross",
    header: "gp_Dir.hxx".}
proc reverse*(this: var Dir) {.importcpp: "Reverse", header: "gp_Dir.hxx".}
proc reversed*(this: Dir): Dir {.noSideEffect, importcpp: "Reversed",
                             header: "gp_Dir.hxx".}
proc `-`*(this: Dir): Dir {.noSideEffect, importcpp: "(- #)", header: "gp_Dir.hxx".}
proc mirror*(this: var Dir; v: Dir) {.importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: Dir; v: Dir): Dir {.noSideEffect, importcpp: "Mirrored",
                                   header: "gp_Dir.hxx".}
proc mirror*(this: var Dir; a1: Ax1) {.importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: Dir; a1: Ax1): Dir {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Dir.hxx".}
proc mirror*(this: var Dir; a2: Ax2) {.importcpp: "Mirror", header: "gp_Dir.hxx".}
proc mirrored*(this: Dir; a2: Ax2): Dir {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Dir.hxx".}
proc rotate*(this: var Dir; a1: Ax1; ang: float) {.importcpp: "Rotate",
    header: "gp_Dir.hxx".}
proc rotated*(this: Dir; a1: Ax1; ang: float): Dir {.noSideEffect, importcpp: "Rotated",
    header: "gp_Dir.hxx".}
proc transform*(this: var Dir; t: Trsf) {.importcpp: "Transform", header: "gp_Dir.hxx".}
proc transformed*(this: Dir; t: Trsf): Dir {.noSideEffect, importcpp: "Transformed",
                                       header: "gp_Dir.hxx".}
proc dumpJson*(this: Dir; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Dir.hxx".}
proc initFromJson*(this: var Dir; theSStream: StandardSStream; theStreamPos: var int): bool {.
    importcpp: "InitFromJson", header: "gp_Dir.hxx".}
