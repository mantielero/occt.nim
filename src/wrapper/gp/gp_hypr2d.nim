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

proc hypr2d*(): gp_Hypr2d {.cdecl, constructor, importcpp: "gp_Hypr2d(@)",
                         header: "gp_Hypr2d.hxx".}
proc hypr2d*(majorAxis: Ax2dObj; majorRadius: cfloat; minorRadius: cfloat;
               sense: bool = true): gp_Hypr2d {.cdecl, constructor,
                                        importcpp: "gp_Hypr2d(@)", header: "gp_Hypr2d.hxx".}
proc hypr2d*(a: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): gp_Hypr2d {.cdecl,
    constructor, importcpp: "gp_Hypr2d(@)", header: "gp_Hypr2d.hxx".}
proc setLocation*(this: var gp_Hypr2d; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Hypr2d.hxx".}
proc setMajorRadius*(this: var gp_Hypr2d; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "gp_Hypr2d.hxx".}
proc setMinorRadius*(this: var gp_Hypr2d; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "gp_Hypr2d.hxx".}
proc setAxis*(this: var gp_Hypr2d; a: Ax22dObj) {.cdecl, importcpp: "SetAxis", header: "gp_Hypr2d.hxx".}
proc setXAxis*(this: var gp_Hypr2d; a: Ax2dObj) {.cdecl, importcpp: "SetXAxis", header: "gp_Hypr2d.hxx".}
proc setYAxis*(this: var gp_Hypr2d; a: Ax2dObj) {.cdecl, importcpp: "SetYAxis", header: "gp_Hypr2d.hxx".}
proc asymptote1*(this: gp_Hypr2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "Asymptote1",
                                   header: "gp_Hypr2d.hxx".}
proc asymptote2*(this: gp_Hypr2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "Asymptote2",
                                   header: "gp_Hypr2d.hxx".}
proc coefficients*(this: gp_Hypr2d; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat;
                  e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Hypr2d.hxx".}
proc conjugateBranch1*(this: gp_Hypr2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", header: "gp_Hypr2d.hxx".}
proc conjugateBranch2*(this: gp_Hypr2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", header: "gp_Hypr2d.hxx".}
proc directrix1*(this: gp_Hypr2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix1",
                                   header: "gp_Hypr2d.hxx".}
proc directrix2*(this: gp_Hypr2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix2",
                                   header: "gp_Hypr2d.hxx".}
proc eccentricity*(this: gp_Hypr2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Eccentricity", header: "gp_Hypr2d.hxx".}
proc focal*(this: gp_Hypr2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                header: "gp_Hypr2d.hxx".}
proc focus1*(this: gp_Hypr2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                header: "gp_Hypr2d.hxx".}
proc focus2*(this: gp_Hypr2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                header: "gp_Hypr2d.hxx".}
proc location*(this: gp_Hypr2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Hypr2d.hxx".}
proc majorRadius*(this: gp_Hypr2d): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MajorRadius", header: "gp_Hypr2d.hxx".}
proc minorRadius*(this: gp_Hypr2d): cfloat {.noSideEffect, cdecl,
                                      importcpp: "MinorRadius", header: "gp_Hypr2d.hxx".}
proc otherBranch*(this: gp_Hypr2d): gp_Hypr2d {.noSideEffect, cdecl,
                                      importcpp: "OtherBranch", header: "gp_Hypr2d.hxx".}
proc parameter*(this: gp_Hypr2d): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                    header: "gp_Hypr2d.hxx".}
proc axis*(this: gp_Hypr2d): Ax22dObj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Hypr2d.hxx".}
proc xAxis*(this: gp_Hypr2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "XAxis",
                              header: "gp_Hypr2d.hxx".}
proc yAxis*(this: gp_Hypr2d): Ax2dObj {.noSideEffect, cdecl, importcpp: "YAxis",
                              header: "gp_Hypr2d.hxx".}
proc reverse*(this: var gp_Hypr2d) {.cdecl, importcpp: "Reverse", header: "gp_Hypr2d.hxx".}
proc reversed*(this: gp_Hypr2d): gp_Hypr2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                   header: "gp_Hypr2d.hxx".}
proc isDirect*(this: gp_Hypr2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                 header: "gp_Hypr2d.hxx".}
proc mirror*(this: var gp_Hypr2d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Hypr2d.hxx".}
proc mirrored*(this: gp_Hypr2d; p: gp_Pnt2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Hypr2d.hxx".}
proc mirror*(this: var gp_Hypr2d; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Hypr2d.hxx".}
proc mirrored*(this: gp_Hypr2d; a: Ax2dObj): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Hypr2d.hxx".}
proc rotate*(this: var gp_Hypr2d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Hypr2d.hxx".}
proc rotated*(this: gp_Hypr2d; p: gp_Pnt2d; ang: cfloat): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Hypr2d.hxx".}
proc scale*(this: var gp_Hypr2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Hypr2d.hxx".}
proc scaled*(this: gp_Hypr2d; p: gp_Pnt2d; s: cfloat): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Hypr2d.hxx".}
proc transform*(this: var gp_Hypr2d; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "gp_Hypr2d.hxx".}
proc transformed*(this: gp_Hypr2d; t: Trsf2dObj): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Hypr2d.hxx".}
proc translate*(this: var gp_Hypr2d; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
                                        header: "gp_Hypr2d.hxx".}
proc translated*(this: gp_Hypr2d; v: gp_Vec2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Hypr2d.hxx".}
proc translate*(this: var gp_Hypr2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Hypr2d.hxx".}
proc translated*(this: gp_Hypr2d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Hypr2d.hxx".}
