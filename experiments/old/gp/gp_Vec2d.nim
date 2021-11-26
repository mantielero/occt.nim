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
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  Vec2d* {.importcpp: "gp_Vec2d", header: "gp_Vec2d.hxx", bycopy.} = object


proc `new`*(this: var Vec2d; theSize: csize_t): pointer {.
    importcpp: "gp_Vec2d::operator new", header: "gp_Vec2d.hxx".}
proc `delete`*(this: var Vec2d; theAddress: pointer) {.
    importcpp: "gp_Vec2d::operator delete", header: "gp_Vec2d.hxx".}
proc `new[]`*(this: var Vec2d; theSize: csize_t): pointer {.
    importcpp: "gp_Vec2d::operator new[]", header: "gp_Vec2d.hxx".}
proc `delete[]`*(this: var Vec2d; theAddress: pointer) {.
    importcpp: "gp_Vec2d::operator delete[]", header: "gp_Vec2d.hxx".}
proc `new`*(this: var Vec2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Vec2d::operator new", header: "gp_Vec2d.hxx".}
proc `delete`*(this: var Vec2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Vec2d::operator delete", header: "gp_Vec2d.hxx".}
proc constructVec2d*(): Vec2d {.constructor, importcpp: "gp_Vec2d(@)",
                             header: "gp_Vec2d.hxx".}
proc constructVec2d*(v: Dir2d): Vec2d {.constructor, importcpp: "gp_Vec2d(@)",
                                    header: "gp_Vec2d.hxx".}
proc constructVec2d*(coord: Xy): Vec2d {.constructor, importcpp: "gp_Vec2d(@)",
                                     header: "gp_Vec2d.hxx".}
proc constructVec2d*(xv: StandardReal; yv: StandardReal): Vec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc constructVec2d*(p1: Pnt2d; p2: Pnt2d): Vec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: "gp_Vec2d.hxx".}
proc setCoord*(this: var Vec2d; index: int; xi: StandardReal) {.importcpp: "SetCoord",
    header: "gp_Vec2d.hxx".}
proc setCoord*(this: var Vec2d; xv: StandardReal; yv: StandardReal) {.
    importcpp: "SetCoord", header: "gp_Vec2d.hxx".}
proc setX*(this: var Vec2d; x: StandardReal) {.importcpp: "SetX", header: "gp_Vec2d.hxx".}
proc setY*(this: var Vec2d; y: StandardReal) {.importcpp: "SetY", header: "gp_Vec2d.hxx".}
proc setXY*(this: var Vec2d; coord: Xy) {.importcpp: "SetXY", header: "gp_Vec2d.hxx".}
proc coord*(this: Vec2d; index: int): StandardReal {.noSideEffect, importcpp: "Coord",
    header: "gp_Vec2d.hxx".}
proc coord*(this: Vec2d; xv: var StandardReal; yv: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: "gp_Vec2d.hxx".}
proc x*(this: Vec2d): StandardReal {.noSideEffect, importcpp: "X",
                                 header: "gp_Vec2d.hxx".}
proc y*(this: Vec2d): StandardReal {.noSideEffect, importcpp: "Y",
                                 header: "gp_Vec2d.hxx".}
proc xy*(this: Vec2d): Xy {.noSideEffect, importcpp: "XY", header: "gp_Vec2d.hxx".}
proc isEqual*(this: Vec2d; other: Vec2d; linearTolerance: StandardReal;
             angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: "gp_Vec2d.hxx".}
proc isNormal*(this: Vec2d; other: Vec2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Vec2d.hxx".}
proc isOpposite*(this: Vec2d; other: Vec2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Vec2d.hxx".}
proc isParallel*(this: Vec2d; other: Vec2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Vec2d.hxx".}
proc angle*(this: Vec2d; other: Vec2d): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "gp_Vec2d.hxx".}
proc magnitude*(this: Vec2d): StandardReal {.noSideEffect, importcpp: "Magnitude",
    header: "gp_Vec2d.hxx".}
proc squareMagnitude*(this: Vec2d): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: "gp_Vec2d.hxx".}
proc add*(this: var Vec2d; other: Vec2d) {.importcpp: "Add", header: "gp_Vec2d.hxx".}
proc `+=`*(this: var Vec2d; other: Vec2d) {.importcpp: "(# += #)",
                                      header: "gp_Vec2d.hxx".}
proc added*(this: Vec2d; other: Vec2d): Vec2d {.noSideEffect, importcpp: "Added",
    header: "gp_Vec2d.hxx".}
proc `+`*(this: Vec2d; other: Vec2d): Vec2d {.noSideEffect, importcpp: "(# + #)",
                                        header: "gp_Vec2d.hxx".}
proc crossed*(this: Vec2d; right: Vec2d): StandardReal {.noSideEffect,
    importcpp: "Crossed", header: "gp_Vec2d.hxx".}
proc `^`*(this: Vec2d; right: Vec2d): StandardReal {.noSideEffect,
    importcpp: "(# ^ #)", header: "gp_Vec2d.hxx".}
proc crossMagnitude*(this: Vec2d; right: Vec2d): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: "gp_Vec2d.hxx".}
proc crossSquareMagnitude*(this: Vec2d; right: Vec2d): StandardReal {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: "gp_Vec2d.hxx".}
proc divide*(this: var Vec2d; scalar: StandardReal) {.importcpp: "Divide",
    header: "gp_Vec2d.hxx".}
proc `/=`*(this: var Vec2d; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: "gp_Vec2d.hxx".}
proc divided*(this: Vec2d; scalar: StandardReal): Vec2d {.noSideEffect,
    importcpp: "Divided", header: "gp_Vec2d.hxx".}
proc `/`*(this: Vec2d; scalar: StandardReal): Vec2d {.noSideEffect,
    importcpp: "(# / #)", header: "gp_Vec2d.hxx".}
proc dot*(this: Vec2d; other: Vec2d): StandardReal {.noSideEffect, importcpp: "Dot",
    header: "gp_Vec2d.hxx".}
proc `*`*(this: Vec2d; other: Vec2d): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc getNormal*(this: Vec2d): Vec2d {.noSideEffect, importcpp: "GetNormal",
                                  header: "gp_Vec2d.hxx".}
proc multiply*(this: var Vec2d; scalar: StandardReal) {.importcpp: "Multiply",
    header: "gp_Vec2d.hxx".}
proc `*=`*(this: var Vec2d; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: "gp_Vec2d.hxx".}
proc multiplied*(this: Vec2d; scalar: StandardReal): Vec2d {.noSideEffect,
    importcpp: "Multiplied", header: "gp_Vec2d.hxx".}
proc `*`*(this: Vec2d; scalar: StandardReal): Vec2d {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Vec2d.hxx".}
proc normalize*(this: var Vec2d) {.importcpp: "Normalize", header: "gp_Vec2d.hxx".}
proc normalized*(this: Vec2d): Vec2d {.noSideEffect, importcpp: "Normalized",
                                   header: "gp_Vec2d.hxx".}
proc reverse*(this: var Vec2d) {.importcpp: "Reverse", header: "gp_Vec2d.hxx".}
proc reversed*(this: Vec2d): Vec2d {.noSideEffect, importcpp: "Reversed",
                                 header: "gp_Vec2d.hxx".}
proc `-`*(this: Vec2d): Vec2d {.noSideEffect, importcpp: "(- #)",
                            header: "gp_Vec2d.hxx".}
proc subtract*(this: var Vec2d; right: Vec2d) {.importcpp: "Subtract",
    header: "gp_Vec2d.hxx".}
proc `-=`*(this: var Vec2d; right: Vec2d) {.importcpp: "(# -= #)",
                                      header: "gp_Vec2d.hxx".}
proc subtracted*(this: Vec2d; right: Vec2d): Vec2d {.noSideEffect,
    importcpp: "Subtracted", header: "gp_Vec2d.hxx".}
proc `-`*(this: Vec2d; right: Vec2d): Vec2d {.noSideEffect, importcpp: "(# - #)",
                                        header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2d; a1: StandardReal; v1: Vec2d; a2: StandardReal;
                   v2: Vec2d; v3: Vec2d) {.importcpp: "SetLinearForm",
                                       header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2d; a1: StandardReal; v1: Vec2d; a2: StandardReal;
                   v2: Vec2d) {.importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2d; a1: StandardReal; v1: Vec2d; v2: Vec2d) {.
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc setLinearForm*(this: var Vec2d; left: Vec2d; right: Vec2d) {.
    importcpp: "SetLinearForm", header: "gp_Vec2d.hxx".}
proc mirror*(this: var Vec2d; v: Vec2d) {.importcpp: "Mirror", header: "gp_Vec2d.hxx".}
proc mirrored*(this: Vec2d; v: Vec2d): Vec2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Vec2d.hxx".}
proc mirror*(this: var Vec2d; a1: Ax2d) {.importcpp: "Mirror", header: "gp_Vec2d.hxx".}
proc mirrored*(this: Vec2d; a1: Ax2d): Vec2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Vec2d.hxx".}
proc rotate*(this: var Vec2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Vec2d.hxx".}
proc rotated*(this: Vec2d; ang: StandardReal): Vec2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Vec2d.hxx".}
proc scale*(this: var Vec2d; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Vec2d.hxx".}
proc scaled*(this: Vec2d; s: StandardReal): Vec2d {.noSideEffect, importcpp: "Scaled",
    header: "gp_Vec2d.hxx".}
proc transform*(this: var Vec2d; t: Trsf2d) {.importcpp: "Transform",
                                        header: "gp_Vec2d.hxx".}
proc transformed*(this: Vec2d; t: Trsf2d): Vec2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Vec2d.hxx".}