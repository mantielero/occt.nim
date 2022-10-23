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
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc hypr2d*(): Hypr2dObj {.cdecl, constructor, importcpp: "gp_Hypr2d(@)",
                         header: "gp_Hypr2d.hxx".}
proc hypr2d*(majorAxis: Ax2dObj; majorRadius: cfloat; minorRadius: cfloat;
               sense: bool = true): Hypr2dObj {.cdecl, constructor,
                                        importcpp: "gp_Hypr2d(@)", header: "gp_Hypr2d.hxx".}
proc hypr2d*(a: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): Hypr2dObj {.cdecl,
    constructor, importcpp: "gp_Hypr2d(@)", header: "gp_Hypr2d.hxx".}
proc setLocation*(this: var Hypr2dObj; p: Pnt2dObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Hypr2d.hxx".}
proc setMajorRadius*(this: var Hypr2dObj; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Hypr2d.hxx".}
proc setMinorRadius*(this: var Hypr2dObj; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Hypr2d.hxx".}
proc setAxis*(this: var Hypr2dObj; a: Ax22dObj) {.cdecl, importcpp: "SetAxis", header: "gp_Hypr2d.hxx".}
proc setXAxis*(this: var Hypr2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetXAxis", header: "gp_Hypr2d.hxx".}
proc setYAxis*(this: var Hypr2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetYAxis", header: "gp_Hypr2d.hxx".}
proc asymptote1*(this: Hypr2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                   header: "gp_Hypr2d.hxx".}
proc asymptote2*(this: Hypr2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                   header: "gp_Hypr2d.hxx".}
proc coefficients*(this: Hypr2dObj; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat;
                  e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Hypr2d.hxx".}
proc conjugateBranch1*(this: Hypr2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", header: "gp_Hypr2d.hxx".}
proc conjugateBranch2*(this: Hypr2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", header: "gp_Hypr2d.hxx".}
proc directrix1*(this: Hypr2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix1",
                                   header: "gp_Hypr2d.hxx".}
proc directrix2*(this: Hypr2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix2",
                                   header: "gp_Hypr2d.hxx".}
proc eccentricity*(this: Hypr2dObj): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Eccentricity", header: "gp_Hypr2d.hxx".}
proc focal*(this: Hypr2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                header: "gp_Hypr2d.hxx".}
proc focus1*(this: Hypr2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus1",
                                header: "gp_Hypr2d.hxx".}
proc focus2*(this: Hypr2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus2",
                                header: "gp_Hypr2d.hxx".}
proc location*(this: Hypr2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Hypr2d.hxx".}
proc majorRadius*(this: Hypr2dObj): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MajorRadius", header: "gp_Hypr2d.hxx".}
proc minorRadius*(this: Hypr2dObj): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MinorRadius", header: "gp_Hypr2d.hxx".}
proc otherBranch*(this: Hypr2dObj): Hypr2dObj {.noSideEffect, cdecl,
                                      importcpp: "OtherBranch", header: "gp_Hypr2d.hxx".}
proc parameter*(this: Hypr2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                    header: "gp_Hypr2d.hxx".}
proc axis*(this: Hypr2dObj): Ax22dObj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Hypr2d.hxx".}
proc xAxis*(this: Hypr2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "XAxis",
                              header: "gp_Hypr2d.hxx".}
proc yAxis*(this: Hypr2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "YAxis",
                              header: "gp_Hypr2d.hxx".}
proc reverse*(this: var Hypr2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Hypr2d.hxx".}
proc reversed*(this: Hypr2dObj): Hypr2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                   header: "gp_Hypr2d.hxx".}
proc isDirect*(this: Hypr2dObj): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                 header: "gp_Hypr2d.hxx".}
proc mirror*(this: var Hypr2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Hypr2d.hxx".}
proc mirrored*(this: Hypr2dObj; p: Pnt2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Hypr2d.hxx".}
proc mirror*(this: var Hypr2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Hypr2d.hxx".}
proc mirrored*(this: Hypr2dObj; a: Ax2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Hypr2d.hxx".}
proc rotate*(this: var Hypr2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Hypr2d.hxx".}
proc rotated*(this: Hypr2dObj; p: Pnt2dObj; ang: cfloat): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Hypr2d.hxx".}
proc scale*(this: var Hypr2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Hypr2d.hxx".}
proc scaled*(this: Hypr2dObj; p: Pnt2dObj; s: cfloat): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Hypr2d.hxx".}
proc transform*(this: var Hypr2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "gp_Hypr2d.hxx".}
proc transformed*(this: Hypr2dObj; t: Trsf2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Hypr2d.hxx".}
proc translate*(this: var Hypr2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate",
                                        header: "gp_Hypr2d.hxx".}
proc translated*(this: Hypr2dObj; v: Vec2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Hypr2d.hxx".}
proc translate*(this: var Hypr2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Hypr2d.hxx".}
proc translated*(this: Hypr2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Hypr2d.hxx".}
