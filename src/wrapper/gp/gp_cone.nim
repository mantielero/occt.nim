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

proc cone*(): ConeObj {.cdecl, constructor, importcpp: "gp_Cone(@)", header: "gp_Cone.hxx".}
proc cone*(a3: Ax3Obj; ang: cfloat; radius: cfloat): ConeObj {.cdecl, constructor,
    importcpp: "gp_Cone(@)", header: "gp_Cone.hxx".}
proc setAxis*(this: var ConeObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Cone.hxx".}
proc setLocation*(this: var ConeObj; loc: PntObj) {.cdecl, importcpp: "SetLocation",
                                        header: "gp_Cone.hxx".}
proc setPosition*(this: var ConeObj; a3: Ax3Obj) {.cdecl, importcpp: "SetPosition",
                                       header: "gp_Cone.hxx".}
proc setRadius*(this: var ConeObj; r: cfloat) {.cdecl, importcpp: "SetRadius",
                                       header: "gp_Cone.hxx".}
proc setSemiAngle*(this: var ConeObj; ang: cfloat) {.cdecl, importcpp: "SetSemiAngle",
    header: "gp_Cone.hxx".}
proc apex*(this: ConeObj): PntObj {.noSideEffect, cdecl, importcpp: "Apex", header: "gp_Cone.hxx".}
proc uReverse*(this: var ConeObj) {.cdecl, importcpp: "UReverse", header: "gp_Cone.hxx".}
proc vReverse*(this: var ConeObj) {.cdecl, importcpp: "VReverse", header: "gp_Cone.hxx".}
proc direct*(this: ConeObj): bool {.noSideEffect, cdecl, importcpp: "Direct",
                             header: "gp_Cone.hxx".}
proc axis*(this: ConeObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Cone.hxx".}
proc coefficients*(this: ConeObj; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Cone.hxx".}
proc location*(this: ConeObj): PntObj {.noSideEffect, cdecl, importcpp: "Location",
                              header: "gp_Cone.hxx".}
proc position*(this: ConeObj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Position",
                              header: "gp_Cone.hxx".}
proc refRadius*(this: ConeObj): cfloat {.noSideEffect, cdecl, importcpp: "RefRadius",
                                  header: "gp_Cone.hxx".}
proc semiAngle*(this: ConeObj): cfloat {.noSideEffect, cdecl, importcpp: "SemiAngle",
                                  header: "gp_Cone.hxx".}
proc xAxis*(this: ConeObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Cone.hxx".}
proc yAxis*(this: ConeObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Cone.hxx".}
proc mirror*(this: var ConeObj; p: PntObj) {.cdecl, importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: ConeObj; p: PntObj): ConeObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     header: "gp_Cone.hxx".}
proc mirror*(this: var ConeObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: ConeObj; a1: Ax1Obj): ConeObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Cone.hxx".}
proc mirror*(this: var ConeObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Cone.hxx".}
proc mirrored*(this: ConeObj; a2: Ax2Obj): ConeObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Cone.hxx".}
proc rotate*(this: var ConeObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Cone.hxx".}
proc rotated*(this: ConeObj; a1: Ax1Obj; ang: cfloat): ConeObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Cone.hxx".}
proc scale*(this: var ConeObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Cone.hxx".}
proc scaled*(this: ConeObj; p: PntObj; s: cfloat): ConeObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Cone.hxx".}
proc transform*(this: var ConeObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Cone.hxx".}
proc transformed*(this: ConeObj; t: TrsfObj): ConeObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Cone.hxx".}
proc translate*(this: var ConeObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Cone.hxx".}
proc translated*(this: ConeObj; v: VecObj): ConeObj {.noSideEffect, cdecl,
                                       importcpp: "Translated", header: "gp_Cone.hxx".}
proc translate*(this: var ConeObj; p1: PntObj; p2: PntObj) {.cdecl, importcpp: "Translate",
    header: "gp_Cone.hxx".}
proc translated*(this: ConeObj; p1: PntObj; p2: PntObj): ConeObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cone.hxx".}
