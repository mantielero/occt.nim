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


proc newXy*(): Xy {.cdecl, constructor, importcpp: "gp_XY(@)", dynlib: tkmath.}
proc newXy*(x: cfloat; y: cfloat): Xy {.cdecl, constructor, importcpp: "gp_XY(@)",
                                  dynlib: tkmath.}
proc setCoord*(this: var Xy; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var Xy; x: cfloat; y: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var Xy; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Xy; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc coord*(this: Xy; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                       dynlib: tkmath.}
proc changeCoord*(this: var Xy; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", dynlib: tkmath.}
proc coord*(this: Xy; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: Xy): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc modulus*(this: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                              dynlib: tkmath.}
proc squareModulus*(this: Xy): cfloat {.noSideEffect, cdecl,
                                    importcpp: "SquareModulus", dynlib: tkmath.}
proc isEqual*(this: Xy; other: Xy; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc add*(this: var Xy; other: Xy) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var Xy; other: Xy) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: Xy; other: Xy): Xy {.noSideEffect, cdecl, importcpp: "Added",
                                 dynlib: tkmath.}
proc `+`*(this: Xy; other: Xy): Xy {.noSideEffect, cdecl, importcpp: "(# + #)",
                               dynlib: tkmath.}
proc crossed*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Crossed",
                                       dynlib: tkmath.}
proc `^`*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                   dynlib: tkmath.}
proc crossMagnitude*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: Xy; right: Xy): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc divide*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "Divide", dynlib: tkmath.}
proc `/=`*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", dynlib: tkmath.}
proc divided*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl, importcpp: "Divided",
                                        dynlib: tkmath.}
proc `/`*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl, importcpp: "(# / #)",
                                    dynlib: tkmath.}
proc dot*(this: Xy; other: Xy): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                   dynlib: tkmath.}
proc `*`*(this: Xy; other: Xy): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   dynlib: tkmath.}
proc multiply*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var Xy; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var Xy; other: Xy) {.cdecl, importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var Xy; other: Xy) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var Xy; matrix: Mat2d) {.cdecl, importcpp: "Multiply",
                                        dynlib: tkmath.}
proc `*=`*(this: var Xy; matrix: Mat2d) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiplied*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Xy; scalar: cfloat): Xy {.noSideEffect, cdecl, importcpp: "(# * #)",
                                    dynlib: tkmath.}
proc multiplied*(this: Xy; other: Xy): Xy {.noSideEffect, cdecl,
                                      importcpp: "Multiplied", dynlib: tkmath.}
proc multiplied*(this: Xy; matrix: Mat2d): Xy {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Xy; matrix: Mat2d): Xy {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   dynlib: tkmath.}
proc normalize*(this: var Xy) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: Xy): Xy {.noSideEffect, cdecl, importcpp: "Normalized",
                             dynlib: tkmath.}
proc reverse*(this: var Xy) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Xy): Xy {.noSideEffect, cdecl, importcpp: "Reversed",
                           dynlib: tkmath.}
proc `-`*(this: Xy): Xy {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc setLinearForm*(this: var Xy; a1: cfloat; xy1: Xy; a2: cfloat; xy2: Xy) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xy; a1: cfloat; xy1: Xy; a2: cfloat; xy2: Xy; xy3: Xy) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xy; a1: cfloat; xy1: Xy; xy2: Xy) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xy; xy1: Xy; xy2: Xy) {.cdecl, importcpp: "SetLinearForm",
    dynlib: tkmath.}
proc subtract*(this: var Xy; right: Xy) {.cdecl, importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var Xy; right: Xy) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: Xy; right: Xy): Xy {.noSideEffect, cdecl,
                                      importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: Xy; right: Xy): Xy {.noSideEffect, cdecl, importcpp: "(# - #)",
                               dynlib: tkmath.}