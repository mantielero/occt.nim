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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc sphere*(): SphereObj {.cdecl, constructor, importcpp: "gp_Sphere(@)",
                         header: "gp_Sphere.hxx".}
proc sphere*(a3: Ax3Obj; radius: cfloat): SphereObj {.cdecl, constructor,
    importcpp: "gp_Sphere(@)", header: "gp_Sphere.hxx".}
proc setLocation*(this: var SphereObj; loc: gp_Pnt) {.cdecl, importcpp: "SetLocation",
    header: "gp_Sphere.hxx".}
proc setPosition*(this: var SphereObj; a3: Ax3Obj) {.cdecl, importcpp: "SetPosition",
    header: "gp_Sphere.hxx".}
proc setRadius*(this: var SphereObj; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Sphere.hxx".}
proc area*(this: SphereObj): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                               header: "gp_Sphere.hxx".}
proc coefficients*(this: SphereObj; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Sphere.hxx".}
proc uReverse*(this: var SphereObj) {.cdecl, importcpp: "UReverse", header: "gp_Sphere.hxx".}
proc vReverse*(this: var SphereObj) {.cdecl, importcpp: "VReverse", header: "gp_Sphere.hxx".}
proc direct*(this: SphereObj): bool {.noSideEffect, cdecl, importcpp: "Direct",
                               header: "gp_Sphere.hxx".}
proc location*(this: SphereObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                                header: "gp_Sphere.hxx".}
proc position*(this: SphereObj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Position",
                                header: "gp_Sphere.hxx".}
proc radius*(this: SphereObj): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                 header: "gp_Sphere.hxx".}
proc volume*(this: SphereObj): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                 header: "gp_Sphere.hxx".}
proc xAxis*(this: SphereObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Sphere.hxx".}
proc yAxis*(this: SphereObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Sphere.hxx".}
proc mirror*(this: var SphereObj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: SphereObj; p: gp_Pnt): SphereObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Sphere.hxx".}
proc mirror*(this: var SphereObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: SphereObj; a1: Ax1Obj): SphereObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Sphere.hxx".}
proc mirror*(this: var SphereObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: SphereObj; a2: Ax2Obj): SphereObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Sphere.hxx".}
proc rotate*(this: var SphereObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Sphere.hxx".}
proc rotated*(this: SphereObj; a1: Ax1Obj; ang: cfloat): SphereObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Sphere.hxx".}
proc scale*(this: var SphereObj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Sphere.hxx".}
proc scaled*(this: SphereObj; p: gp_Pnt; s: cfloat): SphereObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Sphere.hxx".}
proc transform*(this: var SphereObj; t: TrsfObj) {.cdecl, importcpp: "Transform",
                                       header: "gp_Sphere.hxx".}
proc transformed*(this: SphereObj; t: TrsfObj): SphereObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Sphere.hxx".}
proc translate*(this: var SphereObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Sphere.hxx".}
proc translated*(this: SphereObj; v: VecObj): SphereObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Sphere.hxx".}
proc translate*(this: var SphereObj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Sphere.hxx".}
proc translated*(this: SphereObj; p1: gp_Pnt; p2: gp_Pnt): SphereObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Sphere.hxx".}
