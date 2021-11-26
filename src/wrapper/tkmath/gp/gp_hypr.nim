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
type
  Hypr* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object ## ! Creates of an indefinite hyperbola.


proc newHypr*(): Hypr {.cdecl, constructor, importcpp: "gp_Hypr(@)", dynlib: tkmath.}
proc newHypr*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): Hypr {.cdecl,
    constructor, importcpp: "gp_Hypr(@)", dynlib: tkmath.}
proc setAxis*(this: var Hypr; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var Hypr; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                      dynlib: tkmath.}
proc setMajorRadius*(this: var Hypr; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var Hypr; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setPosition*(this: var Hypr; a2: Ax2) {.cdecl, importcpp: "SetPosition",
                                       dynlib: tkmath.}
proc asymptote1*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                dynlib: tkmath.}
proc asymptote2*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                dynlib: tkmath.}
proc axis*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc conjugateBranch1*(this: Hypr): Hypr {.noSideEffect, cdecl,
                                       importcpp: "ConjugateBranch1",
                                       dynlib: tkmath.}
proc conjugateBranch2*(this: Hypr): Hypr {.noSideEffect, cdecl,
                                       importcpp: "ConjugateBranch2",
                                       dynlib: tkmath.}
proc directrix1*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                dynlib: tkmath.}
proc directrix2*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                dynlib: tkmath.}
proc eccentricity*(this: Hypr): cfloat {.noSideEffect, cdecl,
                                     importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: Hypr): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                              dynlib: tkmath.}
proc focus1*(this: Hypr): Pnt {.noSideEffect, cdecl, importcpp: "Focus1", dynlib: tkmath.}
proc focus2*(this: Hypr): Pnt {.noSideEffect, cdecl, importcpp: "Focus2", dynlib: tkmath.}
proc location*(this: Hypr): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                              dynlib: tkmath.}
proc majorRadius*(this: Hypr): cfloat {.noSideEffect, cdecl, importcpp: "MajorRadius",
                                    dynlib: tkmath.}
proc minorRadius*(this: Hypr): cfloat {.noSideEffect, cdecl, importcpp: "MinorRadius",
                                    dynlib: tkmath.}
proc otherBranch*(this: Hypr): Hypr {.noSideEffect, cdecl, importcpp: "OtherBranch",
                                  dynlib: tkmath.}
proc parameter*(this: Hypr): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                  dynlib: tkmath.}
proc position*(this: Hypr): Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                              dynlib: tkmath.}
proc xAxis*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Hypr): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc mirror*(this: var Hypr; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Hypr; p: Pnt): Hypr {.noSideEffect, cdecl, importcpp: "Mirrored",
                                     dynlib: tkmath.}
proc mirror*(this: var Hypr; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Hypr; a1: Ax1): Hypr {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc mirror*(this: var Hypr; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Hypr; a2: Ax2): Hypr {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      dynlib: tkmath.}
proc rotate*(this: var Hypr; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Hypr; a1: Ax1; ang: cfloat): Hypr {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Hypr; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Hypr; p: Pnt; s: cfloat): Hypr {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Hypr; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Hypr; t: Trsf): Hypr {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Hypr; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Hypr; v: Vec): Hypr {.noSideEffect, cdecl,
                                       importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Hypr; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Hypr; p1: Pnt; p2: Pnt): Hypr {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}