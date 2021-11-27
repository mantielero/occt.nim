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
  Cylinder* {.importcpp: "gp_Cylinder", header: "gp_Cylinder.hxx", bycopy.} = object ## !
                                                                             ## Creates a
                                                                             ## indefinite
                                                                             ## cylinder.


proc newCylinder*(): Cylinder {.cdecl, constructor, importcpp: "gp_Cylinder(@)",
                             header: "gp_Cylinder.hxx".}
proc newCylinder*(a3: Ax3; radius: cfloat): Cylinder {.cdecl, constructor,
    importcpp: "gp_Cylinder(@)", header: "gp_Cylinder.hxx".}
proc setAxis*(this: var Cylinder; a1: Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Cylinder.hxx".}
proc setLocation*(this: var Cylinder; loc: Pnt) {.cdecl, importcpp: "SetLocation",
    header: "gp_Cylinder.hxx".}
proc setPosition*(this: var Cylinder; a3: Ax3) {.cdecl, importcpp: "SetPosition",
    header: "gp_Cylinder.hxx".}
proc setRadius*(this: var Cylinder; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Cylinder.hxx".}
proc uReverse*(this: var Cylinder) {.cdecl, importcpp: "UReverse", header: "gp_Cylinder.hxx".}
proc vReverse*(this: var Cylinder) {.cdecl, importcpp: "VReverse", header: "gp_Cylinder.hxx".}
proc direct*(this: Cylinder): bool {.noSideEffect, cdecl, importcpp: "Direct",
                                 header: "gp_Cylinder.hxx".}
proc axis*(this: Cylinder): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Cylinder.hxx".}
proc coefficients*(this: Cylinder; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Cylinder.hxx".}
proc location*(this: Cylinder): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Cylinder.hxx".}
proc position*(this: Cylinder): Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                                  header: "gp_Cylinder.hxx".}
proc radius*(this: Cylinder): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                   header: "gp_Cylinder.hxx".}
proc xAxis*(this: Cylinder): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis",
                               header: "gp_Cylinder.hxx".}
proc yAxis*(this: Cylinder): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis",
                               header: "gp_Cylinder.hxx".}
proc mirror*(this: var Cylinder; p: Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: Cylinder; p: Pnt): Cylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var Cylinder; a1: Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: Cylinder; a1: Ax1): Cylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var Cylinder; a2: Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: Cylinder; a2: Ax2): Cylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc rotate*(this: var Cylinder; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Cylinder.hxx".}
proc rotated*(this: Cylinder; a1: Ax1; ang: cfloat): Cylinder {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Cylinder.hxx".}
proc scale*(this: var Cylinder; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Cylinder.hxx".}
proc scaled*(this: Cylinder; p: Pnt; s: cfloat): Cylinder {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Cylinder.hxx".}
proc transform*(this: var Cylinder; t: Trsf) {.cdecl, importcpp: "Transform",
    header: "gp_Cylinder.hxx".}
proc transformed*(this: Cylinder; t: Trsf): Cylinder {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Cylinder.hxx".}
proc translate*(this: var Cylinder; v: Vec) {.cdecl, importcpp: "Translate",
                                        header: "gp_Cylinder.hxx".}
proc translated*(this: Cylinder; v: Vec): Cylinder {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
proc translate*(this: var Cylinder; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Cylinder.hxx".}
proc translated*(this: Cylinder; p1: Pnt; p2: Pnt): Cylinder {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}