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
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpCylinder* {.importcpp: "gp_Cylinder", header: "gp_Cylinder.hxx", bycopy.} = object ## !
                                                                               ## Creates a
                                                                               ## indefinite
                                                                               ## cylinder.


proc constructGpCylinder*(): GpCylinder {.cdecl, constructor,
                                       importcpp: "gp_Cylinder(@)", dynlib: tkmath.}
proc constructGpCylinder*(a3: GpAx3; radius: cfloat): GpCylinder {.cdecl, constructor,
    importcpp: "gp_Cylinder(@)", dynlib: tkmath.}
proc setAxis*(this: var GpCylinder; a1: GpAx1) {.cdecl, importcpp: "SetAxis",
    dynlib: tkmath.}
proc setLocation*(this: var GpCylinder; loc: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpCylinder; a3: GpAx3) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc setRadius*(this: var GpCylinder; r: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc uReverse*(this: var GpCylinder) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var GpCylinder) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: GpCylinder): bool {.noSideEffect, cdecl, importcpp: "Direct",
                                   dynlib: tkmath.}
proc axis*(this: GpCylinder): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis",
                                  dynlib: tkmath.}
proc coefficients*(this: GpCylinder; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc location*(this: GpCylinder): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                      dynlib: tkmath.}
proc position*(this: GpCylinder): GpAx3 {.noSideEffect, cdecl, importcpp: "Position",
                                      dynlib: tkmath.}
proc radius*(this: GpCylinder): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                     dynlib: tkmath.}
proc xAxis*(this: GpCylinder): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                                   dynlib: tkmath.}
proc yAxis*(this: GpCylinder): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                                   dynlib: tkmath.}
proc mirror*(this: var GpCylinder; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCylinder; p: GpPnt): GpCylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCylinder; a1: GpAx1) {.cdecl, importcpp: "Mirror",
    dynlib: tkmath.}
proc mirrored*(this: GpCylinder; a1: GpAx1): GpCylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCylinder; a2: GpAx2) {.cdecl, importcpp: "Mirror",
    dynlib: tkmath.}
proc mirrored*(this: GpCylinder; a2: GpAx2): GpCylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpCylinder; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpCylinder; a1: GpAx1; ang: cfloat): GpCylinder {.noSideEffect,
    cdecl, importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpCylinder; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpCylinder; p: GpPnt; s: cfloat): GpCylinder {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpCylinder; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpCylinder; t: GpTrsf): GpCylinder {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpCylinder; v: GpVec) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpCylinder; v: GpVec): GpCylinder {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpCylinder; p1: GpPnt; p2: GpPnt) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpCylinder; p1: GpPnt; p2: GpPnt): GpCylinder {.noSideEffect,
    cdecl, importcpp: "Translated", dynlib: tkmath.}