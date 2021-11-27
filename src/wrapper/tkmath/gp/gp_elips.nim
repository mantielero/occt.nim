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
type
  Elips* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object ## ! Creates an indefinite ellipse.


proc newElips*(): Elips {.cdecl, constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc newElips*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): Elips {.cdecl,
    constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc setAxis*(this: var Elips; a1: Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Elips.hxx".}
proc setLocation*(this: var Elips; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Elips.hxx".}
proc setMajorRadius*(this: var Elips; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Elips.hxx".}
proc setMinorRadius*(this: var Elips; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Elips.hxx".}
proc setPosition*(this: var Elips; a2: Ax2) {.cdecl, importcpp: "SetPosition",
                                        header: "gp_Elips.hxx".}
proc area*(this: Elips): cfloat {.noSideEffect, cdecl, importcpp: "Area", header: "gp_Elips.hxx".}
proc axis*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Elips.hxx".}
proc directrix1*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                 header: "gp_Elips.hxx".}
proc directrix2*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                 header: "gp_Elips.hxx".}
proc eccentricity*(this: Elips): cfloat {.noSideEffect, cdecl,
                                      importcpp: "Eccentricity", header: "gp_Elips.hxx".}
proc focal*(this: Elips): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               header: "gp_Elips.hxx".}
proc focus1*(this: Elips): Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                             header: "gp_Elips.hxx".}
proc focus2*(this: Elips): Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                             header: "gp_Elips.hxx".}
proc location*(this: Elips): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               header: "gp_Elips.hxx".}
proc majorRadius*(this: Elips): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", header: "gp_Elips.hxx".}
proc minorRadius*(this: Elips): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", header: "gp_Elips.hxx".}
proc parameter*(this: Elips): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   header: "gp_Elips.hxx".}
proc position*(this: Elips): Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                               header: "gp_Elips.hxx".}
proc xAxis*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Elips.hxx".}
proc yAxis*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Elips.hxx".}
proc mirror*(this: var Elips; p: Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: Elips; p: Pnt): Elips {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Elips.hxx".}
proc mirror*(this: var Elips; a1: Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: Elips; a1: Ax1): Elips {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Elips.hxx".}
proc mirror*(this: var Elips; a2: Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: Elips; a2: Ax2): Elips {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", header: "gp_Elips.hxx".}
proc rotate*(this: var Elips; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Elips.hxx".}
proc rotated*(this: Elips; a1: Ax1; ang: cfloat): Elips {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Elips.hxx".}
proc scale*(this: var Elips; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Elips.hxx".}
proc scaled*(this: Elips; p: Pnt; s: cfloat): Elips {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Elips.hxx".}
proc transform*(this: var Elips; t: Trsf) {.cdecl, importcpp: "Transform", header: "gp_Elips.hxx".}
proc transformed*(this: Elips; t: Trsf): Elips {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Elips.hxx".}
proc translate*(this: var Elips; v: Vec) {.cdecl, importcpp: "Translate", header: "gp_Elips.hxx".}
proc translated*(this: Elips; v: Vec): Elips {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips.hxx".}
proc translate*(this: var Elips; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Elips.hxx".}
proc translated*(this: Elips; p1: Pnt; p2: Pnt): Elips {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips.hxx".}