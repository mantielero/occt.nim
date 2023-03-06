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

proc elips*(): gp_Elips {.cdecl, constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc elips*(a2: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat): gp_Elips {.cdecl,
    constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc setAxis*(this: var gp_Elips; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Elips.hxx".}
proc setLocation*(this: var gp_Elips; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Elips.hxx".}
proc setMajorRadius*(this: var gp_Elips; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Elips.hxx".}
proc setMinorRadius*(this: var gp_Elips; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Elips.hxx".}
proc setPosition*(this: var gp_Elips; a2: gp_Ax2) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Elips.hxx".}
proc area*(this: gp_Elips): cfloat {.noSideEffect, cdecl, importcpp: "Area", header: "gp_Elips.hxx".}
proc axis*(this: gp_Elips): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Elips.hxx".}
proc directrix1*(this: gp_Elips): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                 header: "gp_Elips.hxx".}
proc directrix2*(this: gp_Elips): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                 header: "gp_Elips.hxx".}
proc eccentricity*(this: gp_Elips): cfloat {.noSideEffect, cdecl,
                                      importcpp: "Eccentricity", header: "gp_Elips.hxx".}
proc focal*(this: gp_Elips): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               header: "gp_Elips.hxx".}
proc focus1*(this: gp_Elips): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                             header: "gp_Elips.hxx".}
proc focus2*(this: gp_Elips): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                             header: "gp_Elips.hxx".}
proc location*(this: gp_Elips): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Elips.hxx".}
proc majorRadius*(this: gp_Elips): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", header: "gp_Elips.hxx".}
proc minorRadius*(this: gp_Elips): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", header: "gp_Elips.hxx".}
proc parameter*(this: gp_Elips): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   header: "gp_Elips.hxx".}
proc position*(this: gp_Elips): gp_Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Elips.hxx".}
proc xAxis*(this: gp_Elips): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Elips.hxx".}
proc yAxis*(this: gp_Elips): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Elips.hxx".}
proc mirror*(this: var gp_Elips; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: gp_Elips; p: gp_Pnt): gp_Elips {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Elips.hxx".}
proc mirror*(this: var gp_Elips; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: gp_Elips; a1: gp_Ax1): gp_Elips {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Elips.hxx".}
proc mirror*(this: var gp_Elips; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: gp_Elips; a2: gp_Ax2): gp_Elips {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Elips.hxx".}
proc rotate*(this: var gp_Elips; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Elips.hxx".}
proc rotated*(this: gp_Elips; a1: gp_Ax1; ang: cfloat): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Elips.hxx".}
proc scale*(this: var gp_Elips; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Elips.hxx".}
proc scaled*(this: gp_Elips; p: gp_Pnt; s: cfloat): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Elips.hxx".}
proc transform*(this: var gp_Elips; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Elips.hxx".}
proc transformed*(this: gp_Elips; t: gp_Trsf): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Elips.hxx".}
proc translate*(this: var gp_Elips; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Elips.hxx".}
proc translated*(this: gp_Elips; v: gp_Vec): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips.hxx".}
proc translate*(this: var gp_Elips; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Elips.hxx".}
proc translated*(this: gp_Elips; p1: gp_Pnt; p2: gp_Pnt): gp_Elips {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips.hxx".}
