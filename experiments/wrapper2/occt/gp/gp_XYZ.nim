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
  Xyz* {.importcpp: "gp_XYZ", header: "gp_XYZ.hxx", bycopy.} = object


proc `new`*(this: var Xyz; theSize: csize_t): pointer {.
    importcpp: "gp_XYZ::operator new", header: "gp_XYZ.hxx".}
proc `delete`*(this: var Xyz; theAddress: pointer) {.
    importcpp: "gp_XYZ::operator delete", header: "gp_XYZ.hxx".}
proc `new[]`*(this: var Xyz; theSize: csize_t): pointer {.
    importcpp: "gp_XYZ::operator new[]", header: "gp_XYZ.hxx".}
proc `delete[]`*(this: var Xyz; theAddress: pointer) {.
    importcpp: "gp_XYZ::operator delete[]", header: "gp_XYZ.hxx".}
proc `new`*(this: var Xyz; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_XYZ::operator new", header: "gp_XYZ.hxx".}
proc `delete`*(this: var Xyz; a2: pointer; a3: pointer) {.
    importcpp: "gp_XYZ::operator delete", header: "gp_XYZ.hxx".}
proc constructXyz*(): Xyz {.constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc constructXyz*(x: StandardReal; y: StandardReal; z: StandardReal): Xyz {.
    constructor, importcpp: "gp_XYZ(@)", header: "gp_XYZ.hxx".}
proc setCoord*(this: var Xyz; x: StandardReal; y: StandardReal; z: StandardReal) {.
    importcpp: "SetCoord", header: "gp_XYZ.hxx".}
proc setCoord*(this: var Xyz; index: int; xi: StandardReal) {.importcpp: "SetCoord",
    header: "gp_XYZ.hxx".}
proc setX*(this: var Xyz; x: StandardReal) {.importcpp: "SetX", header: "gp_XYZ.hxx".}
proc setY*(this: var Xyz; y: StandardReal) {.importcpp: "SetY", header: "gp_XYZ.hxx".}
proc setZ*(this: var Xyz; z: StandardReal) {.importcpp: "SetZ", header: "gp_XYZ.hxx".}
proc coord*(this: Xyz; index: int): StandardReal {.noSideEffect, importcpp: "Coord",
    header: "gp_XYZ.hxx".}
proc changeCoord*(this: var Xyz; theIndex: int): var StandardReal {.
    importcpp: "ChangeCoord", header: "gp_XYZ.hxx".}
proc coord*(this: Xyz; x: var StandardReal; y: var StandardReal; z: var StandardReal) {.
    noSideEffect, importcpp: "Coord", header: "gp_XYZ.hxx".}
proc getData*(this: Xyz): ptr StandardReal {.noSideEffect, importcpp: "GetData",
                                        header: "gp_XYZ.hxx".}
proc changeData*(this: var Xyz): ptr StandardReal {.importcpp: "ChangeData",
    header: "gp_XYZ.hxx".}
proc x*(this: Xyz): StandardReal {.noSideEffect, importcpp: "X", header: "gp_XYZ.hxx".}
proc y*(this: Xyz): StandardReal {.noSideEffect, importcpp: "Y", header: "gp_XYZ.hxx".}
proc z*(this: Xyz): StandardReal {.noSideEffect, importcpp: "Z", header: "gp_XYZ.hxx".}
proc modulus*(this: Xyz): StandardReal {.noSideEffect, importcpp: "Modulus",
                                     header: "gp_XYZ.hxx".}
proc squareModulus*(this: Xyz): StandardReal {.noSideEffect,
    importcpp: "SquareModulus", header: "gp_XYZ.hxx".}
proc isEqual*(this: Xyz; other: Xyz; tolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_XYZ.hxx".}
proc add*(this: var Xyz; other: Xyz) {.importcpp: "Add", header: "gp_XYZ.hxx".}
proc `+=`*(this: var Xyz; other: Xyz) {.importcpp: "(# += #)", header: "gp_XYZ.hxx".}
proc added*(this: Xyz; other: Xyz): Xyz {.noSideEffect, importcpp: "Added",
                                    header: "gp_XYZ.hxx".}
proc `+`*(this: Xyz; other: Xyz): Xyz {.noSideEffect, importcpp: "(# + #)",
                                  header: "gp_XYZ.hxx".}
proc cross*(this: var Xyz; right: Xyz) {.importcpp: "Cross", header: "gp_XYZ.hxx".}
proc `^=`*(this: var Xyz; right: Xyz) {.importcpp: "(# ^= #)", header: "gp_XYZ.hxx".}
proc crossed*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "Crossed",
                                      header: "gp_XYZ.hxx".}
proc `^`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "(# ^ #)",
                                  header: "gp_XYZ.hxx".}
proc crossMagnitude*(this: Xyz; right: Xyz): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: "gp_XYZ.hxx".}
proc crossSquareMagnitude*(this: Xyz; right: Xyz): StandardReal {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_XYZ.hxx".}
proc crossCross*(this: var Xyz; coord1: Xyz; coord2: Xyz) {.importcpp: "CrossCross",
    header: "gp_XYZ.hxx".}
proc crossCrossed*(this: Xyz; coord1: Xyz; coord2: Xyz): Xyz {.noSideEffect,
    importcpp: "CrossCrossed", header: "gp_XYZ.hxx".}
proc divide*(this: var Xyz; scalar: StandardReal) {.importcpp: "Divide",
    header: "gp_XYZ.hxx".}
proc `/=`*(this: var Xyz; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: "gp_XYZ.hxx".}
proc divided*(this: Xyz; scalar: StandardReal): Xyz {.noSideEffect,
    importcpp: "Divided", header: "gp_XYZ.hxx".}
proc `/`*(this: Xyz; scalar: StandardReal): Xyz {.noSideEffect, importcpp: "(# / #)",
    header: "gp_XYZ.hxx".}
proc dot*(this: Xyz; other: Xyz): StandardReal {.noSideEffect, importcpp: "Dot",
    header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; other: Xyz): StandardReal {.noSideEffect, importcpp: "(# * #)",
    header: "gp_XYZ.hxx".}
proc dotCross*(this: Xyz; coord1: Xyz; coord2: Xyz): StandardReal {.noSideEffect,
    importcpp: "DotCross", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; scalar: StandardReal) {.importcpp: "Multiply",
    header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; other: Xyz) {.importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; other: Xyz) {.importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiply*(this: var Xyz; matrix: Mat) {.importcpp: "Multiply", header: "gp_XYZ.hxx".}
proc `*=`*(this: var Xyz; matrix: Mat) {.importcpp: "(# *= #)", header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; scalar: StandardReal): Xyz {.noSideEffect,
    importcpp: "Multiplied", header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; scalar: StandardReal): Xyz {.noSideEffect, importcpp: "(# * #)",
    header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; other: Xyz): Xyz {.noSideEffect, importcpp: "Multiplied",
    header: "gp_XYZ.hxx".}
proc multiplied*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, importcpp: "Multiplied",
    header: "gp_XYZ.hxx".}
proc `*`*(this: Xyz; matrix: Mat): Xyz {.noSideEffect, importcpp: "(# * #)",
                                   header: "gp_XYZ.hxx".}
proc normalize*(this: var Xyz) {.importcpp: "Normalize", header: "gp_XYZ.hxx".}
proc normalized*(this: Xyz): Xyz {.noSideEffect, importcpp: "Normalized",
                               header: "gp_XYZ.hxx".}
proc reverse*(this: var Xyz) {.importcpp: "Reverse", header: "gp_XYZ.hxx".}
proc reversed*(this: Xyz): Xyz {.noSideEffect, importcpp: "Reversed",
                             header: "gp_XYZ.hxx".}
proc subtract*(this: var Xyz; right: Xyz) {.importcpp: "Subtract", header: "gp_XYZ.hxx".}
proc `-=`*(this: var Xyz; right: Xyz) {.importcpp: "(# -= #)", header: "gp_XYZ.hxx".}
proc subtracted*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "Subtracted",
    header: "gp_XYZ.hxx".}
proc `-`*(this: Xyz; right: Xyz): Xyz {.noSideEffect, importcpp: "(# - #)",
                                  header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: StandardReal; xyz1: Xyz; a2: StandardReal;
                   xyz2: Xyz; a3: StandardReal; xyz3: Xyz; xyz4: Xyz) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: StandardReal; xyz1: Xyz; a2: StandardReal;
                   xyz2: Xyz; a3: StandardReal; xyz3: Xyz) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: StandardReal; xyz1: Xyz; a2: StandardReal;
                   xyz2: Xyz; xyz3: Xyz) {.importcpp: "SetLinearForm",
                                       header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: StandardReal; xyz1: Xyz; a2: StandardReal;
                   xyz2: Xyz) {.importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; a1: StandardReal; xyz1: Xyz; xyz2: Xyz) {.
    importcpp: "SetLinearForm", header: "gp_XYZ.hxx".}
proc setLinearForm*(this: var Xyz; xyz1: Xyz; xyz2: Xyz) {.importcpp: "SetLinearForm",
    header: "gp_XYZ.hxx".}
proc dumpJson*(this: Xyz; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_XYZ.hxx".}
proc initFromJson*(this: var Xyz; theSStream: StandardSStream; theStreamPos: var int): StandardBoolean {.
    importcpp: "InitFromJson", header: "gp_XYZ.hxx".}