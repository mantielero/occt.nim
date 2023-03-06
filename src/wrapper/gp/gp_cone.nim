import gp_types

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

proc cone*(): gp_Cone {.cdecl, constructor, importcpp: "gp_Cone(@)", header: "gp_Cone.hxx".}
proc cone*(a3: gp_Ax3; ang: cfloat; radius: cfloat): gp_Cone {.cdecl, constructor,
    importcpp: "gp_Cone(@)", header: "gp_Cone.hxx".}
proc setAxis*(this: var gp_Cone; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Cone.hxx".}
proc setLocation*(this: var gp_Cone; loc: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                        header: "gp_Cone.hxx".}
proc setPosition*(this: var gp_Cone; a3: gp_Ax3) {.cdecl, importcpp: "SetPosition",
                                       header: "gp_Cone.hxx".}
proc setRadius*(this: var gp_Cone; r: cfloat) {.cdecl, importcpp: "SetRadius",
                                       header: "gp_Cone.hxx".}
proc setSemiAngle*(this: var gp_Cone; ang: cfloat) {.cdecl, importcpp: "SetSemiAngle",
    header: "gp_Cone.hxx".}
proc apex*(this: gp_Cone): gp_Pnt {.noSideEffect, cdecl, importcpp: "Apex", header: "gp_Cone.hxx".}
proc uReverse*(this: var gp_Cone) {.cdecl, importcpp: "UReverse", header: "gp_Cone.hxx".}
proc vReverse*(this: var gp_Cone) {.cdecl, importcpp: "VReverse", header: "gp_Cone.hxx".}
proc direct*(this: gp_Cone): bool {.noSideEffect, cdecl, importcpp: "Direct",
                             header: "gp_Cone.hxx".}
proc axis*(this: gp_Cone): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Cone.hxx".}
proc coefficients*(this: gp_Cone; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Cone.hxx".}
proc location*(this: gp_Cone): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                              header: "gp_Cone.hxx".}
proc position*(this: gp_Cone): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                              header: "gp_Cone.hxx".}
proc refRadius*(this: gp_Cone): cfloat {.noSideEffect, cdecl, importcpp: "RefRadius",
                                  header: "gp_Cone.hxx".}
proc semiAngle*(this: gp_Cone): cfloat {.noSideEffect, cdecl, importcpp: "SemiAngle",
                                  header: "gp_Cone.hxx".}
proc xAxis*(this: gp_Cone): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Cone.hxx".}
proc yAxis*(this: gp_Cone): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Cone.hxx".}
proc mirror*(this: var gp_Cone; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: gp_Cone; p: gp_Pnt): gp_Cone {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     header: "gp_Cone.hxx".}
proc mirror*(this: var gp_Cone; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: gp_Cone; a1: gp_Ax1): gp_Cone {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Cone.hxx".}
proc mirror*(this: var gp_Cone; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: gp_Cone; a2: gp_Ax2): gp_Cone {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Cone.hxx".}
proc rotate*(this: var gp_Cone; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Cone.hxx".}
proc rotated*(this: gp_Cone; a1: gp_Ax1; ang: cfloat): gp_Cone {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Cone.hxx".}
proc scale*(this: var gp_Cone; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Cone.hxx".}
proc scaled*(this: gp_Cone; p: gp_Pnt; s: cfloat): gp_Cone {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Cone.hxx".}
proc transform*(this: var gp_Cone; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Cone.hxx".}
proc transformed*(this: gp_Cone; t: gp_Trsf): gp_Cone {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Cone.hxx".}
proc translate*(this: var gp_Cone; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Cone.hxx".}
proc translated*(this: gp_Cone; v: gp_Vec): gp_Cone {.noSideEffect, cdecl,
                                       importcpp: "Translated", header: "gp_Cone.hxx".}
proc translate*(this: var gp_Cone; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Cone.hxx".}
proc translated*(this: gp_Cone; p1: gp_Pnt; p2: gp_Pnt): gp_Cone {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cone.hxx".}
