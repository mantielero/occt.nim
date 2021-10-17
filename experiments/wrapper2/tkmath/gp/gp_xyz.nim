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


proc newXyz*(): Xyz {.cdecl, constructor, importcpp: "gp_XYZ(@)", dynlib: tkmath.}
proc newXyz*(x: cfloat; y: cfloat; z: cfloat): Xyz {.cdecl, constructor,
    importcpp: "gp_XYZ(@)", dynlib: tkmath.}
proc setCoord*(this: var Xyz; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setCoord*(this: var Xyz; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var Xyz; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var Xyz; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var Xyz; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc coord*(this: Xyz; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        dynlib: tkmath.}
proc changeCoord*(this: var Xyz; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", dynlib: tkmath.}
proc coord*(this: Xyz; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc getData*(this: Xyz): ptr cfloat {.noSideEffect, cdecl, importcpp: "GetData",
                                  dynlib: tkmath.}
proc changeData*(this: var Xyz): ptr cfloat {.cdecl, importcpp: "ChangeData",
                                        dynlib: tkmath.}
proc x*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc modulus*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                               dynlib: tkmath.}
proc squareModulus*(this: Xyz): cfloat {.noSideEffect, cdecl,
                                     importcpp: "SquareModulus", dynlib: tkmath.}
proc isEqual*(this: Xyz; other: Xyz; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc add*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: Xyz; other: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Added",
                                    dynlib: tkmath.}
proc `+`*(this: Xyz; other: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  dynlib: tkmath.}
proc cross*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "Cross", dynlib: tkmath.}
proc `^=`*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "(# ^= #)", dynlib: tkmath.}
proc crossed*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Crossed",
                                      dynlib: tkmath.}
proc `^`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  dynlib: tkmath.}
proc crossMagnitude*(this: Xyz; right: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: Xyz; right: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc crossCross*(this: var Xyz; coord1: Xyz; coord2: Xyz) {.cdecl,
    importcpp: "CrossCross", dynlib: tkmath.}
proc crossCrossed*(this: Xyz; coord1: Xyz; coord2: Xyz): Xyz {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc divide*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "Divide", dynlib: tkmath.}
proc `/=`*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", dynlib: tkmath.}
proc divided*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      dynlib: tkmath.}
proc dot*(this: Xyz; other: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     dynlib: tkmath.}
proc `*`*(this: Xyz; other: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     dynlib: tkmath.}
proc dotCross*(this: Xyz; coord1: Xyz; coord2: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", dynlib: tkmath.}
proc multiply*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var Xyz; matrix: Mat) {.cdecl, importcpp: "Multiply", dynlib: tkmath.}
proc `*=`*(this: var Xyz; matrix: Mat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiplied*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      dynlib: tkmath.}
proc multiplied*(this: Xyz; other: Xyz): Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc multiplied*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   dynlib: tkmath.}
proc normalize*(this: var Xyz) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Normalized",
                               dynlib: tkmath.}
proc reverse*(this: var Xyz) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Reversed",
                             dynlib: tkmath.}
proc subtract*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "Subtract", dynlib: tkmath.}
proc `-=`*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  dynlib: tkmath.}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz; a3: cfloat;
                   xyz3: Xyz; xyz4: Xyz) {.cdecl, importcpp: "SetLinearForm",
                                       dynlib: tkmath.}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz; a3: cfloat;
                   xyz3: Xyz) {.cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz; xyz3: Xyz) {.
    cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; xyz2: Xyz) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var Xyz; xyz1: Xyz; xyz2: Xyz) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc dumpJson*(this: Xyz; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var Xyz; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", dynlib: tkmath.}