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
  GpElips* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object ## ! Creates an indefinite ellipse.


proc constructGpElips*(): GpElips {.cdecl, constructor, importcpp: "gp_Elips(@)",
                                 dynlib: tkmath.}
proc constructGpElips*(a2: GpAx2; majorRadius: cfloat; minorRadius: cfloat): GpElips {.
    cdecl, constructor, importcpp: "gp_Elips(@)", dynlib: tkmath.}
proc setAxis*(this: var GpElips; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GpElips; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var GpElips; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var GpElips; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setPosition*(this: var GpElips; a2: GpAx2) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc area*(this: GpElips): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                dynlib: tkmath.}
proc axis*(this: GpElips): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis",
                               dynlib: tkmath.}
proc directrix1*(this: GpElips): GpAx1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                     dynlib: tkmath.}
proc directrix2*(this: GpElips): GpAx1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                     dynlib: tkmath.}
proc eccentricity*(this: GpElips): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: GpElips): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 dynlib: tkmath.}
proc focus1*(this: GpElips): GpPnt {.noSideEffect, cdecl, importcpp: "Focus1",
                                 dynlib: tkmath.}
proc focus2*(this: GpElips): GpPnt {.noSideEffect, cdecl, importcpp: "Focus2",
                                 dynlib: tkmath.}
proc location*(this: GpElips): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                   dynlib: tkmath.}
proc majorRadius*(this: GpElips): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: GpElips): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MinorRadius", dynlib: tkmath.}
proc parameter*(this: GpElips): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     dynlib: tkmath.}
proc position*(this: GpElips): GpAx2 {.noSideEffect, cdecl, importcpp: "Position",
                                   dynlib: tkmath.}
proc xAxis*(this: GpElips): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                                dynlib: tkmath.}
proc yAxis*(this: GpElips): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                                dynlib: tkmath.}
proc mirror*(this: var GpElips; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpElips; p: GpPnt): GpElips {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpElips; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpElips; a1: GpAx1): GpElips {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpElips; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpElips; a2: GpAx2): GpElips {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpElips; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpElips; a1: GpAx1; ang: cfloat): GpElips {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpElips; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpElips; p: GpPnt; s: cfloat): GpElips {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpElips; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpElips; t: GpTrsf): GpElips {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpElips; v: GpVec) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpElips; v: GpVec): GpElips {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpElips; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpElips; p1: GpPnt; p2: GpPnt): GpElips {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}