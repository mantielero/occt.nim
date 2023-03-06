import gp_types
import ../standard/standard_types
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

proc xyz*(): gp_Xyz {.cdecl, constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc xyz*(x: cfloat; y: cfloat; z: cfloat): gp_Xyz {.cdecl, constructor,
    importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc setCoord*(this: var gp_Xyz; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_XYZ.hxx".}
proc setCoord*(this: var gp_Xyz; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XYZ.hxx".}
proc setX*(this: var gp_Xyz; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_XYZ.hxx".}
proc setY*(this: var gp_Xyz; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_XYZ.hxx".}
proc setZ*(this: var gp_Xyz; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_XYZ.hxx".}
proc coord*(this: gp_Xyz; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_XYZ.hxx".}
proc changeCoord*(this: var gp_Xyz; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", header: "gp_XYZ.hxx".}
proc coord*(this: gp_Xyz; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_XYZ.hxx".}
proc getData*(this: gp_Xyz): ptr cfloat {.noSideEffect, cdecl, importcpp: "GetData",
                                  header: "gp_XYZ.hxx".}
proc changeData*(this: var gp_Xyz): ptr cfloat {.cdecl, importcpp: "ChangeData",
                                        header: "gp_XYZ.hxx".}
proc x*(this: gp_Xyz): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_XYZ.hxx".}
proc y*(this: gp_Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_XYZ.hxx".}
proc z*(this: gp_Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_XYZ.hxx".}
proc modulus*(this: gp_Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                               header: "gp_XYZ.hxx".}
proc squareModulus*(this: gp_Xyz): cfloat {.noSideEffect, cdecl,
                                     importcpp: "SquareModulus", header: "gp_XYZ.hxx".}
proc isEqual*(this: gp_Xyz; other: gp_Xyz; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_XYZ.hxx".}
proc add*(this: var gp_Xyz; other: gp_Xyz) {.cdecl, importcpp: "Add", header: "gp_XYZ.hxx".}
proc `+=`*(this: var gp_Xyz; other: gp_Xyz) {.cdecl, importcpp: "(# += #)", header: "gp_XYZ.hxx".}
proc added*(this: gp_Xyz; other: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_XYZ.hxx".}
proc `+`*(this: gp_Xyz; other: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_XYZ.hxx".}
proc cross*(this: var gp_Xyz; right: gp_Xyz) {.cdecl, importcpp: "Cross", header: "gp_XYZ.hxx".}
proc `^=`*(this: var gp_Xyz; right: gp_Xyz) {.cdecl, importcpp: "(# ^= #)", header: "gp_XYZ.hxx".}
proc crossed*(this: gp_Xyz; right: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_XYZ.hxx".}
proc `^`*(this: gp_Xyz; right: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_XYZ.hxx".}
proc crossMagnitude*(this: gp_Xyz; right: gp_Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_XYZ.hxx".}
proc crossSquareMagnitude*(this: gp_Xyz; right: gp_Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_XYZ.hxx".}
proc crossCross*(this: var gp_Xyz; coord1: gp_Xyz; coord2: gp_Xyz) {.cdecl,
    importcpp: "CrossCross", header: "gp_XYZ.hxx".}
proc crossCrossed*(this: gp_Xyz; coord1: gp_Xyz; coord2: gp_Xyz): gp_Xyz {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_XYZ.hxx".}
proc divide*(this: var gp_Xyz; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_XYZ.hxx".}
proc `/=`*(this: var gp_Xyz; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_XYZ.hxx".}
proc divided*(this: gp_Xyz; scalar: cfloat): gp_Xyz {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_XYZ.hxx".}
proc `/`*(this: gp_Xyz; scalar: cfloat): gp_Xyz {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_XYZ.hxx".}
proc dot*(this: gp_Xyz; other: gp_Xyz): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_XYZ.hxx".}
proc `*`*(this: gp_Xyz; other: gp_Xyz): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_XYZ.hxx".}
proc dotCross*(this: gp_Xyz; coord1: gp_Xyz; coord2: gp_Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_XYZ.hxx".}
proc multiply*(this: var gp_Xyz; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var gp_Xyz; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var gp_Xyz; other: gp_Xyz) {.cdecl, importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var gp_Xyz; other: gp_Xyz) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var gp_Xyz; matrix: gp_Mat) {.cdecl, importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var gp_Xyz; matrix: gp_Mat) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiplied*(this: gp_Xyz; scalar: cfloat): gp_Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: gp_Xyz; scalar: cfloat): gp_Xyz {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_XYZ.hxx".}
proc multiplied*(this: gp_Xyz; other: gp_Xyz): gp_Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc multiplied*(this: gp_Xyz; matrix: gp_Mat): gp_Xyz {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: gp_Xyz; matrix: gp_Mat): gp_Xyz {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XYZ.hxx".}
proc normalize*(this: var gp_Xyz) {.cdecl, importcpp: "Normalize", header: "gp_XYZ.hxx".}
proc normalized*(this: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "Normalized",
                               header: "gp_XYZ.hxx".}
proc reverse*(this: var gp_Xyz) {.cdecl, importcpp: "Reverse", header: "gp_XYZ.hxx".}
proc reversed*(this: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_XYZ.hxx".}
proc subtract*(this: var gp_Xyz; right: gp_Xyz) {.cdecl, importcpp: "Subtract", header: "gp_XYZ.hxx".}
proc `-=`*(this: var gp_Xyz; right: gp_Xyz) {.cdecl, importcpp: "(# -= #)", header: "gp_XYZ.hxx".}
proc subtracted*(this: gp_Xyz; right: gp_Xyz): gp_Xyz {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_XYZ.hxx".}
proc `-`*(this: gp_Xyz; right: gp_Xyz): gp_Xyz {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var gp_Xyz; a1: cfloat; xyz1: gp_Xyz; a2: cfloat; xyz2: gp_Xyz; a3: cfloat;
                   xyz3: gp_Xyz; xyz4: gp_Xyz) {.cdecl, importcpp: "SetLinearForm",
                                       header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var gp_Xyz; a1: cfloat; xyz1: gp_Xyz; a2: cfloat; xyz2: gp_Xyz; a3: cfloat;
                   xyz3: gp_Xyz) {.cdecl, importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var gp_Xyz; a1: cfloat; xyz1: gp_Xyz; a2: cfloat; xyz2: gp_Xyz; xyz3: gp_Xyz) {.
    cdecl, importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var gp_Xyz; a1: cfloat; xyz1: gp_Xyz; a2: cfloat; xyz2: gp_Xyz) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var gp_Xyz; a1: cfloat; xyz1: gp_Xyz; xyz2: gp_Xyz) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var gp_Xyz; xyz1: gp_Xyz; xyz2: gp_Xyz) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc dumpJson*(this: gp_Xyz; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_XYZ.hxx".}
proc initFromJson*(this: var gp_Xyz; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_XYZ.hxx".}
