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
  Cone* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object


proc `new`*(this: var Cone; theSize: csize_t): pointer {.
    importcpp: "gp_Cone::operator new", header: "gp_Cone.hxx".}
proc `delete`*(this: var Cone; theAddress: pointer) {.
    importcpp: "gp_Cone::operator delete", header: "gp_Cone.hxx".}
proc `new[]`*(this: var Cone; theSize: csize_t): pointer {.
    importcpp: "gp_Cone::operator new[]", header: "gp_Cone.hxx".}
proc `delete[]`*(this: var Cone; theAddress: pointer) {.
    importcpp: "gp_Cone::operator delete[]", header: "gp_Cone.hxx".}
proc `new`*(this: var Cone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Cone::operator new", header: "gp_Cone.hxx".}
proc `delete`*(this: var Cone; a2: pointer; a3: pointer) {.
    importcpp: "gp_Cone::operator delete", header: "gp_Cone.hxx".}
proc constructCone*(): Cone {.constructor, importcpp: "gp_Cone(@)",
                           header: "gp_Cone.hxx".}
proc constructCone*(a3: Ax3; ang: StandardReal; radius: StandardReal): Cone {.
    constructor, importcpp: "gp_Cone(@)", header: "gp_Cone.hxx".}
proc setAxis*(this: var Cone; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Cone.hxx".}
proc setLocation*(this: var Cone; loc: Pnt) {.importcpp: "SetLocation",
                                        header: "gp_Cone.hxx".}
proc setPosition*(this: var Cone; a3: Ax3) {.importcpp: "SetPosition",
                                       header: "gp_Cone.hxx".}
proc setRadius*(this: var Cone; r: StandardReal) {.importcpp: "SetRadius",
    header: "gp_Cone.hxx".}
proc setSemiAngle*(this: var Cone; ang: StandardReal) {.importcpp: "SetSemiAngle",
    header: "gp_Cone.hxx".}
proc apex*(this: Cone): Pnt {.noSideEffect, importcpp: "Apex", header: "gp_Cone.hxx".}
proc uReverse*(this: var Cone) {.importcpp: "UReverse", header: "gp_Cone.hxx".}
proc vReverse*(this: var Cone) {.importcpp: "VReverse", header: "gp_Cone.hxx".}
proc direct*(this: Cone): StandardBoolean {.noSideEffect, importcpp: "Direct",
                                        header: "gp_Cone.hxx".}
proc axis*(this: Cone): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Cone.hxx".}
proc coefficients*(this: Cone; a1: var StandardReal; a2: var StandardReal;
                  a3: var StandardReal; b1: var StandardReal; b2: var StandardReal;
                  b3: var StandardReal; c1: var StandardReal; c2: var StandardReal;
                  c3: var StandardReal; d: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Cone.hxx".}
proc location*(this: Cone): Pnt {.noSideEffect, importcpp: "Location",
                              header: "gp_Cone.hxx".}
proc position*(this: Cone): Ax3 {.noSideEffect, importcpp: "Position",
                              header: "gp_Cone.hxx".}
proc refRadius*(this: Cone): StandardReal {.noSideEffect, importcpp: "RefRadius",
                                        header: "gp_Cone.hxx".}
proc semiAngle*(this: Cone): StandardReal {.noSideEffect, importcpp: "SemiAngle",
                                        header: "gp_Cone.hxx".}
proc xAxis*(this: Cone): Ax1 {.noSideEffect, importcpp: "XAxis", header: "gp_Cone.hxx".}
proc yAxis*(this: Cone): Ax1 {.noSideEffect, importcpp: "YAxis", header: "gp_Cone.hxx".}
proc mirror*(this: var Cone; p: Pnt) {.importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: Cone; p: Pnt): Cone {.noSideEffect, importcpp: "Mirrored",
                                     header: "gp_Cone.hxx".}
proc mirror*(this: var Cone; a1: Ax1) {.importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: Cone; a1: Ax1): Cone {.noSideEffect, importcpp: "Mirrored",
                                      header: "gp_Cone.hxx".}
proc mirror*(this: var Cone; a2: Ax2) {.importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: Cone; a2: Ax2): Cone {.noSideEffect, importcpp: "Mirrored",
                                      header: "gp_Cone.hxx".}
proc rotate*(this: var Cone; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Cone.hxx".}
proc rotated*(this: Cone; a1: Ax1; ang: StandardReal): Cone {.noSideEffect,
    importcpp: "Rotated", header: "gp_Cone.hxx".}
proc scale*(this: var Cone; p: Pnt; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Cone.hxx".}
proc scaled*(this: Cone; p: Pnt; s: StandardReal): Cone {.noSideEffect,
    importcpp: "Scaled", header: "gp_Cone.hxx".}
proc transform*(this: var Cone; t: Trsf) {.importcpp: "Transform", header: "gp_Cone.hxx".}
proc transformed*(this: Cone; t: Trsf): Cone {.noSideEffect, importcpp: "Transformed",
    header: "gp_Cone.hxx".}
proc translate*(this: var Cone; v: Vec) {.importcpp: "Translate", header: "gp_Cone.hxx".}
proc translated*(this: Cone; v: Vec): Cone {.noSideEffect, importcpp: "Translated",
                                       header: "gp_Cone.hxx".}
proc translate*(this: var Cone; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Cone.hxx".}
proc translated*(this: Cone; p1: Pnt; p2: Pnt): Cone {.noSideEffect,
    importcpp: "Translated", header: "gp_Cone.hxx".}