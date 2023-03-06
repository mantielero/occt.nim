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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc elips*(): ElipsObj {.cdecl, constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc elips*(a2: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat): ElipsObj {.cdecl,
    constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc setAxis*(this: var ElipsObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Elips.hxx".}
proc setLocation*(this: var ElipsObj; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Elips.hxx".}
proc setMajorRadius*(this: var ElipsObj; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Elips.hxx".}
proc setMinorRadius*(this: var ElipsObj; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Elips.hxx".}
proc setPosition*(this: var ElipsObj; a2: Ax2Obj) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Elips.hxx".}
proc area*(this: ElipsObj): cfloat {.noSideEffect, cdecl, importcpp: "Area", header: "gp_Elips.hxx".}
proc axis*(this: ElipsObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Elips.hxx".}
proc directrix1*(this: ElipsObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Directrix1",
                                 header: "gp_Elips.hxx".}
proc directrix2*(this: ElipsObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Directrix2",
                                 header: "gp_Elips.hxx".}
proc eccentricity*(this: ElipsObj): cfloat {.noSideEffect, cdecl,
                                      importcpp: "Eccentricity", header: "gp_Elips.hxx".}
proc focal*(this: ElipsObj): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               header: "gp_Elips.hxx".}
proc focus1*(this: ElipsObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                             header: "gp_Elips.hxx".}
proc focus2*(this: ElipsObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                             header: "gp_Elips.hxx".}
proc location*(this: ElipsObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Elips.hxx".}
proc majorRadius*(this: ElipsObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", header: "gp_Elips.hxx".}
proc minorRadius*(this: ElipsObj): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", header: "gp_Elips.hxx".}
proc parameter*(this: ElipsObj): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   header: "gp_Elips.hxx".}
proc position*(this: ElipsObj): Ax2Obj {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Elips.hxx".}
proc xAxis*(this: ElipsObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Elips.hxx".}
proc yAxis*(this: ElipsObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Elips.hxx".}
proc mirror*(this: var ElipsObj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: ElipsObj; p: gp_Pnt): ElipsObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Elips.hxx".}
proc mirror*(this: var ElipsObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: ElipsObj; a1: Ax1Obj): ElipsObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Elips.hxx".}
proc mirror*(this: var ElipsObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: ElipsObj; a2: Ax2Obj): ElipsObj {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Elips.hxx".}
proc rotate*(this: var ElipsObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Elips.hxx".}
proc rotated*(this: ElipsObj; a1: Ax1Obj; ang: cfloat): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Elips.hxx".}
proc scale*(this: var ElipsObj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Elips.hxx".}
proc scaled*(this: ElipsObj; p: gp_Pnt; s: cfloat): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Elips.hxx".}
proc transform*(this: var ElipsObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Elips.hxx".}
proc transformed*(this: ElipsObj; t: TrsfObj): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Elips.hxx".}
proc translate*(this: var ElipsObj; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Elips.hxx".}
proc translated*(this: ElipsObj; v: gp_Vec): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips.hxx".}
proc translate*(this: var ElipsObj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Elips.hxx".}
proc translated*(this: ElipsObj; p1: gp_Pnt; p2: gp_Pnt): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips.hxx".}
