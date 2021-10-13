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
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpPln* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object ## ! Creates a plane coincident with OXY plane of the
                                                                ## ! reference coordinate system.


proc constructGpPln*(): GpPln {.cdecl, constructor, importcpp: "gp_Pln(@)",
                             dynlib: tkmath.}
proc constructGpPln*(a3: GpAx3): GpPln {.cdecl, constructor, importcpp: "gp_Pln(@)",
                                     dynlib: tkmath.}
proc constructGpPln*(p: GpPnt; v: GpDir): GpPln {.cdecl, constructor,
    importcpp: "gp_Pln(@)", dynlib: tkmath.}
proc constructGpPln*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): GpPln {.cdecl,
    constructor, importcpp: "gp_Pln(@)", dynlib: tkmath.}
proc coefficients*(this: GpPln; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", dynlib: tkmath.}
proc setAxis*(this: var GpPln; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GpPln; loc: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpPln; a3: GpAx3) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc uReverse*(this: var GpPln) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var GpPln) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: GpPln): bool {.noSideEffect, cdecl, importcpp: "Direct",
                              dynlib: tkmath.}
proc axis*(this: GpPln): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc location*(this: GpPln): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                 dynlib: tkmath.}
proc position*(this: GpPln): GpAx3 {.noSideEffect, cdecl, importcpp: "Position",
                                 dynlib: tkmath.}
proc distance*(this: GpPln; p: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc distance*(this: GpPln; L: GpLin): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc distance*(this: GpPln; other: GpPln): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpPln; p: GpPnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: GpPln; L: GpLin): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: GpPln; other: GpPln): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc xAxis*(this: GpPln): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                              dynlib: tkmath.}
proc yAxis*(this: GpPln): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                              dynlib: tkmath.}
proc contains*(this: GpPln; p: GpPnt; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc contains*(this: GpPln; L: GpLin; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Contains", dynlib: tkmath.}
proc mirror*(this: var GpPln; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPln; p: GpPnt): GpPln {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpPln; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPln; a1: GpAx1): GpPln {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpPln; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpPln; a2: GpAx2): GpPln {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpPln; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpPln; a1: GpAx1; ang: cfloat): GpPln {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpPln; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpPln; p: GpPnt; s: cfloat): GpPln {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpPln; t: GpTrsf) {.cdecl, importcpp: "Transform",
                                        dynlib: tkmath.}
proc transformed*(this: GpPln; t: GpTrsf): GpPln {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpPln; v: GpVec) {.cdecl, importcpp: "Translate",
                                       dynlib: tkmath.}
proc translated*(this: GpPln; v: GpVec): GpPln {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpPln; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpPln; p1: GpPnt; p2: GpPnt): GpPln {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc dumpJson*(this: GpPln; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}