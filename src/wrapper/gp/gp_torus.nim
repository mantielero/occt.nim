#{.experimental: "callOperator".}
import gp_types
import ../tcolstd/tcolstd_types
#import ../standard/standard_types

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

proc torus*(): gp_Torus {.cdecl, constructor, importcpp: "gp_Torus(@)", header: "gp_Torus.hxx".}
proc torus*(a3: gp_Ax3; majorRadius: cfloat; minorRadius: cfloat): gp_Torus {.cdecl,
    constructor, importcpp: "gp_Torus(@)", header: "gp_Torus.hxx".}
proc setAxis*(this: var gp_Torus; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Torus.hxx".}
proc setLocation*(this: var gp_Torus; loc: gp_Pnt) {.cdecl, importcpp: "SetLocation",
    header: "gp_Torus.hxx".}
proc setMajorRadius*(this: var gp_Torus; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Torus.hxx".}
proc setMinorRadius*(this: var gp_Torus; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Torus.hxx".}
proc setPosition*(this: var gp_Torus; a3: gp_Ax3) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Torus.hxx".}
proc area*(this: gp_Torus): cfloat {.noSideEffect, cdecl, importcpp: "Area", header: "gp_Torus.hxx".}
proc uReverse*(this: var gp_Torus) {.cdecl, importcpp: "UReverse", header: "gp_Torus.hxx".}
proc vReverse*(this: var gp_Torus) {.cdecl, importcpp: "VReverse", header: "gp_Torus.hxx".}
proc direct*(this: gp_Torus): bool {.noSideEffect, cdecl, importcpp: "Direct",
                              header: "gp_Torus.hxx".}
proc axis*(this: gp_Torus): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Torus.hxx".}
proc coefficients*(this: gp_Torus; coef: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Torus.hxx".}
proc location*(this: gp_Torus): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Torus.hxx".}
proc position*(this: gp_Torus): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Torus.hxx".}
proc majorRadius*(this: gp_Torus): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", header: "gp_Torus.hxx".}
proc minorRadius*(this: gp_Torus): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", header: "gp_Torus.hxx".}
proc volume*(this: gp_Torus): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                header: "gp_Torus.hxx".}
proc xAxis*(this: gp_Torus): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Torus.hxx".}
proc yAxis*(this: gp_Torus): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Torus.hxx".}
proc mirror*(this: var gp_Torus; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: gp_Torus; p: gp_Pnt): gp_Torus {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Torus.hxx".}
proc mirror*(this: var gp_Torus; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: gp_Torus; a1: gp_Ax1): gp_Torus {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Torus.hxx".}
proc mirror*(this: var gp_Torus; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: gp_Torus; a2: gp_Ax2): gp_Torus {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Torus.hxx".}
proc rotate*(this: var gp_Torus; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Torus.hxx".}
proc rotated*(this: gp_Torus; a1: gp_Ax1; ang: cfloat): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Torus.hxx".}
proc scale*(this: var gp_Torus; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Torus.hxx".}
proc scaled*(this: gp_Torus; p: gp_Pnt; s: cfloat): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Torus.hxx".}
proc transform*(this: var gp_Torus; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Torus.hxx".}
proc transformed*(this: gp_Torus; t: gp_Trsf): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Torus.hxx".}
proc translate*(this: var gp_Torus; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Torus.hxx".}
proc translated*(this: gp_Torus; v: gp_Vec): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Torus.hxx".}
proc translate*(this: var gp_Torus; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Torus.hxx".}
proc translated*(this: gp_Torus; p1: gp_Pnt; p2: gp_Pnt): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Torus.hxx".}
