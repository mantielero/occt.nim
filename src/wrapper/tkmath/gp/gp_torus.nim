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
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc torus*(): TorusObj {.cdecl, constructor, importcpp: "gp_Torus(@)", header: "gp_Torus.hxx".}
proc torus*(a3: Ax3Obj; majorRadius: cfloat; minorRadius: cfloat): TorusObj {.cdecl,
    constructor, importcpp: "gp_Torus(@)", header: "gp_Torus.hxx".}
proc setAxis*(this: var TorusObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Torus.hxx".}
proc setLocation*(this: var TorusObj; loc: PntObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Torus.hxx".}
proc setMajorRadius*(this: var TorusObj; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Torus.hxx".}
proc setMinorRadius*(this: var TorusObj; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Torus.hxx".}
proc setPosition*(this: var TorusObj; a3: Ax3Obj) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Torus.hxx".}
proc area*(this: TorusObj): cfloat {.noSideEffect, cdecl, importcpp: "Area", header: "gp_Torus.hxx".}
proc uReverse*(this: var TorusObj) {.cdecl, importcpp: "UReverse", header: "gp_Torus.hxx".}
proc vReverse*(this: var TorusObj) {.cdecl, importcpp: "VReverse", header: "gp_Torus.hxx".}
proc direct*(this: TorusObj): bool {.noSideEffect, cdecl, importcpp: "Direct",
                              header: "gp_Torus.hxx".}
proc axis*(this: TorusObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Torus.hxx".}
proc coefficients*(this: TorusObj; coef: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Torus.hxx".}
proc location*(this: TorusObj): PntObj {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Torus.hxx".}
proc position*(this: TorusObj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Torus.hxx".}
proc majorRadius*(this: TorusObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", header: "gp_Torus.hxx".}
proc minorRadius*(this: TorusObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", header: "gp_Torus.hxx".}
proc volume*(this: TorusObj): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                header: "gp_Torus.hxx".}
proc xAxis*(this: TorusObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Torus.hxx".}
proc yAxis*(this: TorusObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Torus.hxx".}
proc mirror*(this: var TorusObj; p: PntObj) {.cdecl, importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: TorusObj; p: PntObj): TorusObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Torus.hxx".}
proc mirror*(this: var TorusObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: TorusObj; a1: Ax1Obj): TorusObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Torus.hxx".}
proc mirror*(this: var TorusObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Torus.hxx".}
proc mirrored*(this: TorusObj; a2: Ax2Obj): TorusObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Torus.hxx".}
proc rotate*(this: var TorusObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Torus.hxx".}
proc rotated*(this: TorusObj; a1: Ax1Obj; ang: cfloat): TorusObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Torus.hxx".}
proc scale*(this: var TorusObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Torus.hxx".}
proc scaled*(this: TorusObj; p: PntObj; s: cfloat): TorusObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Torus.hxx".}
proc transform*(this: var TorusObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Torus.hxx".}
proc transformed*(this: TorusObj; t: TrsfObj): TorusObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Torus.hxx".}
proc translate*(this: var TorusObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Torus.hxx".}
proc translated*(this: TorusObj; v: VecObj): TorusObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Torus.hxx".}
proc translate*(this: var TorusObj; p1: PntObj; p2: PntObj) {.cdecl, importcpp: "Translate",
    header: "gp_Torus.hxx".}
proc translated*(this: TorusObj; p1: PntObj; p2: PntObj): TorusObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Torus.hxx".}
