import gp_types

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

proc xy*(): gp_Xy {.cdecl, constructor, importcpp: "gp_XY(@)", header: "gp_XY.hxx".}
proc xy*(x: cfloat; y: cfloat): gp_Xy {.cdecl, constructor, importcpp: "gp_XY(@)",
                                  header: "gp_XY.hxx".}
proc setCoord*(this: var gp_Xy; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setCoord*(this: var gp_Xy; x: cfloat; y: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setX*(this: var gp_Xy; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_XY.hxx".}
proc setY*(this: var gp_Xy; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_XY.hxx".}
proc coord*(this: gp_Xy; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                       header: "gp_XY.hxx".}
proc changeCoord*(this: var gp_Xy; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", header: "gp_XY.hxx".}
proc coord*(this: gp_Xy; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_XY.hxx".}
proc x*(this: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_XY.hxx".}
proc y*(this: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_XY.hxx".}
proc modulus*(this: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                              header: "gp_XY.hxx".}
proc squareModulus*(this: gp_Xy): cfloat {.noSideEffect, cdecl,
                                    importcpp: "SquareModulus", header: "gp_XY.hxx".}
proc isEqual*(this: gp_Xy; other: gp_Xy; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_XY.hxx".}
proc add*(this: var gp_Xy; other: gp_Xy) {.cdecl, importcpp: "Add", header: "gp_XY.hxx".}
proc `+=`*(this: var gp_Xy; other: gp_Xy) {.cdecl, importcpp: "(# += #)", header: "gp_XY.hxx".}
proc added*(this: gp_Xy; other: gp_Xy): gp_Xy {.noSideEffect, cdecl, importcpp: "Added",
                                 header: "gp_XY.hxx".}
proc `+`*(this: gp_Xy; other: gp_Xy): gp_Xy {.noSideEffect, cdecl, importcpp: "(# + #)",
                               header: "gp_XY.hxx".}
proc crossed*(this: gp_Xy; right: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "Crossed",
                                       header: "gp_XY.hxx".}
proc `^`*(this: gp_Xy; right: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                   header: "gp_XY.hxx".}
proc crossMagnitude*(this: gp_Xy; right: gp_Xy): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_XY.hxx".}
proc crossSquareMagnitude*(this: gp_Xy; right: gp_Xy): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_XY.hxx".}
proc divide*(this: var gp_Xy; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_XY.hxx".}
proc `/=`*(this: var gp_Xy; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_XY.hxx".}
proc divided*(this: gp_Xy; scalar: cfloat): gp_Xy {.noSideEffect, cdecl, importcpp: "Divided",
                                        header: "gp_XY.hxx".}
proc `/`*(this: gp_Xy; scalar: cfloat): gp_Xy {.noSideEffect, cdecl, importcpp: "(# / #)",
                                    header: "gp_XY.hxx".}
proc dot*(this: gp_Xy; other: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                   header: "gp_XY.hxx".}
proc `*`*(this: gp_Xy; other: gp_Xy): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc multiply*(this: var gp_Xy; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_XY.hxx".}
proc `*=`*(this: var gp_Xy; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var gp_Xy; other: gp_Xy) {.cdecl, importcpp: "Multiply", header: "gp_XY.hxx".}
proc `*=`*(this: var gp_Xy; other: gp_Xy) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var gp_Xy; matrix: gp_Mat2d) {.cdecl, importcpp: "Multiply",
                                        header: "gp_XY.hxx".}
proc `*=`*(this: var gp_Xy; matrix: gp_Mat2d) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiplied*(this: gp_Xy; scalar: cfloat): gp_Xy {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XY.hxx".}
proc `*`*(this: gp_Xy; scalar: cfloat): gp_Xy {.noSideEffect, cdecl, importcpp: "(# * #)",
                                    header: "gp_XY.hxx".}
proc multiplied*(this: gp_Xy; other: gp_Xy): gp_Xy {.noSideEffect, cdecl,
                                      importcpp: "Multiplied", header: "gp_XY.hxx".}
proc multiplied*(this: gp_Xy; matrix: gp_Mat2d): gp_Xy {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XY.hxx".}
proc `*`*(this: gp_Xy; matrix: gp_Mat2d): gp_Xy {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc normalize*(this: var gp_Xy) {.cdecl, importcpp: "Normalize", header: "gp_XY.hxx".}
proc normalized*(this: gp_Xy): gp_Xy {.noSideEffect, cdecl, importcpp: "Normalized",
                             header: "gp_XY.hxx".}
proc reverse*(this: var gp_Xy) {.cdecl, importcpp: "Reverse", header: "gp_XY.hxx".}
proc reversed*(this: gp_Xy): gp_Xy {.noSideEffect, cdecl, importcpp: "Reversed",
                           header: "gp_XY.hxx".}
proc `-`*(this: gp_Xy): gp_Xy {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_XY.hxx".}
proc setLinearForm*(this: var gp_Xy; a1: cfloat; xy1: gp_Xy; a2: cfloat; xy2: gp_Xy) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var gp_Xy; a1: cfloat; xy1: gp_Xy; a2: cfloat; xy2: gp_Xy; xy3: gp_Xy) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var gp_Xy; a1: cfloat; xy1: gp_Xy; xy2: gp_Xy) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var gp_Xy; xy1: gp_Xy; xy2: gp_Xy) {.cdecl, importcpp: "SetLinearForm",
    header: "gp_XY.hxx".}
proc subtract*(this: var gp_Xy; right: gp_Xy) {.cdecl, importcpp: "Subtract", header: "gp_XY.hxx".}
proc `-=`*(this: var gp_Xy; right: gp_Xy) {.cdecl, importcpp: "(# -= #)", header: "gp_XY.hxx".}
proc subtracted*(this: gp_Xy; right: gp_Xy): gp_Xy {.noSideEffect, cdecl,
                                      importcpp: "Subtracted", header: "gp_XY.hxx".}
proc `-`*(this: gp_Xy; right: gp_Xy): gp_Xy {.noSideEffect, cdecl, importcpp: "(# - #)",
                               header: "gp_XY.hxx".}
