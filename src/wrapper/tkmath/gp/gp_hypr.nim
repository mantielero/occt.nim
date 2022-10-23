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
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc hypr*(): HyprObj {.cdecl, constructor, importcpp: "gp_Hypr(@)", header: "gp_Hypr.hxx".}
proc hypr*(a2: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat): HyprObj {.cdecl,
    constructor, importcpp: "gp_Hypr(@)", header: "gp_Hypr.hxx".}
proc setAxis*(this: var HyprObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Hypr.hxx".}
proc setLocation*(this: var HyprObj; p: PntObj) {.cdecl, importcpp: "SetLocation",
                                      header: "gp_Hypr.hxx".}
proc setMajorRadius*(this: var HyprObj; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Hypr.hxx".}
proc setMinorRadius*(this: var HyprObj; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Hypr.hxx".}
proc setPosition*(this: var HyprObj; a2: Ax2Obj) {.cdecl, importcpp: "SetPosition",
                                       header: "gp_Hypr.hxx".}
proc asymptote1*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                header: "gp_Hypr.hxx".}
proc asymptote2*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                header: "gp_Hypr.hxx".}
proc axis*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Hypr.hxx".}
proc conjugateBranch1*(this: HyprObj): HyprObj {.noSideEffect, cdecl,
                                       importcpp: "ConjugateBranch1",
                                       header: "gp_Hypr.hxx".}
proc conjugateBranch2*(this: HyprObj): HyprObj {.noSideEffect, cdecl,
                                       importcpp: "ConjugateBranch2",
                                       header: "gp_Hypr.hxx".}
proc directrix1*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Directrix1",
                                header: "gp_Hypr.hxx".}
proc directrix2*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Directrix2",
                                header: "gp_Hypr.hxx".}
proc eccentricity*(this: HyprObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Eccentricity", header: "gp_Hypr.hxx".}
proc focal*(this: HyprObj): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                              header: "gp_Hypr.hxx".}
proc focus1*(this: HyprObj): PntObj {.noSideEffect, cdecl, importcpp: "Focus1", header: "gp_Hypr.hxx".}
proc focus2*(this: HyprObj): PntObj {.noSideEffect, cdecl, importcpp: "Focus2", header: "gp_Hypr.hxx".}
proc location*(this: HyprObj): PntObj {.noSideEffect, cdecl, importcpp: "Location",
                              header: "gp_Hypr.hxx".}
proc majorRadius*(this: HyprObj): cfloat {.noSideEffect, cdecl, importcpp: "MajorRadius",
                                    header: "gp_Hypr.hxx".}
proc minorRadius*(this: HyprObj): cfloat {.noSideEffect, cdecl, importcpp: "MinorRadius",
                                    header: "gp_Hypr.hxx".}
proc otherBranch*(this: HyprObj): HyprObj {.noSideEffect, cdecl, importcpp: "OtherBranch",
                                  header: "gp_Hypr.hxx".}
proc parameter*(this: HyprObj): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                  header: "gp_Hypr.hxx".}
proc position*(this: HyprObj): Ax2Obj {.noSideEffect, cdecl, importcpp: "Position",
                              header: "gp_Hypr.hxx".}
proc xAxis*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Hypr.hxx".}
proc yAxis*(this: HyprObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Hypr.hxx".}
proc mirror*(this: var HyprObj; p: PntObj) {.cdecl, importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: HyprObj; p: PntObj): HyprObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     header: "gp_Hypr.hxx".}
proc mirror*(this: var HyprObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: HyprObj; a1: Ax1Obj): HyprObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Hypr.hxx".}
proc mirror*(this: var HyprObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: HyprObj; a2: Ax2Obj): HyprObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Hypr.hxx".}
proc rotate*(this: var HyprObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Hypr.hxx".}
proc rotated*(this: HyprObj; a1: Ax1Obj; ang: cfloat): HyprObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Hypr.hxx".}
proc scale*(this: var HyprObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Hypr.hxx".}
proc scaled*(this: HyprObj; p: PntObj; s: cfloat): HyprObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Hypr.hxx".}
proc transform*(this: var HyprObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Hypr.hxx".}
proc transformed*(this: HyprObj; t: TrsfObj): HyprObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Hypr.hxx".}
proc translate*(this: var HyprObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Hypr.hxx".}
proc translated*(this: HyprObj; v: VecObj): HyprObj {.noSideEffect, cdecl,
                                       importcpp: "Translated", header: "gp_Hypr.hxx".}
proc translate*(this: var HyprObj; p1: PntObj; p2: PntObj) {.cdecl, importcpp: "Translate",
    header: "gp_Hypr.hxx".}
proc translated*(this: HyprObj; p1: PntObj; p2: PntObj): HyprObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Hypr.hxx".}
