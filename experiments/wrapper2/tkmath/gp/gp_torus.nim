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
  Torus* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object ## ! creates an indefinite Torus.


proc newTorus*(): Torus {.cdecl, constructor, importcpp: "gp_Torus(@)", dynlib: tkmath.}
proc newTorus*(a3: Ax3; majorRadius: cfloat; minorRadius: cfloat): Torus {.cdecl,
    constructor, importcpp: "gp_Torus(@)", dynlib: tkmath.}
proc setAxis*(this: var Torus; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var Torus; loc: Pnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var Torus; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var Torus; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setPosition*(this: var Torus; a3: Ax3) {.cdecl, importcpp: "SetPosition",
                                        dynlib: tkmath.}
proc area*(this: Torus): cfloat {.noSideEffect, cdecl, importcpp: "Area", dynlib: tkmath.}
proc uReverse*(this: var Torus) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var Torus) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: Torus): bool {.noSideEffect, cdecl, importcpp: "Direct",
                              dynlib: tkmath.}
proc axis*(this: Torus): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc coefficients*(this: Torus; coef: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc location*(this: Torus): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               dynlib: tkmath.}
proc position*(this: Torus): Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                               dynlib: tkmath.}
proc majorRadius*(this: Torus): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: Torus): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", dynlib: tkmath.}
proc volume*(this: Torus): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                dynlib: tkmath.}
proc xAxis*(this: Torus): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Torus): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc mirror*(this: var Torus; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Torus; p: Pnt): Torus {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       dynlib: tkmath.}
proc mirror*(this: var Torus; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Torus; a1: Ax1): Torus {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Torus; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Torus; a2: Ax2): Torus {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Torus; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Torus; a1: Ax1; ang: cfloat): Torus {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Torus; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Torus; p: Pnt; s: cfloat): Torus {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Torus; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Torus; t: Trsf): Torus {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Torus; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Torus; v: Vec): Torus {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Torus; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Torus; p1: Pnt; p2: Pnt): Torus {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}