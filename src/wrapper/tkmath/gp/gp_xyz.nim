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
discard "forward decl of gp_Mat"

proc xyz*(): XyzObj {.cdecl, constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc xyz*(x: cfloat; y: cfloat; z: cfloat): XyzObj {.cdecl, constructor,
    importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc setCoord*(this: var XyzObj; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "gp_XYZ.hxx".}
proc setCoord*(this: var XyzObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord",
    header: "gp_XYZ.hxx".}
proc setX*(this: var XyzObj; x: cfloat) {.cdecl, importcpp: "SetX", header: "gp_XYZ.hxx".}
proc setY*(this: var XyzObj; y: cfloat) {.cdecl, importcpp: "SetY", header: "gp_XYZ.hxx".}
proc setZ*(this: var XyzObj; z: cfloat) {.cdecl, importcpp: "SetZ", header: "gp_XYZ.hxx".}
proc coord*(this: XyzObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord",
                                        header: "gp_XYZ.hxx".}
proc changeCoord*(this: var XyzObj; theIndex: cint): var cfloat {.cdecl,
    importcpp: "ChangeCoord", header: "gp_XYZ.hxx".}
proc coord*(this: XyzObj; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "gp_XYZ.hxx".}
proc getData*(this: XyzObj): ptr cfloat {.noSideEffect, cdecl, importcpp: "GetData",
                                  header: "gp_XYZ.hxx".}
proc changeData*(this: var XyzObj): ptr cfloat {.cdecl, importcpp: "ChangeData",
                                        header: "gp_XYZ.hxx".}
proc x*(this: XyzObj): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "gp_XYZ.hxx".}
proc y*(this: XyzObj): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "gp_XYZ.hxx".}
proc z*(this: XyzObj): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "gp_XYZ.hxx".}
proc modulus*(this: XyzObj): cfloat {.noSideEffect, cdecl, importcpp: "Modulus",
                               header: "gp_XYZ.hxx".}
proc squareModulus*(this: XyzObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "SquareModulus", header: "gp_XYZ.hxx".}
proc isEqual*(this: XyzObj; other: XyzObj; tolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "gp_XYZ.hxx".}
proc add*(this: var XyzObj; other: XyzObj) {.cdecl, importcpp: "Add", header: "gp_XYZ.hxx".}
proc `+=`*(this: var XyzObj; other: XyzObj) {.cdecl, importcpp: "(# += #)", header: "gp_XYZ.hxx".}
proc added*(this: XyzObj; other: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "Added",
                                    header: "gp_XYZ.hxx".}
proc `+`*(this: XyzObj; other: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "(# + #)",
                                  header: "gp_XYZ.hxx".}
proc cross*(this: var XyzObj; right: XyzObj) {.cdecl, importcpp: "Cross", header: "gp_XYZ.hxx".}
proc `^=`*(this: var XyzObj; right: XyzObj) {.cdecl, importcpp: "(# ^= #)", header: "gp_XYZ.hxx".}
proc crossed*(this: XyzObj; right: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "Crossed",
                                      header: "gp_XYZ.hxx".}
proc `^`*(this: XyzObj; right: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "(# ^ #)",
                                  header: "gp_XYZ.hxx".}
proc crossMagnitude*(this: XyzObj; right: XyzObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossMagnitude", header: "gp_XYZ.hxx".}
proc crossSquareMagnitude*(this: XyzObj; right: XyzObj): cfloat {.noSideEffect, cdecl,
    importcpp: "CrossSquareMagnitude", header: "gp_XYZ.hxx".}
proc crossCross*(this: var XyzObj; coord1: XyzObj; coord2: XyzObj) {.cdecl,
    importcpp: "CrossCross", header: "gp_XYZ.hxx".}
proc crossCrossed*(this: XyzObj; coord1: XyzObj; coord2: XyzObj): XyzObj {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", header: "gp_XYZ.hxx".}
proc divide*(this: var XyzObj; scalar: cfloat) {.cdecl, importcpp: "Divide", header: "gp_XYZ.hxx".}
proc `/=`*(this: var XyzObj; scalar: cfloat) {.cdecl, importcpp: "(# /= #)", header: "gp_XYZ.hxx".}
proc divided*(this: XyzObj; scalar: cfloat): XyzObj {.noSideEffect, cdecl,
    importcpp: "Divided", header: "gp_XYZ.hxx".}
proc `/`*(this: XyzObj; scalar: cfloat): XyzObj {.noSideEffect, cdecl, importcpp: "(# / #)",
                                      header: "gp_XYZ.hxx".}
proc dot*(this: XyzObj; other: XyzObj): cfloat {.noSideEffect, cdecl, importcpp: "Dot",
                                     header: "gp_XYZ.hxx".}
proc `*`*(this: XyzObj; other: XyzObj): cfloat {.noSideEffect, cdecl, importcpp: "(# * #)",
                                     header: "gp_XYZ.hxx".}
proc dotCross*(this: XyzObj; coord1: XyzObj; coord2: XyzObj): cfloat {.noSideEffect, cdecl,
    importcpp: "DotCross", header: "gp_XYZ.hxx".}
proc multiply*(this: var XyzObj; scalar: cfloat) {.cdecl, importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var XyzObj; scalar: cfloat) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var XyzObj; other: XyzObj) {.cdecl, importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var XyzObj; other: XyzObj) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var XyzObj; matrix: MatObj) {.cdecl, importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var XyzObj; matrix: MatObj) {.cdecl, importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiplied*(this: XyzObj; scalar: cfloat): XyzObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: XyzObj; scalar: cfloat): XyzObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                      header: "gp_XYZ.hxx".}
proc multiplied*(this: XyzObj; other: XyzObj): XyzObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc multiplied*(this: XyzObj; matrix: MatObj): XyzObj {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: XyzObj; matrix: MatObj): XyzObj {.noSideEffect, cdecl, importcpp: "(# * #)",
                                   header: "gp_XYZ.hxx".}
proc normalize*(this: var XyzObj) {.cdecl, importcpp: "Normalize", header: "gp_XYZ.hxx".}
proc normalized*(this: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "Normalized",
                               header: "gp_XYZ.hxx".}
proc reverse*(this: var XyzObj) {.cdecl, importcpp: "Reverse", header: "gp_XYZ.hxx".}
proc reversed*(this: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_XYZ.hxx".}
proc subtract*(this: var XyzObj; right: XyzObj) {.cdecl, importcpp: "Subtract", header: "gp_XYZ.hxx".}
proc `-=`*(this: var XyzObj; right: XyzObj) {.cdecl, importcpp: "(# -= #)", header: "gp_XYZ.hxx".}
proc subtracted*(this: XyzObj; right: XyzObj): XyzObj {.noSideEffect, cdecl,
    importcpp: "Subtracted", header: "gp_XYZ.hxx".}
proc `-`*(this: XyzObj; right: XyzObj): XyzObj {.noSideEffect, cdecl, importcpp: "(# - #)",
                                  header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var XyzObj; a1: cfloat; xyz1: XyzObj; a2: cfloat; xyz2: XyzObj; a3: cfloat;
                   xyz3: XyzObj; xyz4: XyzObj) {.cdecl, importcpp: "SetLinearForm",
                                       header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var XyzObj; a1: cfloat; xyz1: XyzObj; a2: cfloat; xyz2: XyzObj; a3: cfloat;
                   xyz3: XyzObj) {.cdecl, importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var XyzObj; a1: cfloat; xyz1: XyzObj; a2: cfloat; xyz2: XyzObj; xyz3: XyzObj) {.
    cdecl, importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var XyzObj; a1: cfloat; xyz1: XyzObj; a2: cfloat; xyz2: XyzObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var XyzObj; a1: cfloat; xyz1: XyzObj; xyz2: XyzObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var XyzObj; xyz1: XyzObj; xyz2: XyzObj) {.cdecl,
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc dumpJson*(this: XyzObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_XYZ.hxx".}
proc initFromJson*(this: var XyzObj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_XYZ.hxx".}
