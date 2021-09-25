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
type
  Sphere* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object ## ! Creates an
                                                                       ## indefinite sphere.


proc constructSphere*(): Sphere {.constructor, importcpp: "gp_Sphere(@)",
                               header: "gp_Sphere.hxx".}
proc constructSphere*(a3: Ax3; radius: float): Sphere {.constructor,
    importcpp: "gp_Sphere(@)", header: "gp_Sphere.hxx".}
proc setLocation*(this: var Sphere; loc: Pnt) {.importcpp: "SetLocation",
    header: "gp_Sphere.hxx".}
proc setPosition*(this: var Sphere; a3: Ax3) {.importcpp: "SetPosition",
    header: "gp_Sphere.hxx".}
proc setRadius*(this: var Sphere; r: float) {.importcpp: "SetRadius",
                                        header: "gp_Sphere.hxx".}
proc area*(this: Sphere): float {.noSideEffect, importcpp: "Area",
                              header: "gp_Sphere.hxx".}
proc coefficients*(this: Sphere; a1: var float; a2: var float; a3: var float; b1: var float;
                  b2: var float; b3: var float; c1: var float; c2: var float; c3: var float;
                  d: var float) {.noSideEffect, importcpp: "Coefficients",
                               header: "gp_Sphere.hxx".}
proc uReverse*(this: var Sphere) {.importcpp: "UReverse", header: "gp_Sphere.hxx".}
proc vReverse*(this: var Sphere) {.importcpp: "VReverse", header: "gp_Sphere.hxx".}
proc direct*(this: Sphere): bool {.noSideEffect, importcpp: "Direct",
                               header: "gp_Sphere.hxx".}
proc location*(this: Sphere): Pnt {.noSideEffect, importcpp: "Location",
                                header: "gp_Sphere.hxx".}
proc position*(this: Sphere): Ax3 {.noSideEffect, importcpp: "Position",
                                header: "gp_Sphere.hxx".}
proc radius*(this: Sphere): float {.noSideEffect, importcpp: "Radius",
                                header: "gp_Sphere.hxx".}
proc volume*(this: Sphere): float {.noSideEffect, importcpp: "Volume",
                                header: "gp_Sphere.hxx".}
proc xAxis*(this: Sphere): Ax1 {.noSideEffect, importcpp: "XAxis",
                             header: "gp_Sphere.hxx".}
proc yAxis*(this: Sphere): Ax1 {.noSideEffect, importcpp: "YAxis",
                             header: "gp_Sphere.hxx".}
proc mirror*(this: var Sphere; p: Pnt) {.importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: Sphere; p: Pnt): Sphere {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Sphere.hxx".}
proc mirror*(this: var Sphere; a1: Ax1) {.importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: Sphere; a1: Ax1): Sphere {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Sphere.hxx".}
proc mirror*(this: var Sphere; a2: Ax2) {.importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: Sphere; a2: Ax2): Sphere {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Sphere.hxx".}
proc rotate*(this: var Sphere; a1: Ax1; ang: float) {.importcpp: "Rotate",
    header: "gp_Sphere.hxx".}
proc rotated*(this: Sphere; a1: Ax1; ang: float): Sphere {.noSideEffect,
    importcpp: "Rotated", header: "gp_Sphere.hxx".}
proc scale*(this: var Sphere; p: Pnt; s: float) {.importcpp: "Scale",
    header: "gp_Sphere.hxx".}
proc scaled*(this: Sphere; p: Pnt; s: float): Sphere {.noSideEffect, importcpp: "Scaled",
    header: "gp_Sphere.hxx".}
proc transform*(this: var Sphere; t: Trsf) {.importcpp: "Transform",
                                       header: "gp_Sphere.hxx".}
proc transformed*(this: Sphere; t: Trsf): Sphere {.noSideEffect,
    importcpp: "Transformed", header: "gp_Sphere.hxx".}
proc translate*(this: var Sphere; v: Vec) {.importcpp: "Translate",
                                      header: "gp_Sphere.hxx".}
proc translated*(this: Sphere; v: Vec): Sphere {.noSideEffect, importcpp: "Translated",
    header: "gp_Sphere.hxx".}
proc translate*(this: var Sphere; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Sphere.hxx".}
proc translated*(this: Sphere; p1: Pnt; p2: Pnt): Sphere {.noSideEffect,
    importcpp: "Translated", header: "gp_Sphere.hxx".}
