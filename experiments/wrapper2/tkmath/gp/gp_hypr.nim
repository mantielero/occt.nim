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
  GpHypr* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object ## ! Creates of an indefinite hyperbola.


proc constructGpHypr*(): GpHypr {.cdecl, constructor, importcpp: "gp_Hypr(@)",
                               dynlib: tkmath.}
proc constructGpHypr*(a2: GpAx2; majorRadius: cfloat; minorRadius: cfloat): GpHypr {.
    cdecl, constructor, importcpp: "gp_Hypr(@)", dynlib: tkmath.}
proc setAxis*(this: var GpHypr; a1: GpAx1) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GpHypr; p: GpPnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var GpHypr; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var GpHypr; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setPosition*(this: var GpHypr; a2: GpAx2) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc asymptote1*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                    dynlib: tkmath.}
proc asymptote2*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                    dynlib: tkmath.}
proc axis*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc conjugateBranch1*(this: GpHypr): GpHypr {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", dynlib: tkmath.}
proc conjugateBranch2*(this: GpHypr): GpHypr {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", dynlib: tkmath.}
proc directrix1*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "Directrix1",
                                    dynlib: tkmath.}
proc directrix2*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "Directrix2",
                                    dynlib: tkmath.}
proc eccentricity*(this: GpHypr): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: GpHypr): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                dynlib: tkmath.}
proc focus1*(this: GpHypr): GpPnt {.noSideEffect, cdecl, importcpp: "Focus1",
                                dynlib: tkmath.}
proc focus2*(this: GpHypr): GpPnt {.noSideEffect, cdecl, importcpp: "Focus2",
                                dynlib: tkmath.}
proc location*(this: GpHypr): GpPnt {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc majorRadius*(this: GpHypr): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: GpHypr): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MinorRadius", dynlib: tkmath.}
proc otherBranch*(this: GpHypr): GpHypr {.noSideEffect, cdecl,
                                      importcpp: "OtherBranch", dynlib: tkmath.}
proc parameter*(this: GpHypr): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                    dynlib: tkmath.}
proc position*(this: GpHypr): GpAx2 {.noSideEffect, cdecl, importcpp: "Position",
                                  dynlib: tkmath.}
proc xAxis*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "XAxis",
                               dynlib: tkmath.}
proc yAxis*(this: GpHypr): GpAx1 {.noSideEffect, cdecl, importcpp: "YAxis",
                               dynlib: tkmath.}
proc mirror*(this: var GpHypr; p: GpPnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpHypr; p: GpPnt): GpHypr {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpHypr; a1: GpAx1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpHypr; a1: GpAx1): GpHypr {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpHypr; a2: GpAx2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpHypr; a2: GpAx2): GpHypr {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpHypr; a1: GpAx1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpHypr; a1: GpAx1; ang: cfloat): GpHypr {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpHypr; p: GpPnt; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpHypr; p: GpPnt; s: cfloat): GpHypr {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpHypr; t: GpTrsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpHypr; t: GpTrsf): GpHypr {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpHypr; v: GpVec) {.cdecl, importcpp: "Translate",
                                        dynlib: tkmath.}
proc translated*(this: GpHypr; v: GpVec): GpHypr {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpHypr; p1: GpPnt; p2: GpPnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpHypr; p1: GpPnt; p2: GpPnt): GpHypr {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}