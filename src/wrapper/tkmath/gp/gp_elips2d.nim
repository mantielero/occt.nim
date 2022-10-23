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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc elips2d*(): Elips2dObj {.cdecl, constructor, importcpp: "gp_Elips2d(@)",
                           header: "gp_Elips2d.hxx".}
proc elips2d*(majorAxis: Ax2dObj; majorRadius: cfloat; minorRadius: cfloat;
                sense: bool = true): Elips2dObj {.cdecl, constructor,
    importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc elips2d*(a: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): Elips2dObj {.cdecl,
    constructor, importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc setLocation*(this: var Elips2dObj; p: Pnt2dObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Elips2d.hxx".}
proc setMajorRadius*(this: var Elips2dObj; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Elips2d.hxx".}
proc setMinorRadius*(this: var Elips2dObj; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Elips2d.hxx".}
proc setAxis*(this: var Elips2dObj; a: Ax22dObj) {.cdecl, importcpp: "SetAxis", header: "gp_Elips2d.hxx".}
proc setXAxis*(this: var Elips2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetXAxis", header: "gp_Elips2d.hxx".}
proc setYAxis*(this: var Elips2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetYAxis", header: "gp_Elips2d.hxx".}
proc area*(this: Elips2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                header: "gp_Elips2d.hxx".}
proc coefficients*(this: Elips2dObj; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Elips2d.hxx".}
proc directrix1*(this: Elips2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix1",
                                    header: "gp_Elips2d.hxx".}
proc directrix2*(this: Elips2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix2",
                                    header: "gp_Elips2d.hxx".}
proc eccentricity*(this: Elips2dObj): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Eccentricity", header: "gp_Elips2d.hxx".}
proc focal*(this: Elips2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 header: "gp_Elips2d.hxx".}
proc focus1*(this: Elips2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus1",
                                 header: "gp_Elips2d.hxx".}
proc focus2*(this: Elips2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus2",
                                 header: "gp_Elips2d.hxx".}
proc location*(this: Elips2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                   header: "gp_Elips2d.hxx".}
proc majorRadius*(this: Elips2dObj): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MajorRadius", header: "gp_Elips2d.hxx".}
proc minorRadius*(this: Elips2dObj): cfloat {.noSideEffect, cdecl,
                                       importcpp: "MinorRadius", header: "gp_Elips2d.hxx".}
proc parameter*(this: Elips2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     header: "gp_Elips2d.hxx".}
proc axis*(this: Elips2dObj): Ax22dObj {.noSideEffect, cdecl, importcpp: "Axis",
                               header: "gp_Elips2d.hxx".}
proc xAxis*(this: Elips2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "XAxis",
                               header: "gp_Elips2d.hxx".}
proc yAxis*(this: Elips2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "YAxis",
                               header: "gp_Elips2d.hxx".}
proc reverse*(this: var Elips2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Elips2d.hxx".}
proc reversed*(this: Elips2dObj): Elips2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                     header: "gp_Elips2d.hxx".}
proc isDirect*(this: Elips2dObj): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                  header: "gp_Elips2d.hxx".}
proc mirror*(this: var Elips2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Elips2d.hxx".}
proc mirrored*(this: Elips2dObj; p: Pnt2dObj): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Elips2d.hxx".}
proc mirror*(this: var Elips2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Elips2d.hxx".}
proc mirrored*(this: Elips2dObj; a: Ax2dObj): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Elips2d.hxx".}
proc rotate*(this: var Elips2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Elips2d.hxx".}
proc rotated*(this: Elips2dObj; p: Pnt2dObj; ang: cfloat): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Elips2d.hxx".}
proc scale*(this: var Elips2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Elips2d.hxx".}
proc scaled*(this: Elips2dObj; p: Pnt2dObj; s: cfloat): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Elips2d.hxx".}
proc transform*(this: var Elips2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "gp_Elips2d.hxx".}
proc transformed*(this: Elips2dObj; t: Trsf2dObj): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Elips2d.hxx".}
proc translate*(this: var Elips2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
proc translated*(this: Elips2dObj; v: Vec2dObj): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips2d.hxx".}
proc translate*(this: var Elips2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
proc translated*(this: Elips2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Elips2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Elips2d.hxx".}
