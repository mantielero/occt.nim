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
  Xyz* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy.} = object of RootObj ## ! Creates an XYZ object with zero co-ordinates (0,0,0)


proc newXyz*(): Xyz {.cdecl, constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc newXyz*(x: cfloat; y: cfloat; z: cfloat): Xyz {.cdecl, constructor,
    importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc setCoord*(this: var Xyz; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_XYZ.hxx".}
proc setCoord*(this: var Xyz; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XYZ.hxx".}
proc setX*(this: var Xyz; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_XYZ.hxx".}
proc setY*(this: var Xyz; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_XYZ.hxx".}
proc setZ*(this: var Xyz; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_XYZ.hxx".}
proc coord*(this: Xyz; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_XYZ.hxx".}
proc changeCoord*(this: var Xyz; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", header: "gp_XYZ.hxx".}
proc coord*(this: Xyz; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_XYZ.hxx".}
proc getData*(this: Xyz): ptr cfloat {.noSideEffect, cdecl, importcpp: "GetData",
                                  header: "gp_XYZ.hxx".}
proc changeData*(this: var Xyz): ptr cfloat {.cdecl, importcpp: "ChangeData",
                                        header: "gp_XYZ.hxx".}
proc x*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_XYZ.hxx".}
proc y*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_XYZ.hxx".}
proc z*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_XYZ.hxx".}
proc modulus*(this: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                               header: "gp_XYZ.hxx".}
proc squareModulus*(this: Xyz): cfloat {.noSideEffect, cdecl,
                                     importcpp: "SquareModulus", header: "gp_XYZ.hxx".}
proc isEqual*(this: Xyz; other: Xyz; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_XYZ.hxx".}
proc add*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "Add", header: "gp_XYZ.hxx".}
proc `+=`*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "(# += #)", header: "gp_XYZ.hxx".}
proc added*(this: Xyz; other: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_XYZ.hxx".}
proc `+`*(this: Xyz; other: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_XYZ.hxx".}
proc cross*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "Cross", header: "gp_XYZ.hxx".}
proc `^=`*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "(# ^= #)", header: "gp_XYZ.hxx".}
proc crossed*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_XYZ.hxx".}
proc `^`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_XYZ.hxx".}
proc crossMagnitude*(this: Xyz; right: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_XYZ.hxx".}
proc crossSquareMagnitude*(this: Xyz; right: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_XYZ.hxx".}
proc crossCross*(this: var Xyz; coord1: Xyz; coord2: Xyz) {.cdecl,
    importcpp: "CrossCross", header: "gp_XYZ.hxx".}
proc crossCrossed*(this: Xyz; coord1: Xyz; coord2: Xyz): Xyz {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_XYZ.hxx".}
proc divide*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_XYZ.hxx".}
proc `/=`*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_XYZ.hxx".}
proc divided*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_XYZ.hxx".}
proc `/`*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_XYZ.hxx".}
proc dot*(this: Xyz; other: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; other: Xyz): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_XYZ.hxx".}
proc dotCross*(this: Xyz; coord1: Xyz; coord2: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; other: Xyz) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; matrix: Mat) {.cdecl, importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; matrix: Mat) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; scalar: cfloat): Xyz {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; other: Xyz): Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XYZ.hxx".}
proc normalize*(this: var Xyz) {.cdecl, importcpp: "Normalize", header: "gp_XYZ.hxx".}
proc normalized*(this: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Normalized",
                               header: "gp_XYZ.hxx".}
proc reverse*(this: var Xyz) {.cdecl, importcpp: "Reverse", header: "gp_XYZ.hxx".}
proc reversed*(this: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_XYZ.hxx".}
proc subtract*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "Subtract", header: "gp_XYZ.hxx".}
proc `-=`*(this: var Xyz; right: Xyz) {.cdecl, importcpp: "(# -= #)", header: "gp_XYZ.hxx".}
proc subtracted*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_XYZ.hxx".}
proc `-`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz; a3: cfloat;
                   xyz3: Xyz; xyz4: Xyz) {.cdecl, importcpp: "SetLinearForm",
                                       header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz; a3: cfloat;
                   xyz3: Xyz) {.cdecl, importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz; xyz3: Xyz) {.
    cdecl, importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; a2: cfloat; xyz2: Xyz) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: cfloat; xyz1: Xyz; xyz2: Xyz) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; xyz1: Xyz; xyz2: Xyz) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc dumpJson*(this: Xyz; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_XYZ.hxx".}
proc initFromJson*(this: var Xyz; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_XYZ.hxx".}