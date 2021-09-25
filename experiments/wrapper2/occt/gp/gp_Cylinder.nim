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


proc constructCylinder*(): Cylinder {.constructor, importcpp: "gp_Cylinder(@)",
                                   header: "gp_Cylinder.hxx".}
proc constructCylinder*(a3: Ax3; radius: float): Cylinder {.constructor,
    importcpp: "gp_Cylinder(@)", header: "gp_Cylinder.hxx".}
proc setAxis*(this: var Cylinder; a1: Ax1) {.importcpp: "SetAxis",
                                       header: "gp_Cylinder.hxx".}
proc setLocation*(this: var Cylinder; loc: Pnt) {.importcpp: "SetLocation",
    header: "gp_Cylinder.hxx".}
proc setPosition*(this: var Cylinder; a3: Ax3) {.importcpp: "SetPosition",
    header: "gp_Cylinder.hxx".}
proc setRadius*(this: var Cylinder; r: float) {.importcpp: "SetRadius",
    header: "gp_Cylinder.hxx".}
proc uReverse*(this: var Cylinder) {.importcpp: "UReverse", header: "gp_Cylinder.hxx".}
proc vReverse*(this: var Cylinder) {.importcpp: "VReverse", header: "gp_Cylinder.hxx".}
proc direct*(this: Cylinder): bool {.noSideEffect, importcpp: "Direct",
                                 header: "gp_Cylinder.hxx".}
proc axis*(this: Cylinder): Ax1 {.noSideEffect, importcpp: "Axis",
                              header: "gp_Cylinder.hxx".}
proc coefficients*(this: Cylinder; a1: var float; a2: var float; a3: var float;
                  b1: var float; b2: var float; b3: var float; c1: var float; c2: var float;
                  c3: var float; d: var float) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Cylinder.hxx".}
proc location*(this: Cylinder): Pnt {.noSideEffect, importcpp: "Location",
                                  header: "gp_Cylinder.hxx".}
proc position*(this: Cylinder): Ax3 {.noSideEffect, importcpp: "Position",
                                  header: "gp_Cylinder.hxx".}
proc radius*(this: Cylinder): float {.noSideEffect, importcpp: "Radius",
                                  header: "gp_Cylinder.hxx".}
proc xAxis*(this: Cylinder): Ax1 {.noSideEffect, importcpp: "XAxis",
                               header: "gp_Cylinder.hxx".}
proc yAxis*(this: Cylinder): Ax1 {.noSideEffect, importcpp: "YAxis",
                               header: "gp_Cylinder.hxx".}
proc mirror*(this: var Cylinder; p: Pnt) {.importcpp: "Mirror",
                                     header: "gp_Cylinder.hxx".}
proc mirrored*(this: Cylinder; p: Pnt): Cylinder {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Cylinder.hxx".}
proc mirror*(this: var Cylinder; a1: Ax1) {.importcpp: "Mirror",
                                      header: "gp_Cylinder.hxx".}
proc mirrored*(this: Cylinder; a1: Ax1): Cylinder {.noSideEffect,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc mirror*(this: var Cylinder; a2: Ax2) {.importcpp: "Mirror",
                                      header: "gp_Cylinder.hxx".}
proc mirrored*(this: Cylinder; a2: Ax2): Cylinder {.noSideEffect,
    importcpp: "Mirrored", header: "gp_Cylinder.hxx".}
proc rotate*(this: var Cylinder; a1: Ax1; ang: float) {.importcpp: "Rotate",
    header: "gp_Cylinder.hxx".}
proc rotated*(this: Cylinder; a1: Ax1; ang: float): Cylinder {.noSideEffect,
    importcpp: "Rotated", header: "gp_Cylinder.hxx".}
proc scale*(this: var Cylinder; p: Pnt; s: float) {.importcpp: "Scale",
    header: "gp_Cylinder.hxx".}
proc scaled*(this: Cylinder; p: Pnt; s: float): Cylinder {.noSideEffect,
    importcpp: "Scaled", header: "gp_Cylinder.hxx".}
proc transform*(this: var Cylinder; t: Trsf) {.importcpp: "Transform",
    header: "gp_Cylinder.hxx".}
proc transformed*(this: Cylinder; t: Trsf): Cylinder {.noSideEffect,
    importcpp: "Transformed", header: "gp_Cylinder.hxx".}
proc translate*(this: var Cylinder; v: Vec) {.importcpp: "Translate",
                                        header: "gp_Cylinder.hxx".}
proc translated*(this: Cylinder; v: Vec): Cylinder {.noSideEffect,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
proc translate*(this: var Cylinder; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Cylinder.hxx".}
proc translated*(this: Cylinder; p1: Pnt; p2: Pnt): Cylinder {.noSideEffect,
    importcpp: "Translated", header: "gp_Cylinder.hxx".}
