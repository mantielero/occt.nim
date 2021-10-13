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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpElips2d* {.importcpp: "gp_Elips2d", header: "gp_Elips2d.hxx", bycopy.} = object ## !
                                                                            ## Creates an
                                                                            ## indefinite
                                                                            ## ellipse.


proc constructGpElips2d*(): GpElips2d {.cdecl, constructor,
                                     importcpp: "gp_Elips2d(@)", dynlib: tkmath.}
proc constructGpElips2d*(majorAxis: GpAx2d; majorRadius: cfloat; minorRadius: cfloat;
                        sense: bool = true): GpElips2d {.cdecl, constructor,
    importcpp: "gp_Elips2d(@)", dynlib: tkmath.}
proc constructGpElips2d*(a: GpAx22d; majorRadius: cfloat; minorRadius: cfloat): GpElips2d {.
    cdecl, constructor, importcpp: "gp_Elips2d(@)", dynlib: tkmath.}
proc setLocation*(this: var GpElips2d; p: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setMajorRadius*(this: var GpElips2d; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkmath.}
proc setMinorRadius*(this: var GpElips2d; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkmath.}
proc setAxis*(this: var GpElips2d; a: GpAx22d) {.cdecl, importcpp: "SetAxis",
    dynlib: tkmath.}
proc setXAxis*(this: var GpElips2d; a: GpAx2d) {.cdecl, importcpp: "SetXAxis",
    dynlib: tkmath.}
proc setYAxis*(this: var GpElips2d; a: GpAx2d) {.cdecl, importcpp: "SetYAxis",
    dynlib: tkmath.}
proc area*(this: GpElips2d): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                  dynlib: tkmath.}
proc coefficients*(this: GpElips2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc directrix1*(this: GpElips2d): GpAx2d {.noSideEffect, cdecl,
                                        importcpp: "Directrix1", dynlib: tkmath.}
proc directrix2*(this: GpElips2d): GpAx2d {.noSideEffect, cdecl,
                                        importcpp: "Directrix2", dynlib: tkmath.}
proc eccentricity*(this: GpElips2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkmath.}
proc focal*(this: GpElips2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                   dynlib: tkmath.}
proc focus1*(this: GpElips2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                     dynlib: tkmath.}
proc focus2*(this: GpElips2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                     dynlib: tkmath.}
proc location*(this: GpElips2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                       dynlib: tkmath.}
proc majorRadius*(this: GpElips2d): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", dynlib: tkmath.}
proc minorRadius*(this: GpElips2d): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", dynlib: tkmath.}
proc parameter*(this: GpElips2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Parameter", dynlib: tkmath.}
proc axis*(this: GpElips2d): GpAx22d {.noSideEffect, cdecl, importcpp: "Axis",
                                   dynlib: tkmath.}
proc xAxis*(this: GpElips2d): GpAx2d {.noSideEffect, cdecl, importcpp: "XAxis",
                                   dynlib: tkmath.}
proc yAxis*(this: GpElips2d): GpAx2d {.noSideEffect, cdecl, importcpp: "YAxis",
                                   dynlib: tkmath.}
proc reverse*(this: var GpElips2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpElips2d): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkmath.}
proc isDirect*(this: GpElips2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                    dynlib: tkmath.}
proc mirror*(this: var GpElips2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror",
    dynlib: tkmath.}
proc mirrored*(this: GpElips2d; p: GpPnt2d): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpElips2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpElips2d; a: GpAx2d): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpElips2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpElips2d; p: GpPnt2d; ang: cfloat): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpElips2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpElips2d; p: GpPnt2d; s: cfloat): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpElips2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpElips2d; t: GpTrsf2d): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpElips2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpElips2d; v: GpVec2d): GpElips2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpElips2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpElips2d; p1: GpPnt2d; p2: GpPnt2d): GpElips2d {.noSideEffect,
    cdecl, importcpp: "Translated", dynlib: tkmath.}