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
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  Vec* {.importcpp: "gp_Vec", header: "gp_Vec.hxx", bycopy.} = object


proc `new`*(this: var Vec; theSize: csize_t): pointer {.
    importcpp: "gp_Vec::operator new", header: "gp_Vec.hxx".}
proc `delete`*(this: var Vec; theAddress: pointer) {.
    importcpp: "gp_Vec::operator delete", header: "gp_Vec.hxx".}
proc `new[]`*(this: var Vec; theSize: csize_t): pointer {.
    importcpp: "gp_Vec::operator new[]", header: "gp_Vec.hxx".}
proc `delete[]`*(this: var Vec; theAddress: pointer) {.
    importcpp: "gp_Vec::operator delete[]", header: "gp_Vec.hxx".}
proc `new`*(this: var Vec; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Vec::operator new", header: "gp_Vec.hxx".}
proc `delete`*(this: var Vec; a2: pointer; a3: pointer) {.
    importcpp: "gp_Vec::operator delete", header: "gp_Vec.hxx".}
proc constructVec*(): Vec {.constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc constructVec*(v: Dir): Vec {.constructor, importcpp: "gp_Vec(@)",
                              header: "gp_Vec.hxx".}
proc constructVec*(coord: Xyz): Vec {.constructor, importcpp: "gp_Vec(@)",
                                  header: "gp_Vec.hxx".}
proc constructVec*(xv: StandardReal; yv: StandardReal; zv: StandardReal): Vec {.
    constructor, importcpp: "gp_Vec(@)", header: "gp_Vec.hxx".}
proc constructVec*(p1: Pnt; p2: Pnt): Vec {.constructor, importcpp: "gp_Vec(@)",
                                      header: "gp_Vec.hxx".}
proc setCoord*(this: var Vec; index: int; xi: StandardReal) {.importcpp: "SetCoord",
    header: "gp_Vec.hxx".}
proc setCoord*(this: var Vec; xv: StandardReal; yv: StandardReal; zv: StandardReal) {.
    importcpp: "SetCoord", header: "gp_Vec.hxx".}
proc setX*(this: var Vec; x: StandardReal) {.importcpp: "SetX", header: "gp_Vec.hxx".}
proc setY*(this: var Vec; y: StandardReal) {.importcpp: "SetY", header: "gp_Vec.hxx".}
proc setZ*(this: var Vec; z: StandardReal) {.importcpp: "SetZ", header: "gp_Vec.hxx".}
proc setXYZ*(this: var Vec; coord: Xyz) {.importcpp: "SetXYZ", header: "gp_Vec.hxx".}
proc coord*(this: Vec; index: int): StandardReal {.noSideEffect, importcpp: "Coord",
    header: "gp_Vec.hxx".}
proc coord*(this: Vec; xv: var StandardReal; yv: var StandardReal; zv: var StandardReal) {.
    noSideEffect, importcpp: "Coord", header: "gp_Vec.hxx".}
proc x*(this: Vec): StandardReal {.noSideEffect, importcpp: "X", header: "gp_Vec.hxx".}
proc y*(this: Vec): StandardReal {.noSideEffect, importcpp: "Y", header: "gp_Vec.hxx".}
proc z*(this: Vec): StandardReal {.noSideEffect, importcpp: "Z", header: "gp_Vec.hxx".}
proc xyz*(this: Vec): Xyz {.noSideEffect, importcpp: "XYZ", header: "gp_Vec.hxx".}
proc isEqual*(this: Vec; other: Vec; linearTolerance: StandardReal;
             angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Vec.hxx".}
proc isNormal*(this: Vec; other: Vec; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Vec.hxx".}
proc isOpposite*(this: Vec; other: Vec; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Vec.hxx".}
proc isParallel*(this: Vec; other: Vec; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Vec.hxx".}
proc angle*(this: Vec; other: Vec): StandardReal {.noSideEffect, importcpp: "Angle",
    header: "gp_Vec.hxx".}
proc angleWithRef*(this: Vec; other: Vec; vRef: Vec): StandardReal {.noSideEffect,
    importcpp: "AngleWithRef", header: "gp_Vec.hxx".}
proc magnitude*(this: Vec): StandardReal {.noSideEffect, importcpp: "Magnitude",
                                       header: "gp_Vec.hxx".}
proc squareMagnitude*(this: Vec): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: "gp_Vec.hxx".}
proc add*(this: var Vec; other: Vec) {.importcpp: "Add", header: "gp_Vec.hxx".}
proc `+=`*(this: var Vec; other: Vec) {.importcpp: "(# += #)", header: "gp_Vec.hxx".}
proc added*(this: Vec; other: Vec): Vec {.noSideEffect, importcpp: "Added",
                                    header: "gp_Vec.hxx".}
proc `+`*(this: Vec; other: Vec): Vec {.noSideEffect, importcpp: "(# + #)",
                                  header: "gp_Vec.hxx".}
proc subtract*(this: var Vec; right: Vec) {.importcpp: "Subtract", header: "gp_Vec.hxx".}
proc `-=`*(this: var Vec; right: Vec) {.importcpp: "(# -= #)", header: "gp_Vec.hxx".}
proc subtracted*(this: Vec; right: Vec): Vec {.noSideEffect, importcpp: "Subtracted",
    header: "gp_Vec.hxx".}
proc `-`*(this: Vec; right: Vec): Vec {.noSideEffect, importcpp: "(# - #)",
                                  header: "gp_Vec.hxx".}
proc multiply*(this: var Vec; scalar: StandardReal) {.importcpp: "Multiply",
    header: "gp_Vec.hxx".}
proc `*=`*(this: var Vec; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: "gp_Vec.hxx".}
proc multiplied*(this: Vec; scalar: StandardReal): Vec {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Vec.hxx".}
proc `*`*(this: Vec; scalar: StandardReal): Vec {.noSideEffect, importcpp: "(# * #)",
    header: "gp_Vec.hxx".}
proc divide*(this: var Vec; scalar: StandardReal) {.importcpp: "Divide",
    header: "gp_Vec.hxx".}
proc `/=`*(this: var Vec; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: "gp_Vec.hxx".}
proc divided*(this: Vec; scalar: StandardReal): Vec {.noSideEffect,
    importcpp: "Divided", header: "gp_Vec.hxx".}
proc `/`*(this: Vec; scalar: StandardReal): Vec {.noSideEffect, importcpp: "(# / #)",
    header: "gp_Vec.hxx".}
proc cross*(this: var Vec; right: Vec) {.importcpp: "Cross", header: "gp_Vec.hxx".}
proc `^=`*(this: var Vec; right: Vec) {.importcpp: "(# ^= #)", header: "gp_Vec.hxx".}
proc crossed*(this: Vec; right: Vec): Vec {.noSideEffect, importcpp: "Crossed",
                                      header: "gp_Vec.hxx".}
proc `^`*(this: Vec; right: Vec): Vec {.noSideEffect, importcpp: "(# ^ #)",
                                  header: "gp_Vec.hxx".}
proc crossMagnitude*(this: Vec; right: Vec): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: "gp_Vec.hxx".}
proc crossSquareMagnitude*(this: Vec; right: Vec): StandardReal {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec.hxx".}
proc crossCross*(this: var Vec; v1: Vec; v2: Vec) {.importcpp: "CrossCross",
    header: "gp_Vec.hxx".}
proc crossCrossed*(this: Vec; v1: Vec; v2: Vec): Vec {.noSideEffect,
    importcpp: "CrossCrossed", header: "gp_Vec.hxx".}
proc dot*(this: Vec; other: Vec): StandardReal {.noSideEffect, importcpp: "Dot",
    header: "gp_Vec.hxx".}
proc `*`*(this: Vec; other: Vec): StandardReal {.noSideEffect, importcpp: "(# * #)",
    header: "gp_Vec.hxx".}
proc dotCross*(this: Vec; v1: Vec; v2: Vec): StandardReal {.noSideEffect,
    importcpp: "DotCross", header: "gp_Vec.hxx".}
proc normalize*(this: var Vec) {.importcpp: "Normalize", header: "gp_Vec.hxx".}
proc normalized*(this: Vec): Vec {.noSideEffect, importcpp: "Normalized",
                               header: "gp_Vec.hxx".}
proc reverse*(this: var Vec) {.importcpp: "Reverse", header: "gp_Vec.hxx".}
proc reversed*(this: Vec): Vec {.noSideEffect, importcpp: "Reversed",
                             header: "gp_Vec.hxx".}
proc `-`*(this: Vec): Vec {.noSideEffect, importcpp: "(- #)", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: StandardReal; v1: Vec; a2: StandardReal; v2: Vec;
                   a3: StandardReal; v3: Vec; v4: Vec) {.importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: StandardReal; v1: Vec; a2: StandardReal; v2: Vec;
                   a3: StandardReal; v3: Vec) {.importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: StandardReal; v1: Vec; a2: StandardReal; v2: Vec;
                   v3: Vec) {.importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: StandardReal; v1: Vec; a2: StandardReal; v2: Vec) {.
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; a1: StandardReal; v1: Vec; v2: Vec) {.
    importcpp: "SetLinearForm", header: "gp_Vec.hxx".}
proc setLinearForm*(this: var Vec; v1: Vec; v2: Vec) {.importcpp: "SetLinearForm",
    header: "gp_Vec.hxx".}
proc mirror*(this: var Vec; v: Vec) {.importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: Vec; v: Vec): Vec {.noSideEffect, importcpp: "Mirrored",
                                   header: "gp_Vec.hxx".}
proc mirror*(this: var Vec; a1: Ax1) {.importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: Vec; a1: Ax1): Vec {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc mirror*(this: var Vec; a2: Ax2) {.importcpp: "Mirror", header: "gp_Vec.hxx".}
proc mirrored*(this: Vec; a2: Ax2): Vec {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Vec.hxx".}
proc rotate*(this: var Vec; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Vec.hxx".}
proc rotated*(this: Vec; a1: Ax1; ang: StandardReal): Vec {.noSideEffect,
    importcpp: "Rotated", header: "gp_Vec.hxx".}
proc scale*(this: var Vec; s: StandardReal) {.importcpp: "Scale", header: "gp_Vec.hxx".}
proc scaled*(this: Vec; s: StandardReal): Vec {.noSideEffect, importcpp: "Scaled",
    header: "gp_Vec.hxx".}
proc transform*(this: var Vec; t: Trsf) {.importcpp: "Transform", header: "gp_Vec.hxx".}
proc transformed*(this: Vec; t: Trsf): Vec {.noSideEffect, importcpp: "Transformed",
                                       header: "gp_Vec.hxx".}
proc dumpJson*(this: Vec; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Vec.hxx".}