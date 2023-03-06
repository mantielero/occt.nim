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

{.push header: "gp_Pnt.hxx".}

# Constructors
proc pnt*(): gp_Pnt {.cdecl, constructor, importcpp: "gp_Pnt()".}
proc pnt*(coord: XyzObj): gp_Pnt {.cdecl, constructor, importcpp: "gp_Pnt(@)".}
proc pnt*(xp: cfloat; yp: cfloat; zp: cfloat): gp_Pnt {.cdecl, constructor,
    importcpp: "gp_Pnt(@)".}

proc setCoord*(this: var gp_Pnt; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord".}
proc setCoord*(this: var gp_Pnt; xp: cfloat; yp: cfloat; zp: cfloat) {.cdecl, importcpp: "SetCoord".}
proc setX*(this: var gp_Pnt; x: cfloat) {.cdecl, importcpp: "SetX".}
proc setY*(this: var gp_Pnt; y: cfloat) {.cdecl, importcpp: "SetY".}
proc setZ*(this: var gp_Pnt; z: cfloat) {.cdecl, importcpp: "SetZ".}
proc setXYZ*(this: var gp_Pnt; coord: XyzObj) {.cdecl, importcpp: "SetXYZ".}
proc coord*(this: gp_Pnt; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord".}
proc coord*(this: gp_Pnt; xp: var cfloat; yp: var cfloat; zp: var cfloat) {.noSideEffect, cdecl,importcpp: "Coord".}
proc x*(this: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "X".}
proc y*(this: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Y".}
proc z*(this: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Z".}
proc xyz*(this: gp_Pnt): XyzObj {.noSideEffect, cdecl, importcpp: "XYZ".}
proc coord*(this: gp_Pnt): XyzObj {.noSideEffect, cdecl, importcpp: "Coord".}
proc changeCoord*(this: var gp_Pnt): var XyzObj {.cdecl, importcpp: "ChangeCoord".}
proc baryCenter*(this: var gp_Pnt; alpha: cfloat; p: gp_Pnt; beta: cfloat) {.cdecl,importcpp: "BaryCenter".}
proc isEqual*(this: gp_Pnt; other: gp_Pnt; linearTolerance: cfloat): bool {.noSideEffect,cdecl, importcpp: "IsEqual".}
proc distance*(this: gp_Pnt; other: gp_Pnt): cfloat {.noSideEffect, cdecl,importcpp: "Distance".}
proc squareDistance*(this: gp_Pnt; other: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "SquareDistance".}
proc mirror*(this: var gp_Pnt; p: gp_Pnt) {.cdecl, importcpp: "Mirror".}
proc mirrored*(this: gp_Pnt; p: gp_Pnt): gp_Pnt {.noSideEffect, cdecl, importcpp: "Mirrored".}
proc mirror*(this: var gp_Pnt; a1: Ax1Obj) {.cdecl, importcpp: "Mirror".}
proc mirrored*(this: gp_Pnt; a1: Ax1Obj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Mirrored".}
proc mirror*(this: var gp_Pnt; a2: Ax2Obj) {.cdecl, importcpp: "Mirror".}
proc mirrored*(this: gp_Pnt; a2: Ax2Obj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Mirrored".}
proc rotate*(this: var gp_Pnt; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate".}
proc rotated*(this: gp_Pnt; a1: Ax1Obj; ang: cfloat): gp_Pnt {.noSideEffect, cdecl,importcpp: "Rotated".}
proc scale*(this: var gp_Pnt; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale".}
proc scaled*(this: gp_Pnt; p: gp_Pnt; s: cfloat): gp_Pnt {.noSideEffect, cdecl,importcpp: "Scaled".}
proc transform*(this: var gp_Pnt; t: gp_Trsf) {.cdecl, importcpp: "Transform".}
proc transformed*(this: gp_Pnt; t: gp_Trsf): gp_Pnt {.noSideEffect, cdecl,importcpp: "Transformed".}
proc translate*(this: var gp_Pnt; v: gp_Vec) {.cdecl, importcpp: "Translate".}
proc translated*(this: gp_Pnt; v: gp_Vec): gp_Pnt {.noSideEffect, cdecl, importcpp: "Translated".}
proc translate*(this: var gp_Pnt; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate".}
proc translated*(this: gp_Pnt; p1: gp_Pnt; p2: gp_Pnt): gp_Pnt {.noSideEffect, cdecl, importcpp: "Translated".}
proc dumpJson*(this: gp_Pnt; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson".}
proc initFromJson*(this: var gp_Pnt; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson".}

{.pop.}
