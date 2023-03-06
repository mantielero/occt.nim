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

proc hypr*(): gp_Hypr {.cdecl, constructor, importcpp: "gp_Hypr(@)", header: "gp_Hypr.hxx".}
proc hypr*(a2: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat): gp_Hypr {.cdecl,
    constructor, importcpp: "gp_Hypr(@)", header: "gp_Hypr.hxx".}
proc setAxis*(this: var gp_Hypr; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Hypr.hxx".}
proc setLocation*(this: var gp_Hypr; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                      header: "gp_Hypr.hxx".}
proc setMajorRadius*(this: var gp_Hypr; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Hypr.hxx".}
proc setMinorRadius*(this: var gp_Hypr; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Hypr.hxx".}
proc setPosition*(this: var gp_Hypr; a2: gp_Ax2) {.cdecl, importcpp: "SetPosition",
                                       header: "gp_Hypr.hxx".}
proc asymptote1*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                header: "gp_Hypr.hxx".}
proc asymptote2*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                header: "gp_Hypr.hxx".}
proc axis*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Hypr.hxx".}
proc conjugateBranch1*(this: gp_Hypr): gp_Hypr {.noSideEffect, cdecl,
                                       importcpp: "ConjugateBranch1",
                                       header: "gp_Hypr.hxx".}
proc conjugateBranch2*(this: gp_Hypr): gp_Hypr {.noSideEffect, cdecl,
                                       importcpp: "ConjugateBranch2",
                                       header: "gp_Hypr.hxx".}
proc directrix1*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                header: "gp_Hypr.hxx".}
proc directrix2*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                header: "gp_Hypr.hxx".}
proc eccentricity*(this: gp_Hypr): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Eccentricity", header: "gp_Hypr.hxx".}
proc focal*(this: gp_Hypr): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                              header: "gp_Hypr.hxx".}
proc focus1*(this: gp_Hypr): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus1", header: "gp_Hypr.hxx".}
proc focus2*(this: gp_Hypr): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus2", header: "gp_Hypr.hxx".}
proc location*(this: gp_Hypr): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                              header: "gp_Hypr.hxx".}
proc majorRadius*(this: gp_Hypr): cfloat {.noSideEffect, cdecl, importcpp: "MajorRadius",
                                    header: "gp_Hypr.hxx".}
proc minorRadius*(this: gp_Hypr): cfloat {.noSideEffect, cdecl, importcpp: "MinorRadius",
                                    header: "gp_Hypr.hxx".}
proc otherBranch*(this: gp_Hypr): gp_Hypr {.noSideEffect, cdecl, importcpp: "OtherBranch",
                                  header: "gp_Hypr.hxx".}
proc parameter*(this: gp_Hypr): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                  header: "gp_Hypr.hxx".}
proc position*(this: gp_Hypr): gp_Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                              header: "gp_Hypr.hxx".}
proc xAxis*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Hypr.hxx".}
proc yAxis*(this: gp_Hypr): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Hypr.hxx".}
proc mirror*(this: var gp_Hypr; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: gp_Hypr; p: gp_Pnt): gp_Hypr {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     header: "gp_Hypr.hxx".}
proc mirror*(this: var gp_Hypr; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: gp_Hypr; a1: gp_Ax1): gp_Hypr {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Hypr.hxx".}
proc mirror*(this: var gp_Hypr; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: gp_Hypr; a2: gp_Ax2): gp_Hypr {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Hypr.hxx".}
proc rotate*(this: var gp_Hypr; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Hypr.hxx".}
proc rotated*(this: gp_Hypr; a1: gp_Ax1; ang: cfloat): gp_Hypr {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Hypr.hxx".}
proc scale*(this: var gp_Hypr; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Hypr.hxx".}
proc scaled*(this: gp_Hypr; p: gp_Pnt; s: cfloat): gp_Hypr {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Hypr.hxx".}
proc transform*(this: var gp_Hypr; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Hypr.hxx".}
proc transformed*(this: gp_Hypr; t: gp_Trsf): gp_Hypr {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Hypr.hxx".}
proc translate*(this: var gp_Hypr; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Hypr.hxx".}
proc translated*(this: gp_Hypr; v: gp_Vec): gp_Hypr {.noSideEffect, cdecl,
                                       importcpp: "Translated", header: "gp_Hypr.hxx".}
proc translate*(this: var gp_Hypr; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Hypr.hxx".}
proc translated*(this: gp_Hypr; p1: gp_Pnt; p2: gp_Pnt): gp_Hypr {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Hypr.hxx".}
