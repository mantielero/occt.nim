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
  GpXYZ* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy.} = object ## ! Creates an XYZ object with zero co-ordinates (0,0,0)


proc constructGpXYZ*(): GpXYZ {.cdecl, constructor, importcpp: "gp_XYZ(@)",
                             dynlib: tkmath.}
proc constructGpXYZ*(x: cfloat; y: cfloat; z: cfloat): GpXYZ {.cdecl, constructor,
    importcpp: "gp_XYZ(@)", dynlib: tkmath.}
proc setCoord*(this: var GpXYZ; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setCoord*(this: var GpXYZ; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    dynlib: tkmath.}
proc setX*(this: var GpXYZ; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GpXYZ; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var GpXYZ; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc coord*(this: GpXYZ; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
    dynlib: tkmath.}
proc changeCoord*(this: var GpXYZ; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", dynlib: tkmath.}
proc coord*(this: GpXYZ; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkmath.}
proc getData*(this: GpXYZ): ptr cfloat {.noSideEffect, cdecl, importcpp: "GetData",
                                    dynlib: tkmath.}
proc changeData*(this: var GpXYZ): ptr cfloat {.cdecl, importcpp: "ChangeData",
    dynlib: tkmath.}
proc x*(this: GpXYZ): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GpXYZ): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: GpXYZ): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc modulus*(this: GpXYZ): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                                 dynlib: tkmath.}
proc squareModulus*(this: GpXYZ): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareModulus", dynlib: tkmath.}
proc isEqual*(this: GpXYZ; other: GpXYZ; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc add*(this: var GpXYZ; other: GpXYZ) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc `+=`*(this: var GpXYZ; other: GpXYZ) {.cdecl, importcpp: "(# += #)", dynlib: tkmath.}
proc added*(this: GpXYZ; other: GpXYZ): GpXYZ {.noSideEffect, cdecl, importcpp: "Added",
    dynlib: tkmath.}
proc `+`*(this: GpXYZ; other: GpXYZ): GpXYZ {.noSideEffect, cdecl, importcpp: "(# + #)",
                                        dynlib: tkmath.}
proc cross*(this: var GpXYZ; right: GpXYZ) {.cdecl, importcpp: "Cross", dynlib: tkmath.}
proc `^=`*(this: var GpXYZ; right: GpXYZ) {.cdecl, importcpp: "(# ^= #)", dynlib: tkmath.}
proc crossed*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, cdecl,
    importcpp: "Crossed", dynlib: tkmath.}
proc `^`*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                        dynlib: tkmath.}
proc crossMagnitude*(this: GpXYZ; right: GpXYZ): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", dynlib: tkmath.}
proc crossSquareMagnitude*(this: GpXYZ; right: GpXYZ): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", dynlib: tkmath.}
proc crossCross*(this: var GpXYZ; coord1: GpXYZ; coord2: GpXYZ) {.cdecl,
    importcpp: "CrossCross", dynlib: tkmath.}
proc crossCrossed*(this: GpXYZ; coord1: GpXYZ; coord2: GpXYZ): GpXYZ {.noSideEffect,
    cdecl, importcpp: "CrossCrossed", dynlib: tkmath.}
proc divide*(this: var GpXYZ; scalar: cfloat) {.cdecl, importcpp: "Divide",
    dynlib: tkmath.}
proc `/=`*(this: var GpXYZ; scalar: cfloat) {.cdecl, importcpp: "(# /= #)",
                                        dynlib: tkmath.}
proc divided*(this: GpXYZ; scalar: cfloat): GpXYZ {.noSideEffect, cdecl,
    importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: GpXYZ; scalar: cfloat): GpXYZ {.noSideEffect, cdecl,
    importcpp: "(# / #)", dynlib: tkmath.}
proc dot*(this: GpXYZ; other: GpXYZ): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
    dynlib: tkmath.}
proc `*`*(this: GpXYZ; other: GpXYZ): cfloat {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc dotCross*(this: GpXYZ; coord1: GpXYZ; coord2: GpXYZ): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", dynlib: tkmath.}
proc multiply*(this: var GpXYZ; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpXYZ; scalar: cfloat) {.cdecl, importcpp: "(# *= #)",
                                        dynlib: tkmath.}
proc multiply*(this: var GpXYZ; other: GpXYZ) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpXYZ; other: GpXYZ) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiply*(this: var GpXYZ; matrix: GpMat) {.cdecl, importcpp: "Multiply",
    dynlib: tkmath.}
proc `*=`*(this: var GpXYZ; matrix: GpMat) {.cdecl, importcpp: "(# *= #)", dynlib: tkmath.}
proc multiplied*(this: GpXYZ; scalar: cfloat): GpXYZ {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpXYZ; scalar: cfloat): GpXYZ {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc multiplied*(this: GpXYZ; other: GpXYZ): GpXYZ {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc multiplied*(this: GpXYZ; matrix: GpMat): GpXYZ {.noSideEffect, cdecl,
    importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: GpXYZ; matrix: GpMat): GpXYZ {.noSideEffect, cdecl,
    importcpp: "(# * #)", dynlib: tkmath.}
proc normalize*(this: var GpXYZ) {.cdecl, importcpp: "Normalize", dynlib: tkmath.}
proc normalized*(this: GpXYZ): GpXYZ {.noSideEffect, cdecl, importcpp: "Normalized",
                                   dynlib: tkmath.}
proc reverse*(this: var GpXYZ) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpXYZ): GpXYZ {.noSideEffect, cdecl, importcpp: "Reversed",
                                 dynlib: tkmath.}
proc subtract*(this: var GpXYZ; right: GpXYZ) {.cdecl, importcpp: "Subtract",
    dynlib: tkmath.}
proc `-=`*(this: var GpXYZ; right: GpXYZ) {.cdecl, importcpp: "(# -= #)", dynlib: tkmath.}
proc subtracted*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, cdecl,
    importcpp: "Subtracted", dynlib: tkmath.}
proc `-`*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, cdecl, importcpp: "(# - #)",
                                        dynlib: tkmath.}
proc setLinearForm*(this: var GpXYZ; a1: cfloat; xyz1: GpXYZ; a2: cfloat; xyz2: GpXYZ;
                   a3: cfloat; xyz3: GpXYZ; xyz4: GpXYZ) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXYZ; a1: cfloat; xyz1: GpXYZ; a2: cfloat; xyz2: GpXYZ;
                   a3: cfloat; xyz3: GpXYZ) {.cdecl, importcpp: "SetLinearForm",
    dynlib: tkmath.}
proc setLinearForm*(this: var GpXYZ; a1: cfloat; xyz1: GpXYZ; a2: cfloat; xyz2: GpXYZ;
                   xyz3: GpXYZ) {.cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXYZ; a1: cfloat; xyz1: GpXYZ; a2: cfloat; xyz2: GpXYZ) {.
    cdecl, importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXYZ; a1: cfloat; xyz1: GpXYZ; xyz2: GpXYZ) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc setLinearForm*(this: var GpXYZ; xyz1: GpXYZ; xyz2: GpXYZ) {.cdecl,
    importcpp: "SetLinearForm", dynlib: tkmath.}
proc dumpJson*(this: GpXYZ; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var GpXYZ; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    dynlib: tkmath.}