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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpHypr2d* {.importcpp: "gp_Hypr2d", header: "gp_Hypr2d.hxx", bycopy.} = object ## ! Creates of an
                                                                         ## indefinite
                                                                         ## hyperbola.


proc constructGpHypr2d*(): GpHypr2d {.cdecl, constructor, importcpp: "gp_Hypr2d(@)",
                                   dynlib: tkmath.}
proc constructGpHypr2d*(majorAxis: GpAx2d; majorRadius: cfloat; minorRadius: cfloat;
                       sense: bool = true): GpHypr2d {.cdecl, constructor,
    importcpp: "gp_Hypr2d(@)", dynlib: tkmath.}
proc constructGpHypr2d*(a: GpAx22d; majorRadius: cfloat; minorRadius: cfloat): GpHypr2d {.
    cdecl, constructor, importcpp: "gp_Hypr2d(@)", dynlib: tkmath.}
proc setLocation*(this: var GpHypr2d; p: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var GpHypr2d; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var GpHypr2d; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setAxis*(this: var GpHypr2d; a: GpAx22d) {.cdecl, importcpp: "SetAxis",
    dynlib: tkmath.}
proc setXAxis*(this: var GpHypr2d; a: GpAx2d) {.cdecl, importcpp: "SetXAxis",
    dynlib: tkmath.}
proc setYAxis*(this: var GpHypr2d; a: GpAx2d) {.cdecl, importcpp: "SetYAxis",
    dynlib: tkmath.}
proc asymptote1*(this: GpHypr2d): GpAx2d {.noSideEffect, cdecl,
                                       importcpp: "Asymptote1", dynlib: tkmath.}
proc asymptote2*(this: GpHypr2d): GpAx2d {.noSideEffect, cdecl,
                                       importcpp: "Asymptote2", dynlib: tkmath.}
proc coefficients*(this: GpHypr2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc conjugateBranch1*(this: GpHypr2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", dynlib: tkmath.}
proc conjugateBranch2*(this: GpHypr2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", dynlib: tkmath.}
proc directrix1*(this: GpHypr2d): GpAx2d {.noSideEffect, cdecl,
                                       importcpp: "Directrix1", dynlib: tkmath.}
proc directrix2*(this: GpHypr2d): GpAx2d {.noSideEffect, cdecl,
                                       importcpp: "Directrix2", dynlib: tkmath.}
proc eccentricity*(this: GpHypr2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: GpHypr2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                  dynlib: tkmath.}
proc focus1*(this: GpHypr2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                    dynlib: tkmath.}
proc focus2*(this: GpHypr2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                    dynlib: tkmath.}
proc location*(this: GpHypr2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                      dynlib: tkmath.}
proc majorRadius*(this: GpHypr2d): cfloat {.noSideEffect, cdecl,
                                        importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: GpHypr2d): cfloat {.noSideEffect, cdecl,
                                        importcpp: "MinorRadius", dynlib: tkmath.}
proc otherBranch*(this: GpHypr2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "OtherBranch", dynlib: tkmath.}
proc parameter*(this: GpHypr2d): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                      dynlib: tkmath.}
proc axis*(this: GpHypr2d): GpAx22d {.noSideEffect, cdecl, importcpp: "Axis",
                                  dynlib: tkmath.}
proc xAxis*(this: GpHypr2d): GpAx2d {.noSideEffect, cdecl, importcpp: "XAxis",
                                  dynlib: tkmath.}
proc yAxis*(this: GpHypr2d): GpAx2d {.noSideEffect, cdecl, importcpp: "YAxis",
                                  dynlib: tkmath.}
proc reverse*(this: var GpHypr2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpHypr2d): GpHypr2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                       dynlib: tkmath.}
proc isDirect*(this: GpHypr2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                   dynlib: tkmath.}
proc mirror*(this: var GpHypr2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpHypr2d; p: GpPnt2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpHypr2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpHypr2d; a: GpAx2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpHypr2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpHypr2d; p: GpPnt2d; ang: cfloat): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpHypr2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpHypr2d; p: GpPnt2d; s: cfloat): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpHypr2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpHypr2d; t: GpTrsf2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpHypr2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpHypr2d; v: GpVec2d): GpHypr2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpHypr2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpHypr2d; p1: GpPnt2d; p2: GpPnt2d): GpHypr2d {.noSideEffect,
    cdecl, importcpp: "Translated", dynlib: tkmath.}