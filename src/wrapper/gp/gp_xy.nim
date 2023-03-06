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

proc xy*(): XyObj {.cdecl, constructor, importcpp: "gp_XY(@)", header: "gp_XY.hxx".}
proc xy*(x: cfloat; y: cfloat): XyObj {.cdecl, constructor, importcpp: "gp_XY(@)",
                                  header: "gp_XY.hxx".}
proc setCoord*(this: var XyObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setCoord*(this: var XyObj; x: cfloat; y: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XY.hxx".}
proc setX*(this: var XyObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_XY.hxx".}
proc setY*(this: var XyObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_XY.hxx".}
proc coord*(this: XyObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                       header: "gp_XY.hxx".}
proc changeCoord*(this: var XyObj; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", header: "gp_XY.hxx".}
proc coord*(this: XyObj; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_XY.hxx".}
proc x*(this: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_XY.hxx".}
proc y*(this: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_XY.hxx".}
proc modulus*(this: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                              header: "gp_XY.hxx".}
proc squareModulus*(this: XyObj): cfloat {.noSideEffect, cdecl,
                                    importcpp: "SquareModulus", header: "gp_XY.hxx".}
proc isEqual*(this: XyObj; other: XyObj; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_XY.hxx".}
proc add*(this: var XyObj; other: XyObj) {.cdecl, importcpp: "Add", header: "gp_XY.hxx".}
proc `+=`*(this: var XyObj; other: XyObj) {.cdecl, importcpp: "(# += #)", header: "gp_XY.hxx".}
proc added*(this: XyObj; other: XyObj): XyObj {.noSideEffect, cdecl, importcpp: "Added",
                                 header: "gp_XY.hxx".}
proc `+`*(this: XyObj; other: XyObj): XyObj {.noSideEffect, cdecl, importcpp: "(# + #)",
                               header: "gp_XY.hxx".}
proc crossed*(this: XyObj; right: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "Crossed",
                                       header: "gp_XY.hxx".}
proc `^`*(this: XyObj; right: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                   header: "gp_XY.hxx".}
proc crossMagnitude*(this: XyObj; right: XyObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_XY.hxx".}
proc crossSquareMagnitude*(this: XyObj; right: XyObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_XY.hxx".}
proc divide*(this: var XyObj; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_XY.hxx".}
proc `/=`*(this: var XyObj; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_XY.hxx".}
proc divided*(this: XyObj; scalar: cfloat): XyObj {.noSideEffect, cdecl, importcpp: "Divided",
                                        header: "gp_XY.hxx".}
proc `/`*(this: XyObj; scalar: cfloat): XyObj {.noSideEffect, cdecl, importcpp: "(# / #)",
                                    header: "gp_XY.hxx".}
proc dot*(this: XyObj; other: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                   header: "gp_XY.hxx".}
proc `*`*(this: XyObj; other: XyObj): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc multiply*(this: var XyObj; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_XY.hxx".}
proc `*=`*(this: var XyObj; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var XyObj; other: XyObj) {.cdecl, importcpp: "Multiply", header: "gp_XY.hxx".}
proc `*=`*(this: var XyObj; other: XyObj) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiply*(this: var XyObj; matrix: Mat2dObj) {.cdecl, importcpp: "Multiply",
                                        header: "gp_XY.hxx".}
proc `*=`*(this: var XyObj; matrix: Mat2dObj) {.cdecl, importcpp: "(# *= #)", header: "gp_XY.hxx".}
proc multiplied*(this: XyObj; scalar: cfloat): XyObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XY.hxx".}
proc `*`*(this: XyObj; scalar: cfloat): XyObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                    header: "gp_XY.hxx".}
proc multiplied*(this: XyObj; other: XyObj): XyObj {.noSideEffect, cdecl,
                                      importcpp: "Multiplied", header: "gp_XY.hxx".}
proc multiplied*(this: XyObj; matrix: Mat2dObj): XyObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XY.hxx".}
proc `*`*(this: XyObj; matrix: Mat2dObj): XyObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XY.hxx".}
proc normalize*(this: var XyObj) {.cdecl, importcpp: "Normalize", header: "gp_XY.hxx".}
proc normalized*(this: XyObj): XyObj {.noSideEffect, cdecl, importcpp: "Normalized",
                             header: "gp_XY.hxx".}
proc reverse*(this: var XyObj) {.cdecl, importcpp: "Reverse", header: "gp_XY.hxx".}
proc reversed*(this: XyObj): XyObj {.noSideEffect, cdecl, importcpp: "Reversed",
                           header: "gp_XY.hxx".}
proc `-`*(this: XyObj): XyObj {.noSideEffect, cdecl, importcpp: "(- #)", header: "gp_XY.hxx".}
proc setLinearForm*(this: var XyObj; a1: cfloat; xy1: XyObj; a2: cfloat; xy2: XyObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var XyObj; a1: cfloat; xy1: XyObj; a2: cfloat; xy2: XyObj; xy3: XyObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var XyObj; a1: cfloat; xy1: XyObj; xy2: XyObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XY.hxx".}
proc setLinearForm*(this: var XyObj; xy1: XyObj; xy2: XyObj) {.cdecl, importcpp: "SetLinearForm",
    header: "gp_XY.hxx".}
proc subtract*(this: var XyObj; right: XyObj) {.cdecl, importcpp: "Subtract", header: "gp_XY.hxx".}
proc `-=`*(this: var XyObj; right: XyObj) {.cdecl, importcpp: "(# -= #)", header: "gp_XY.hxx".}
proc subtracted*(this: XyObj; right: XyObj): XyObj {.noSideEffect, cdecl,
                                      importcpp: "Subtracted", header: "gp_XY.hxx".}
proc `-`*(this: XyObj; right: XyObj): XyObj {.noSideEffect, cdecl, importcpp: "(# - #)",
                               header: "gp_XY.hxx".}
