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
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpTorus* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object ## ! creates an indefinite Torus.


proc constructGpTorus*(): GpTorus {.cdecl, constructor, importcpp: "gp_Torus(@)",
                                 dynlib: tkmath.}
proc constructGpTorus*(a3: GpAx3; majorRadius: cfloat; minorRadius: cfloat): GpTorus {.
    cdecl, constructor, importcpp: "gp_Torus(@)", dynlib: tkmath.}
proc setAxis*(this: var GpTorus; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GpTorus; loc: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var GpTorus; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var GpTorus; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setPosition*(this: var GpTorus; a3: GpAx3) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc area*(this: GpTorus): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                dynlib: tkmath.}
proc uReverse*(this: var GpTorus) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var GpTorus) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: GpTorus): bool {.noSideEffect, cdecl, importcpp: "Direct",
                                dynlib: tkmath.}
proc axis*(this: GpTorus): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis",
                               dynlib: tkmath.}
proc coefficients*(this: GpTorus; coef: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc location*(this: GpTorus): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                   dynlib: tkmath.}
proc position*(this: GpTorus): GpAx3 {.noSideEffect, cdecl, importcpp: "Position",
                                   dynlib: tkmath.}
proc majorRadius*(this: GpTorus): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: GpTorus): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MinorRadius", dynlib: tkmath.}
proc volume*(this: GpTorus): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                  dynlib: tkmath.}
proc xAxis*(this: GpTorus): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                                dynlib: tkmath.}
proc yAxis*(this: GpTorus): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                                dynlib: tkmath.}
proc mirror*(this: var GpTorus; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpTorus; p: GpPnt): GpTorus {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpTorus; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpTorus; a1: GpAx1): GpTorus {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpTorus; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpTorus; a2: GpAx2): GpTorus {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpTorus; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpTorus; a1: GpAx1; ang: cfloat): GpTorus {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpTorus; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpTorus; p: GpPnt; s: cfloat): GpTorus {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpTorus; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpTorus; t: GpTrsf): GpTorus {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpTorus; v: GpVec) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpTorus; v: GpVec): GpTorus {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpTorus; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpTorus; p1: GpPnt; p2: GpPnt): GpTorus {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}