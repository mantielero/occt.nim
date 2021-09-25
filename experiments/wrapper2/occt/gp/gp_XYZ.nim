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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
type
  Xyz* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy.} = object ## ! Creates an XYZ object with zero co-ordinates (0,0,0)


proc constructXyz*(): Xyz {.constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc constructXyz*(x: float; y: float; z: float): Xyz {.constructor,
    importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc setCoord*(this: var Xyz; x: float; y: float; z: float) {.importcpp: "SetCoord",
    header: "gp_XYZ.hxx".}
proc setCoord*(this: var Xyz; index: int; xi: float) {.importcpp: "SetCoord",
    header: "gp_XYZ.hxx".}
proc setX*(this: var Xyz; x: float) {.importcpp: "SetX", header: "gp_XYZ.hxx".}
proc setY*(this: var Xyz; y: float) {.importcpp: "SetY", header: "gp_XYZ.hxx".}
proc setZ*(this: var Xyz; z: float) {.importcpp: "SetZ", header: "gp_XYZ.hxx".}
proc coord*(this: Xyz; index: int): float {.noSideEffect, importcpp: "Coord",
                                      header: "gp_XYZ.hxx".}
proc changeCoord*(this: var Xyz; theIndex: int): var float {.importcpp: "ChangeCoord",
    header: "gp_XYZ.hxx".}
proc coord*(this: Xyz; x: var float; y: var float; z: var float) {.noSideEffect,
    importcpp: "Coord", header: "gp_XYZ.hxx".}
proc getData*(this: Xyz): ptr float {.noSideEffect, importcpp: "GetData",
                                 header: "gp_XYZ.hxx".}
proc changeData*(this: var Xyz): ptr float {.importcpp: "ChangeData",
                                       header: "gp_XYZ.hxx".}
proc x*(this: Xyz): float {.noSideEffect, importcpp: "X", header: "gp_XYZ.hxx".}
proc y*(this: Xyz): float {.noSideEffect, importcpp: "Y", header: "gp_XYZ.hxx".}
proc z*(this: Xyz): float {.noSideEffect, importcpp: "Z", header: "gp_XYZ.hxx".}
proc modulus*(this: Xyz): float {.noSideEffect, importcpp: "Modulus",
                              header: "gp_XYZ.hxx".}
proc squareModulus*(this: Xyz): float {.noSideEffect, importcpp: "SquareModulus",
                                    header: "gp_XYZ.hxx".}
proc isEqual*(this: Xyz; other: Xyz; tolerance: float): bool {.noSideEffect,
    importcpp: "IsEqual", header: "gp_XYZ.hxx".}
proc add*(this: var Xyz; other: Xyz) {.importcpp: "Add", header: "gp_XYZ.hxx".}
proc `+=`*(this: var Xyz; other: Xyz) {.importcpp: "(# += #)", header: "gp_XYZ.hxx".}
proc added*(this: Xyz; other: Xyz): Xyz {.noSideEffect, importcpp: "Added",
                                    header: "gp_XYZ.hxx".}
proc `+`*(this: Xyz; other: Xyz): Xyz {.noSideEffect, importcpp: "(# + #)",
                                  header: "gp_XYZ.hxx".}
proc cross*(this: var Xyz; right: Xyz) {.importcpp: "Cross", header: "gp_XYZ.hxx".}
proc `^=`*(this: var Xyz; right: Xyz) {.importcpp: "(# ^= #)", header: "gp_XYZ.hxx".}
proc crossed*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "Crossed",
                                      header: "gp_XYZ.hxx".}
proc `^`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "(# ^ #)",
                                  header: "gp_XYZ.hxx".}
proc crossMagnitude*(this: Xyz; right: Xyz): float {.noSideEffect,
    importcpp: "CrossMagnitude", header: "gp_XYZ.hxx".}
proc crossSquareMagnitude*(this: Xyz; right: Xyz): float {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_XYZ.hxx".}
proc crossCross*(this: var Xyz; coord1: Xyz; coord2: Xyz) {.importcpp: "CrossCross",
    header: "gp_XYZ.hxx".}
proc crossCrossed*(this: Xyz; coord1: Xyz; coord2: Xyz): Xyz {.noSideEffect,
    importcpp: "CrossCrossed", header: "gp_XYZ.hxx".}
proc divide*(this: var Xyz; scalar: float) {.importcpp: "Divide", header: "gp_XYZ.hxx".}
proc `/=`*(this: var Xyz; scalar: float) {.importcpp: "(# /= #)", header: "gp_XYZ.hxx".}
proc divided*(this: Xyz; scalar: float): Xyz {.noSideEffect, importcpp: "Divided",
    header: "gp_XYZ.hxx".}
proc `/`*(this: Xyz; scalar: float): Xyz {.noSideEffect, importcpp: "(# / #)",
                                     header: "gp_XYZ.hxx".}
proc dot*(this: Xyz; other: Xyz): float {.noSideEffect, importcpp: "Dot",
                                    header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; other: Xyz): float {.noSideEffect, importcpp: "(# * #)",
                                    header: "gp_XYZ.hxx".}
proc dotCross*(this: Xyz; coord1: Xyz; coord2: Xyz): float {.noSideEffect,
    importcpp: "DotCross", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; scalar: float) {.importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; scalar: float) {.importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; other: Xyz) {.importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; other: Xyz) {.importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; matrix: Mat) {.importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; matrix: Mat) {.importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; scalar: float): Xyz {.noSideEffect,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; scalar: float): Xyz {.noSideEffect, importcpp: "(# * #)",
                                     header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; other: Xyz): Xyz {.noSideEffect, importcpp: "Multiplied",
    header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, importcpp: "Multiplied",
    header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, importcpp: "(# * #)",
                                   header: "gp_XYZ.hxx".}
proc normalize*(this: var Xyz) {.importcpp: "Normalize", header: "gp_XYZ.hxx".}
proc normalized*(this: Xyz): Xyz {.noSideEffect, importcpp: "Normalized",
                               header: "gp_XYZ.hxx".}
proc reverse*(this: var Xyz) {.importcpp: "Reverse", header: "gp_XYZ.hxx".}
proc reversed*(this: Xyz): Xyz {.noSideEffect, importcpp: "Reversed",
                             header: "gp_XYZ.hxx".}
proc subtract*(this: var Xyz; right: Xyz) {.importcpp: "Subtract", header: "gp_XYZ.hxx".}
proc `-=`*(this: var Xyz; right: Xyz) {.importcpp: "(# -= #)", header: "gp_XYZ.hxx".}
proc subtracted*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "Subtracted",
    header: "gp_XYZ.hxx".}
proc `-`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "(# - #)",
                                  header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: float; xyz1: Xyz; a2: float; xyz2: Xyz; a3: float;
                   xyz3: Xyz; xyz4: Xyz) {.importcpp: "SetLinearForm",
                                       header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: float; xyz1: Xyz; a2: float; xyz2: Xyz; a3: float;
                   xyz3: Xyz) {.importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: float; xyz1: Xyz; a2: float; xyz2: Xyz; xyz3: Xyz) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: float; xyz1: Xyz; a2: float; xyz2: Xyz) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: float; xyz1: Xyz; xyz2: Xyz) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; xyz1: Xyz; xyz2: Xyz) {.importcpp: "SetLinearForm",
    header: "gp_XYZ.hxx".}
proc dumpJson*(this: Xyz; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_XYZ.hxx".}
proc initFromJson*(this: var Xyz; theSStream: StandardSStream; theStreamPos: var int): bool {.
    importcpp: "InitFromJson", header: "gp_XYZ.hxx".}
