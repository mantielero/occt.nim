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

proc cylinder*(): CylinderObj {.cdecl, constructor, importcpp: "gp_Cylinder(@)",
                             header: "gp_Cylinder.hxx".}
proc cylinder*(a3: Ax3Obj; radius: cfloat): CylinderObj {.cdecl, constructor,
    importcpp: "gp_Cylinder(@)", header: "gp_Cylinder.hxx".}
proc setAxis*(this: var CylinderObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Cylinder.hxx".}
proc setLocation*(this: var CylinderObj; loc: PntObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Cylinder.hxx".}
proc setPosition*(this: var CylinderObj; a3: Ax3Obj) {.cdecl, importcpp: "SetPosition",
    header: "gp_Cylinder.hxx".}
proc setRadius*(this: var CylinderObj; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Cylinder.hxx".}
proc uReverse*(this: var CylinderObj) {.cdecl, importcpp: "UReverse", header: "gp_Cylinder.hxx".}
proc vReverse*(this: var CylinderObj) {.cdecl, importcpp: "VReverse", header: "gp_Cylinder.hxx".}
proc direct*(this: CylinderObj): bool {.noSideEffect, cdecl, importcpp: "Direct",
                                 header: "gp_Cylinder.hxx".}
proc axis*(this: CylinderObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Cylinder.hxx".}
proc coefficients*(this: CylinderObj; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Cylinder.hxx".}
proc location*(this: CylinderObj): PntObj {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Cylinder.hxx".}
proc position*(this: CylinderObj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Position",
                                  header: "gp_Cylinder.hxx".}
proc radius*(this: CylinderObj): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                   header: "gp_Cylinder.hxx".}
proc xAxis*(this: CylinderObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis",
                               header: "gp_Cylinder.hxx".}
proc yAxis*(this: CylinderObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis",
                               header: "gp_Cylinder.hxx".}
proc mirror*(this: var CylinderObj; p: PntObj) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: CylinderObj; p: PntObj): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var CylinderObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: CylinderObj; a1: Ax1Obj): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var CylinderObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: CylinderObj; a2: Ax2Obj): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc rotate*(this: var CylinderObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Cylinder.hxx".}
proc rotated*(this: CylinderObj; a1: Ax1Obj; ang: cfloat): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Cylinder.hxx".}
proc scale*(this: var CylinderObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Cylinder.hxx".}
proc scaled*(this: CylinderObj; p: PntObj; s: cfloat): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Cylinder.hxx".}
proc transform*(this: var CylinderObj; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "gp_Cylinder.hxx".}
proc transformed*(this: CylinderObj; t: TrsfObj): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Cylinder.hxx".}
proc translate*(this: var CylinderObj; v: VecObj) {.cdecl, importcpp: "Translate",
                                        header: "gp_Cylinder.hxx".}
proc translated*(this: CylinderObj; v: VecObj): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
proc translate*(this: var CylinderObj; p1: PntObj; p2: PntObj) {.cdecl, importcpp: "Translate",
    header: "gp_Cylinder.hxx".}
proc translated*(this: CylinderObj; p1: PntObj; p2: PntObj): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
