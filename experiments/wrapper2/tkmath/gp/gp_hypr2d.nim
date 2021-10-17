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
  Hypr2d* {.importcpp: "gp_Hypr2d", header: "gp_Hypr2d.hxx", bycopy.} = object ## ! Creates of an
                                                                       ## indefinite
                                                                       ## hyperbola.


proc newHypr2d*(): Hypr2d {.cdecl, constructor, importcpp: "gp_Hypr2d(@)",
                         dynlib: tkmath.}
proc newHypr2d*(majorAxis: Ax2d; majorRadius: cfloat; minorRadius: cfloat;
               sense: bool = true): Hypr2d {.cdecl, constructor,
                                        importcpp: "gp_Hypr2d(@)", dynlib: tkmath.}
proc newHypr2d*(a: Ax22d; majorRadius: cfloat; minorRadius: cfloat): Hypr2d {.cdecl,
    constructor, importcpp: "gp_Hypr2d(@)", dynlib: tkmath.}
proc setLocation*(this: var Hypr2d; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var Hypr2d; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var Hypr2d; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setAxis*(this: var Hypr2d; a: Ax22d) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setXAxis*(this: var Hypr2d; a: Ax2d) {.cdecl, importcpp: "SetXAxis", dynlib: tkmath.}
proc setYAxis*(this: var Hypr2d; a: Ax2d) {.cdecl, importcpp: "SetYAxis", dynlib: tkmath.}
proc asymptote1*(this: Hypr2d): Ax2d {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                   dynlib: tkmath.}
proc asymptote2*(this: Hypr2d): Ax2d {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                   dynlib: tkmath.}
proc coefficients*(this: Hypr2d; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat;
                  e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc conjugateBranch1*(this: Hypr2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", dynlib: tkmath.}
proc conjugateBranch2*(this: Hypr2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", dynlib: tkmath.}
proc directrix1*(this: Hypr2d): Ax2d {.noSideEffect, cdecl, importcpp: "Directrix1",
                                   dynlib: tkmath.}
proc directrix2*(this: Hypr2d): Ax2d {.noSideEffect, cdecl, importcpp: "Directrix2",
                                   dynlib: tkmath.}
proc eccentricity*(this: Hypr2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: Hypr2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                dynlib: tkmath.}
proc focus1*(this: Hypr2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                dynlib: tkmath.}
proc focus2*(this: Hypr2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                dynlib: tkmath.}
proc location*(this: Hypr2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc majorRadius*(this: Hypr2d): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: Hypr2d): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MinorRadius", dynlib: tkmath.}
proc otherBranch*(this: Hypr2d): Hypr2d {.noSideEffect, cdecl,
                                      importcpp: "OtherBranch", dynlib: tkmath.}
proc parameter*(this: Hypr2d): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                    dynlib: tkmath.}
proc axis*(this: Hypr2d): Ax22d {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc xAxis*(this: Hypr2d): Ax2d {.noSideEffect, cdecl, importcpp: "XAxis",
                              dynlib: tkmath.}
proc yAxis*(this: Hypr2d): Ax2d {.noSideEffect, cdecl, importcpp: "YAxis",
                              dynlib: tkmath.}
proc reverse*(this: var Hypr2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Hypr2d): Hypr2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                   dynlib: tkmath.}
proc isDirect*(this: Hypr2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                 dynlib: tkmath.}
proc mirror*(this: var Hypr2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Hypr2d; p: Pnt2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Hypr2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Hypr2d; a: Ax2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Hypr2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Hypr2d; p: Pnt2d; ang: cfloat): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Hypr2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Hypr2d; p: Pnt2d; s: cfloat): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Hypr2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: Hypr2d; t: Trsf2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Hypr2d; v: Vec2d) {.cdecl, importcpp: "Translate",
                                        dynlib: tkmath.}
proc translated*(this: Hypr2d; v: Vec2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Hypr2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Hypr2d; p1: Pnt2d; p2: Pnt2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}