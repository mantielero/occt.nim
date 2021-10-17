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


proc newElips*(): Elips {.cdecl, constructor, importcpp: "gp_Elips(@)", dynlib: tkmath.}
proc newElips*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): Elips {.cdecl,
    constructor, importcpp: "gp_Elips(@)", dynlib: tkmath.}
proc setAxis*(this: var Elips; a1: Ax1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var Elips; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                       dynlib: tkmath.}
proc setMajorRadius*(this: var Elips; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var Elips; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setPosition*(this: var Elips; a2: Ax2) {.cdecl, importcpp: "SetPosition",
                                        dynlib: tkmath.}
proc area*(this: Elips): cfloat {.noSideEffect, cdecl, importcpp: "Area", dynlib: tkmath.}
proc axis*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc directrix1*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                 dynlib: tkmath.}
proc directrix2*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                 dynlib: tkmath.}
proc eccentricity*(this: Elips): cfloat {.noSideEffect, cdecl,
                                      importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: Elips): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                               dynlib: tkmath.}
proc focus1*(this: Elips): Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                             dynlib: tkmath.}
proc focus2*(this: Elips): Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                             dynlib: tkmath.}
proc location*(this: Elips): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                               dynlib: tkmath.}
proc majorRadius*(this: Elips): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: Elips): cfloat {.noSideEffect, cdecl,
                                     importcpp: "MinorRadius", dynlib: tkmath.}
proc parameter*(this: Elips): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                   dynlib: tkmath.}
proc position*(this: Elips): Ax2 {.noSideEffect, cdecl, importcpp: "Position",
                               dynlib: tkmath.}
proc xAxis*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", dynlib: tkmath.}
proc yAxis*(this: Elips): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", dynlib: tkmath.}
proc mirror*(this: var Elips; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Elips; p: Pnt): Elips {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       dynlib: tkmath.}
proc mirror*(this: var Elips; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Elips; a1: Ax1): Elips {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Elips; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Elips; a2: Ax2): Elips {.noSideEffect, cdecl,
                                        importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Elips; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Elips; a1: Ax1; ang: cfloat): Elips {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Elips; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Elips; p: Pnt; s: cfloat): Elips {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Elips; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Elips; t: Trsf): Elips {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Elips; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Elips; v: Vec): Elips {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Elips; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Elips; p1: Pnt; p2: Pnt): Elips {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}