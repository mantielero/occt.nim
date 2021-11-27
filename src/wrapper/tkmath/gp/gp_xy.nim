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


proc newXy*(): Xy {.cdecl, constructor, importcpp: "gp_XY(@)", header: "gp_XY.hxx".}
proc newXy*(x: cfloat; y: cfloat): Xy {.cdecl, constructor, importcpp: "gp_XY(@)",
                                  header: "gp_XY.hxx".}
proc setCoord*(this: var Xy; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setCoord*(this: var Xy; x: cfloat; y: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setX*(this: var Xy; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_XY.hxx".}
proc setY*(this: var Xy; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_XY.hxx".}
proc coord*(this: Xy; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                       header: "gp_XY.hxx".}
proc changeCoord*(this: var Xy; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", header: "gp_XY.hxx".}
proc coord*(this: Xy; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_XY.hxx".}
proc x*(this: Xy): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_XY.hxx".}
proc y*(this: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_XY.hxx".}
proc modulus*(this: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                              header: "gp_XY.hxx".}
proc squareModulus*(this: Xy): cfloat {.noSideEffect, cdecl,
                                    importcpp: "SquareModulus", header: "gp_XY.hxx".}
proc isEqual*(this: Xy; other: Xy; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_XY.hxx".}
proc add*(this: var Xy; other: Xy) {.cdecl, importcpp: "Add", header: "gp_XY.hxx".}
proc `+=`*(this: var Xy; other: Xy) {.cdecl, importcpp: "(# += #)", header: "gp_XY.hxx".}
proc added*(this: Xy; other: Xy): Xy {.noSideEffect, cdecl, importcpp: "Added",
                                 header: "gp_XY.hxx".}
proc `+`*(this: Xy; other: Xy): Xy {.noSideEffect, cdecl, importcpp: "(# + #)",
                               header: "gp_XY.hxx".}
proc crossed*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Crossed",
                                       header: "gp_XY.hxx".}
proc `^`*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                   header: "gp_XY.hxx".}
proc crossMagnitude*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_XY.hxx".}
proc crossSquareMagnitude*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_XY.hxx".}
proc divide*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_XY.hxx".}
proc `/=`*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_XY.hxx".}
proc divided*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl, importcpp: "Divided",
                                        header: "gp_XY.hxx".}
proc `/`*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl, importcpp: "(# / #)",
                                    header: "gp_XY.hxx".}
proc dot*(this: Xy; other: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                   header: "gp_XY.hxx".}
proc `*`*(this: Xy; other: Xy): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc multiply*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_XY.hxx".}
proc `*=`*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var Xy; other: Xy) {.cdecl, importcpp: "Multiply", header: "gp_XY.hxx".}
proc `*=`*(this: var Xy; other: Xy) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var Xy; matrix: Mat2d) {.cdecl, importcpp: "Multiply",
                                        header: "gp_XY.hxx".}
proc `*=`*(this: var Xy; matrix: Mat2d) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiplied*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XY.hxx".}
proc `*`*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl, importcpp: "(# * #)",
                                    header: "gp_XY.hxx".}
proc multiplied*(this: Xy; other: Xy): Xy {.noSideEffect, cdecl,
                                      importcpp: "Multiplied", header: "gp_XY.hxx".}
proc multiplied*(this: Xy; matrix: Mat2d): Xy {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XY.hxx".}
proc `*`*(this: Xy; matrix: Mat2d): Xy {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc normalize*(this: var Xy) {.cdecl, importcpp: "Normalize", header: "gp_XY.hxx".}
proc normalized*(this: Xy): Xy {.noSideEffect, cdecl, importcpp: "Normalized",
                             header: "gp_XY.hxx".}
proc reverse*(this: var Xy) {.cdecl, importcpp: "Reverse", header: "gp_XY.hxx".}
proc reversed*(this: Xy): Xy {.noSideEffect, cdecl, importcpp: "Reversed",
                           header: "gp_XY.hxx".}
proc `-`*(this: Xy): Xy {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; a1: cfloat; xy1: Xy; a2: cfloat; xy2: Xy) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; a1: cfloat; xy1: Xy; a2: cfloat; xy2: Xy; xy3: Xy) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; a1: cfloat; xy1: Xy; xy2: Xy) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var Xy; xy1: Xy; xy2: Xy) {.cdecl, importcpp: "SetLinearForm",
    header: "gp_XY.hxx".}
proc subtract*(this: var Xy; right: Xy) {.cdecl, importcpp: "Subtract", header: "gp_XY.hxx".}
proc `-=`*(this: var Xy; right: Xy) {.cdecl, importcpp: "(# -= #)", header: "gp_XY.hxx".}
proc subtracted*(this: Xy; right: Xy): Xy {.noSideEffect, cdecl,
                                      importcpp: "Subtracted", header: "gp_XY.hxx".}
proc `-`*(this: Xy; right: Xy): Xy {.noSideEffect, cdecl, importcpp: "(# - #)",
                               header: "gp_XY.hxx".}