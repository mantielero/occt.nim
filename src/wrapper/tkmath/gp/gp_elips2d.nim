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
  Elips2d* {.importcpp: "gp_Elips2d", header: "gp_Elips2d.hxx", bycopy.} = object ## !
                                                                          ## Creates an
                                                                          ## indefinite
                                                                          ## ellipse.


proc newElips2d*(): Elips2d {.cdecl, constructor, importcpp: "gp_Elips2d(@)",
                           header: "gp_Elips2d.hxx".}
proc newElips2d*(majorAxis: Ax2d; majorRadius: cfloat; minorRadius: cfloat;
                sense: bool = true): Elips2d {.cdecl, constructor,
    importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc newElips2d*(a: Ax22d; majorRadius: cfloat; minorRadius: cfloat): Elips2d {.cdecl,
    constructor, importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc setLocation*(this: var Elips2d; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Elips2d.hxx".}
proc setMajorRadius*(this: var Elips2d; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Elips2d.hxx".}
proc setMinorRadius*(this: var Elips2d; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Elips2d.hxx".}
proc setAxis*(this: var Elips2d; a: Ax22d) {.cdecl, importcpp: "SetAxis", header: "gp_Elips2d.hxx".}
proc setXAxis*(this: var Elips2d; a: Ax2d) {.cdecl, importcpp: "SetXAxis", header: "gp_Elips2d.hxx".}
proc setYAxis*(this: var Elips2d; a: Ax2d) {.cdecl, importcpp: "SetYAxis", header: "gp_Elips2d.hxx".}
proc area*(this: Elips2d): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                header: "gp_Elips2d.hxx".}
proc coefficients*(this: Elips2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Elips2d.hxx".}
proc directrix1*(this: Elips2d): Ax2d {.noSideEffect, cdecl, importcpp: "Directrix1",
                                    header: "gp_Elips2d.hxx".}
proc directrix2*(this: Elips2d): Ax2d {.noSideEffect, cdecl, importcpp: "Directrix2",
                                    header: "gp_Elips2d.hxx".}
proc eccentricity*(this: Elips2d): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Eccentricity", header: "gp_Elips2d.hxx".}
proc focal*(this: Elips2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 header: "gp_Elips2d.hxx".}
proc focus1*(this: Elips2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                 header: "gp_Elips2d.hxx".}
proc focus2*(this: Elips2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                 header: "gp_Elips2d.hxx".}
proc location*(this: Elips2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                   header: "gp_Elips2d.hxx".}
proc majorRadius*(this: Elips2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MajorRadius", header: "gp_Elips2d.hxx".}
proc minorRadius*(this: Elips2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MinorRadius", header: "gp_Elips2d.hxx".}
proc parameter*(this: Elips2d): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     header: "gp_Elips2d.hxx".}
proc axis*(this: Elips2d): Ax22d {.noSideEffect, cdecl, importcpp: "Axis",
                               header: "gp_Elips2d.hxx".}
proc xAxis*(this: Elips2d): Ax2d {.noSideEffect, cdecl, importcpp: "XAxis",
                               header: "gp_Elips2d.hxx".}
proc yAxis*(this: Elips2d): Ax2d {.noSideEffect, cdecl, importcpp: "YAxis",
                               header: "gp_Elips2d.hxx".}
proc reverse*(this: var Elips2d) {.cdecl, importcpp: "Reverse", header: "gp_Elips2d.hxx".}
proc reversed*(this: Elips2d): Elips2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                     header: "gp_Elips2d.hxx".}
proc isDirect*(this: Elips2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                  header: "gp_Elips2d.hxx".}
proc mirror*(this: var Elips2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Elips2d.hxx".}
proc mirrored*(this: Elips2d; p: Pnt2d): Elips2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Elips2d.hxx".}
proc mirror*(this: var Elips2d; a: Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Elips2d.hxx".}
proc mirrored*(this: Elips2d; a: Ax2d): Elips2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Elips2d.hxx".}
proc rotate*(this: var Elips2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Elips2d.hxx".}
proc rotated*(this: Elips2d; p: Pnt2d; ang: cfloat): Elips2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Elips2d.hxx".}
proc scale*(this: var Elips2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Elips2d.hxx".}
proc scaled*(this: Elips2d; p: Pnt2d; s: cfloat): Elips2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Elips2d.hxx".}
proc transform*(this: var Elips2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
    header: "gp_Elips2d.hxx".}
proc transformed*(this: Elips2d; t: Trsf2d): Elips2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Elips2d.hxx".}
proc translate*(this: var Elips2d; v: Vec2d) {.cdecl, importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
proc translated*(this: Elips2d; v: Vec2d): Elips2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips2d.hxx".}
proc translate*(this: var Elips2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
proc translated*(this: Elips2d; p1: Pnt2d; p2: Pnt2d): Elips2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips2d.hxx".}