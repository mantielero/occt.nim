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
discard "forward decl of gp_Mat2d"
type
  Xy* {.importcpp: "gp_XY", header: "gp_XY.hxx", bycopy.} = object ## ! Creates XY object with zero coordinates (0,0).


proc constructXy*(): Xy {.constructor, importcpp: "gp_XY(@)", header: "gp_XY.hxx".}
proc constructXy*(x: float; y: float): Xy {.constructor, importcpp: "gp_XY(@)",
                                      header: "gp_XY.hxx".}
proc setCoord*(this: var Xy; index: int; xi: float) {.importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setCoord*(this: var Xy; x: float; y: float) {.importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setX*(this: var Xy; x: float) {.importcpp: "SetX", header: "gp_XY.hxx".}
proc setY*(this: var Xy; y: float) {.importcpp: "SetY", header: "gp_XY.hxx".}
proc coord*(this: Xy; index: int): float {.noSideEffect, importcpp: "Coord",
                                     header: "gp_XY.hxx".}
proc changeCoord*(this: var Xy; theIndex: int): var float {.importcpp: "ChangeCoord",
    header: "gp_XY.hxx".}
proc coord*(this: Xy; x: var float; y: var float) {.noSideEffect, importcpp: "Coord",
    header: "gp_XY.hxx".}
proc x*(this: Xy): float {.noSideEffect, importcpp: "X", header: "gp_XY.hxx".}
proc y*(this: Xy): float {.noSideEffect, importcpp: "Y", header: "gp_XY.hxx".}
proc modulus*(this: Xy): float {.noSideEffect, importcpp: "Modulus",
                             header: "gp_XY.hxx".}
proc squareModulus*(this: Xy): float {.noSideEffect, importcpp: "SquareModulus",
                                   header: "gp_XY.hxx".}
proc isEqual*(this: Xy; other: Xy; tolerance: float): bool {.noSideEffect,
    importcpp: "IsEqual", header: "gp_XY.hxx".}
proc add*(this: var Xy; other: Xy) {.importcpp: "Add", header: "gp_XY.hxx".}
proc `+=`*(this: var Xy; other: Xy) {.importcpp: "(# += #)", header: "gp_XY.hxx".}
proc added*(this: Xy; other: Xy): Xy {.noSideEffect, importcpp: "Added",
                                 header: "gp_XY.hxx".}
proc `+`*(this: Xy; other: Xy): Xy {.noSideEffect, importcpp: "(# + #)",
                               header: "gp_XY.hxx".}
proc crossed*(this: Xy; right: Xy): float {.noSideEffect, importcpp: "Crossed",
                                      header: "gp_XY.hxx".}
proc `^`*(this: Xy; right: Xy): float {.noSideEffect, importcpp: "(# ^ #)",
                                  header: "gp_XY.hxx".}
proc crossMagnitude*(this: Xy; right: Xy): float {.noSideEffect,
    importcpp: "CrossMagnitude", header: "gp_XY.hxx".}
proc crossSquareMagnitude*(this: Xy; right: Xy): float {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_XY.hxx".}
proc divide*(this: var Xy; scalar: float) {.importcpp: "Divide", header: "gp_XY.hxx".}
proc `/=`*(this: var Xy; scalar: float) {.importcpp: "(# /= #)", header: "gp_XY.hxx".}
proc divided*(this: Xy; scalar: float): Xy {.noSideEffect, importcpp: "Divided",
                                       header: "gp_XY.hxx".}
proc `/`*(this: Xy; scalar: float): Xy {.noSideEffect, importcpp: "(# / #)",
                                   header: "gp_XY.hxx".}
proc dot*(this: Xy; other: Xy): float {.noSideEffect, importcpp: "Dot",
                                  header: "gp_XY.hxx".}
proc `*`*(this: Xy; other: Xy): float {.noSideEffect, importcpp: "(# * #)",
                                  header: "gp_XY.hxx".}
proc multiply*(this: var Xy; scalar: float) {.importcpp: "Multiply", header: "gp_XY.hxx".}
proc `*=`*(this: var Xy; scalar: float) {.importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var Xy; other: Xy) {.importcpp: "Multiply", header: "gp_XY.hxx".}
proc `*=`*(this: var Xy; other: Xy) {.importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var Xy; matrix: Mat2d) {.importcpp: "Multiply", header: "gp_XY.hxx".}
proc `*=`*(this: var Xy; matrix: Mat2d) {.importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiplied*(this: Xy; scalar: float): Xy {.noSideEffect, importcpp: "Multiplied",
    header: "gp_XY.hxx".}
proc `*`*(this: Xy; scalar: float): Xy {.noSideEffect, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc multiplied*(this: Xy; other: Xy): Xy {.noSideEffect, importcpp: "Multiplied",
                                      header: "gp_XY.hxx".}
proc multiplied*(this: Xy; matrix: Mat2d): Xy {.noSideEffect, importcpp: "Multiplied",
    header: "gp_XY.hxx".}
proc `*`*(this: Xy; matrix: Mat2d): Xy {.noSideEffect, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc normalize*(this: var Xy) {.importcpp: "Normalize", header: "gp_XY.hxx".}
proc normalized*(this: Xy): Xy {.noSideEffect, importcpp: "Normalized",
                             header: "gp_XY.hxx".}
proc reverse*(this: var Xy) {.importcpp: "Reverse", header: "gp_XY.hxx".}
proc reversed*(this: Xy): Xy {.noSideEffect, importcpp: "Reversed", header: "gp_XY.hxx".}
proc `-`*(this: Xy): Xy {.noSideEffect, importcpp: "(- #)", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; a1: float; xy1: Xy; a2: float; xy2: Xy) {.
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; a1: float; xy1: Xy; a2: float; xy2: Xy; xy3: Xy) {.
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; a1: float; xy1: Xy; xy2: Xy) {.
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; xy1: Xy; xy2: Xy) {.importcpp: "SetLinearForm",
    header: "gp_XY.hxx".}
proc subtract*(this: var Xy; right: Xy) {.importcpp: "Subtract", header: "gp_XY.hxx".}
proc `-=`*(this: var Xy; right: Xy) {.importcpp: "(# -= #)", header: "gp_XY.hxx".}
proc subtracted*(this: Xy; right: Xy): Xy {.noSideEffect, importcpp: "Subtracted",
                                      header: "gp_XY.hxx".}
proc `-`*(this: Xy; right: Xy): Xy {.noSideEffect, importcpp: "(# - #)",
                               header: "gp_XY.hxx".}
