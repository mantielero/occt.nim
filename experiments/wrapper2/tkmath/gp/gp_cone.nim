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
  GpCone* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object ## ! Creates an indefinite Cone.


proc constructGpCone*(): GpCone {.cdecl, constructor, importcpp: "gp_Cone(@)",
                               dynlib: tkmath.}
proc constructGpCone*(a3: GpAx3; ang: cfloat; radius: cfloat): GpCone {.cdecl,
    constructor, importcpp: "gp_Cone(@)", dynlib: tkmath.}
proc setAxis*(this: var GpCone; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GpCone; loc: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GpCone; a3: GpAx3) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc setRadius*(this: var GpCone; r: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc setSemiAngle*(this: var GpCone; ang: cfloat) {.cdecl, importcpp: "SetSemiAngle",
    dynlib: tkmath.}
proc apex*(this: GpCone): GpPnt {.noSideEffect, cdecl, importcpp: "Apex", dynlib: tkmath.}
proc uReverse*(this: var GpCone) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var GpCone) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: GpCone): bool {.noSideEffect, cdecl, importcpp: "Direct",
                               dynlib: tkmath.}
proc axis*(this: GpCone): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc coefficients*(this: GpCone; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc location*(this: GpCone): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc position*(this: GpCone): GpAx3 {.noSideEffect, cdecl, importcpp: "Position",
                                  dynlib: tkmath.}
proc refRadius*(this: GpCone): cfloat {.noSideEffect, cdecl, importcpp: "RefRadius",
                                    dynlib: tkmath.}
proc semiAngle*(this: GpCone): cfloat {.noSideEffect, cdecl, importcpp: "SemiAngle",
                                    dynlib: tkmath.}
proc xAxis*(this: GpCone): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                               dynlib: tkmath.}
proc yAxis*(this: GpCone): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                               dynlib: tkmath.}
proc mirror*(this: var GpCone; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCone; p: GpPnt): GpCone {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCone; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCone; a1: GpAx1): GpCone {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCone; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCone; a2: GpAx2): GpCone {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpCone; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpCone; a1: GpAx1; ang: cfloat): GpCone {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpCone; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpCone; p: GpPnt; s: cfloat): GpCone {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpCone; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpCone; t: GpTrsf): GpCone {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpCone; v: GpVec) {.cdecl, importcpp: "Translate",
                                        dynlib: tkmath.}
proc translated*(this: GpCone; v: GpVec): GpCone {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpCone; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpCone; p1: GpPnt; p2: GpPnt): GpCone {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}