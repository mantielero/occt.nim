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
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Torus* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object ## ! creates an indefinite Torus.


proc constructTorus*(): Torus {.constructor, importcpp: "gp_Torus(@)",
                             header: "gp_Torus.hxx".}
proc constructTorus*(a3: Ax3; majorRadius: float; minorRadius: float): Torus {.
    constructor, importcpp: "gp_Torus(@)", header: "gp_Torus.hxx".}
proc setAxis*(this: var Torus; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Torus.hxx".}
proc setLocation*(this: var Torus; loc: Pnt) {.importcpp: "SetLocation",
    header: "gp_Torus.hxx".}
proc setMajorRadius*(this: var Torus; majorRadius: float) {.
    importcpp: "SetMajorRadius", header: "gp_Torus.hxx".}
proc setMinorRadius*(this: var Torus; minorRadius: float) {.
    importcpp: "SetMinorRadius", header: "gp_Torus.hxx".}
proc setPosition*(this: var Torus; a3: Ax3) {.importcpp: "SetPosition",
                                        header: "gp_Torus.hxx".}
proc area*(this: Torus): float {.noSideEffect, importcpp: "Area",
                             header: "gp_Torus.hxx".}
proc uReverse*(this: var Torus) {.importcpp: "UReverse", header: "gp_Torus.hxx".}
proc vReverse*(this: var Torus) {.importcpp: "VReverse", header: "gp_Torus.hxx".}
proc direct*(this: Torus): bool {.noSideEffect, importcpp: "Direct",
                              header: "gp_Torus.hxx".}
proc axis*(this: Torus): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Torus.hxx".}
proc coefficients*(this: Torus; coef: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Torus.hxx".}
proc location*(this: Torus): Pnt {.noSideEffect, importcpp: "Location",
                               header: "gp_Torus.hxx".}
proc position*(this: Torus): Ax3 {.noSideEffect, importcpp: "Position",
                               header: "gp_Torus.hxx".}
proc majorRadius*(this: Torus): float {.noSideEffect, importcpp: "MajorRadius",
                                    header: "gp_Torus.hxx".}
proc minorRadius*(this: Torus): float {.noSideEffect, importcpp: "MinorRadius",
                                    header: "gp_Torus.hxx".}
proc volume*(this: Torus): float {.noSideEffect, importcpp: "Volume",
                               header: "gp_Torus.hxx".}
proc xAxis*(this: Torus): Ax1 {.noSideEffect, importcpp: "XAxis",
                            header: "gp_Torus.hxx".}
proc yAxis*(this: Torus): Ax1 {.noSideEffect, importcpp: "YAxis",
                            header: "gp_Torus.hxx".}
proc mirror*(this: var Torus; p: Pnt) {.importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: Torus; p: Pnt): Torus {.noSideEffect, importcpp: "Mirrored",
                                       header: "gp_Torus.hxx".}
proc mirror*(this: var Torus; a1: Ax1) {.importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: Torus; a1: Ax1): Torus {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Torus.hxx".}
proc mirror*(this: var Torus; a2: Ax2) {.importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: Torus; a2: Ax2): Torus {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Torus.hxx".}
proc rotate*(this: var Torus; a1: Ax1; ang: float) {.importcpp: "Rotate",
    header: "gp_Torus.hxx".}
proc rotated*(this: Torus; a1: Ax1; ang: float): Torus {.noSideEffect,
    importcpp: "Rotated", header: "gp_Torus.hxx".}
proc scale*(this: var Torus; p: Pnt; s: float) {.importcpp: "Scale",
    header: "gp_Torus.hxx".}
proc scaled*(this: Torus; p: Pnt; s: float): Torus {.noSideEffect, importcpp: "Scaled",
    header: "gp_Torus.hxx".}
proc transform*(this: var Torus; t: Trsf) {.importcpp: "Transform",
                                      header: "gp_Torus.hxx".}
proc transformed*(this: Torus; t: Trsf): Torus {.noSideEffect,
    importcpp: "Transformed", header: "gp_Torus.hxx".}
proc translate*(this: var Torus; v: Vec) {.importcpp: "Translate",
                                     header: "gp_Torus.hxx".}
proc translated*(this: Torus; v: Vec): Torus {.noSideEffect, importcpp: "Translated",
    header: "gp_Torus.hxx".}
proc translate*(this: var Torus; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Torus.hxx".}
proc translated*(this: Torus; p1: Pnt; p2: Pnt): Torus {.noSideEffect,
    importcpp: "Translated", header: "gp_Torus.hxx".}
