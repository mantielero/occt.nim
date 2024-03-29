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

proc cylinder*(): gp_Cylinder {.cdecl, constructor, importcpp: "gp_Cylinder(@)",
                             header: "gp_Cylinder.hxx".}
proc cylinder*(a3: gp_Ax3; radius: cfloat): gp_Cylinder {.cdecl, constructor,
    importcpp: "gp_Cylinder(@)", header: "gp_Cylinder.hxx".}
proc setAxis*(this: var gp_Cylinder; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Cylinder.hxx".}
proc setLocation*(this: var gp_Cylinder; loc: gp_Pnt) {.cdecl, importcpp: "SetLocation",
    header: "gp_Cylinder.hxx".}
proc setPosition*(this: var gp_Cylinder; a3: gp_Ax3) {.cdecl, importcpp: "SetPosition",
    header: "gp_Cylinder.hxx".}
proc setRadius*(this: var gp_Cylinder; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Cylinder.hxx".}
proc uReverse*(this: var gp_Cylinder) {.cdecl, importcpp: "UReverse", header: "gp_Cylinder.hxx".}
proc vReverse*(this: var gp_Cylinder) {.cdecl, importcpp: "VReverse", header: "gp_Cylinder.hxx".}
proc direct*(this: gp_Cylinder): bool {.noSideEffect, cdecl, importcpp: "Direct",
                                 header: "gp_Cylinder.hxx".}
proc axis*(this: gp_Cylinder): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Cylinder.hxx".}
proc coefficients*(this: gp_Cylinder; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Cylinder.hxx".}
proc location*(this: gp_Cylinder): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Cylinder.hxx".}
proc position*(this: gp_Cylinder): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                                  header: "gp_Cylinder.hxx".}
proc radius*(this: gp_Cylinder): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                   header: "gp_Cylinder.hxx".}
proc xAxis*(this: gp_Cylinder): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis",
                               header: "gp_Cylinder.hxx".}
proc yAxis*(this: gp_Cylinder): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis",
                               header: "gp_Cylinder.hxx".}
proc mirror*(this: var gp_Cylinder; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: gp_Cylinder; p: gp_Pnt): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var gp_Cylinder; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: gp_Cylinder; a1: gp_Ax1): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var gp_Cylinder; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Cylinder.hxx".}
proc mirrored*(this: gp_Cylinder; a2: gp_Ax2): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc rotate*(this: var gp_Cylinder; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Cylinder.hxx".}
proc rotated*(this: gp_Cylinder; a1: gp_Ax1; ang: cfloat): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Cylinder.hxx".}
proc scale*(this: var gp_Cylinder; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Cylinder.hxx".}
proc scaled*(this: gp_Cylinder; p: gp_Pnt; s: cfloat): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Cylinder.hxx".}
proc transform*(this: var gp_Cylinder; t: gp_Trsf) {.cdecl, importcpp: "Transform",
    header: "gp_Cylinder.hxx".}
proc transformed*(this: gp_Cylinder; t: gp_Trsf): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Cylinder.hxx".}
proc translate*(this: var gp_Cylinder; v: gp_Vec) {.cdecl, importcpp: "Translate",
                                        header: "gp_Cylinder.hxx".}
proc translated*(this: gp_Cylinder; v: gp_Vec): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
proc translate*(this: var gp_Cylinder; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Cylinder.hxx".}
proc translated*(this: gp_Cylinder; p1: gp_Pnt; p2: gp_Pnt): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
