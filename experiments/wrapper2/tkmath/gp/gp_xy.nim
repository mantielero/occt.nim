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
  GpXY* {.importcpp: "gp_XY", header: "gp_XY.hxx", bycopy.} = object ## ! Creates XY object with zero coordinates (0,0).


proc constructGpXY*(): GpXY {.cdecl, constructor, importcpp: "gp_XY(@)", dynlib: tkmath.}
proc constructGpXY*(x: cfloat; y: cfloat): GpXY {.cdecl, constructor,
    importcpp: "gp_XY(@)", dynlib: tkmath.}
proc setCoord*(this: var GpXY; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setCoord*(this: var GpXY; x: cfloat; y: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var GpXY; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpXY; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc coord*(this: GpXY; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc changeCoord*(this: var GpXY; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", dynlib: tkmath.}
proc coord*(this: GpXY; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc x*(this: GpXY): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpXY): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc modulus*(this: GpXY): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                                dynlib: tkmath.}
proc squareModulus*(this: GpXY): cfloat {.noSideEffect, cdecl,
                                      importcpp: "SquareModulus", dynlib: tkmath.}
proc isEqual*(this: GpXY; other: GpXY; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc add*(this: var GpXY; other: GpXY) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var GpXY; other: GpXY) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: GpXY; other: GpXY): GpXY {.noSideEffect, cdecl, importcpp: "Added",
                                       dynlib: tkmath.}
proc `+`*(this: GpXY; other: GpXY): GpXY {.noSideEffect, cdecl, importcpp: "(# + #)",
                                     dynlib: tkmath.}
proc crossed*(this: GpXY; right: GpXY): cfloat {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: GpXY; right: GpXY): cfloat {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                       dynlib: tkmath.}
proc crossMagnitude*(this: GpXY; right: GpXY): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: GpXY; right: GpXY): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc divide*(this: var GpXY; scalar: cfloat) {.cdecl, importcpp: "Divide", dynlib: tkmath.}
proc `/=`*(this: var GpXY; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", dynlib: tkmath.}
proc divided*(this: GpXY; scalar: cfloat): GpXY {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: GpXY; scalar: cfloat): GpXY {.noSideEffect, cdecl, importcpp: "(# / #)",
                                        dynlib: tkmath.}
proc dot*(this: GpXY; other: GpXY): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                       dynlib: tkmath.}
proc `*`*(this: GpXY; other: GpXY): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                       dynlib: tkmath.}
proc multiply*(this: var GpXY; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpXY; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var GpXY; other: GpXY) {.cdecl, importcpp: "Multiply",
                                        dynlib: tkmath.}
proc `*=`*(this: var GpXY; other: GpXY) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var GpXY; matrix: GpMat2d) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpXY; matrix: GpMat2d) {.cdecl, importcpp: "(# *= #)",
                                        dynlib: tkmath.}
proc multiplied*(this: GpXY; scalar: cfloat): GpXY {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpXY; scalar: cfloat): GpXY {.noSideEffect, cdecl, importcpp: "(# * #)",
                                        dynlib: tkmath.}
proc multiplied*(this: GpXY; other: GpXY): GpXY {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc multiplied*(this: GpXY; matrix: GpMat2d): GpXY {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpXY; matrix: GpMat2d): GpXY {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc normalize*(this: var GpXY) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: GpXY): GpXY {.noSideEffect, cdecl, importcpp: "Normalized",
                                 dynlib: tkmath.}
proc reverse*(this: var GpXY) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpXY): GpXY {.noSideEffect, cdecl, importcpp: "Reversed",
                               dynlib: tkmath.}
proc `-`*(this: GpXY): GpXY {.noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkmath.}
proc setLinearForm*(this: var GpXY; a1: cfloat; xy1: GpXY; a2: cfloat; xy2: GpXY) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXY; a1: cfloat; xy1: GpXY; a2: cfloat; xy2: GpXY; xy3: GpXY) {.
    cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXY; a1: cfloat; xy1: GpXY; xy2: GpXY) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXY; xy1: GpXY; xy2: GpXY) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc subtract*(this: var GpXY; right: GpXY) {.cdecl, importcpp: "Subtract",
                                        dynlib: tkmath.}
proc `-=`*(this: var GpXY; right: GpXY) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: GpXY; right: GpXY): GpXY {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpXY; right: GpXY): GpXY {.noSideEffect, cdecl, importcpp: "(# - #)",
                                     dynlib: tkmath.}