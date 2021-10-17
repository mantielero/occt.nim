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
  Cone* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object ## ! Creates an indefinite Cone.


proc newCone*(): Cone {.cdecl, constructor, importcpp: "gp_Cone(@)", dynlib: tkmath.}
proc newCone*(a3: Ax3; ang: cfloat; radius: cfloat): Cone {.cdecl, constructor,
    importcpp: "gp_Cone(@)", dynlib: tkmath.}
proc setAxis*(this: var Cone; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var Cone; loc: Pnt) {.cdecl, importcpp: "SetLocation",
                                        dynlib: tkmath.}
proc setPosition*(this: var Cone; a3: Ax3) {.cdecl, importcpp: "SetPosition",
                                       dynlib: tkmath.}
proc setRadius*(this: var Cone; r: cfloat) {.cdecl, importcpp: "SetRadius",
                                       dynlib: tkmath.}
proc setSemiAngle*(this: var Cone; ang: cfloat) {.cdecl, importcpp: "SetSemiAngle",
    dynlib: tkmath.}
proc apex*(this: Cone): Pnt {.noSideEffect, cdecl, importcpp: "Apex", dynlib: tkmath.}
proc uReverse*(this: var Cone) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc vReverse*(this: var Cone) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc direct*(this: Cone): bool {.noSideEffect, cdecl, importcpp: "Direct",
                             dynlib: tkmath.}
proc axis*(this: Cone): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc coefficients*(this: Cone; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc location*(this: Cone): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                              dynlib: tkmath.}
proc position*(this: Cone): Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                              dynlib: tkmath.}
proc refRadius*(this: Cone): cfloat {.noSideEffect, cdecl, importcpp: "RefRadius",
                                  dynlib: tkmath.}
proc semiAngle*(this: Cone): cfloat {.noSideEffect, cdecl, importcpp: "SemiAngle",
                                  dynlib: tkmath.}
proc xAxis*(this: Cone): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Cone): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc mirror*(this: var Cone; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Cone; p: Pnt): Cone {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     dynlib: tkmath.}
proc mirror*(this: var Cone; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Cone; a1: Ax1): Cone {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc mirror*(this: var Cone; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Cone; a2: Ax2): Cone {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc rotate*(this: var Cone; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Cone; a1: Ax1; ang: cfloat): Cone {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Cone; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Cone; p: Pnt; s: cfloat): Cone {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Cone; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Cone; t: Trsf): Cone {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Cone; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Cone; v: Vec): Cone {.noSideEffect, cdecl,
                                       importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Cone; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Cone; p1: Pnt; p2: Pnt): Cone {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}