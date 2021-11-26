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
  Hypr2d* {.importcpp: "gp_Hypr2d", header: "gp_Hypr2d.hxx", bycopy.} = object


proc `new`*(this: var Hypr2d; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr2d::operator new", header: "gp_Hypr2d.hxx".}
proc `delete`*(this: var Hypr2d; theAddress: pointer) {.
    importcpp: "gp_Hypr2d::operator delete", header: "gp_Hypr2d.hxx".}
proc `new[]`*(this: var Hypr2d; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr2d::operator new[]", header: "gp_Hypr2d.hxx".}
proc `delete[]`*(this: var Hypr2d; theAddress: pointer) {.
    importcpp: "gp_Hypr2d::operator delete[]", header: "gp_Hypr2d.hxx".}
proc `new`*(this: var Hypr2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Hypr2d::operator new", header: "gp_Hypr2d.hxx".}
proc `delete`*(this: var Hypr2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Hypr2d::operator delete", header: "gp_Hypr2d.hxx".}
proc constructHypr2d*(): Hypr2d {.constructor, importcpp: "gp_Hypr2d(@)",
                               header: "gp_Hypr2d.hxx".}
proc constructHypr2d*(majorAxis: Ax2d; majorRadius: StandardReal;
                     minorRadius: StandardReal; sense: StandardBoolean = true): Hypr2d {.
    constructor, importcpp: "gp_Hypr2d(@)", header: "gp_Hypr2d.hxx".}
proc constructHypr2d*(a: Ax22d; majorRadius: StandardReal; minorRadius: StandardReal): Hypr2d {.
    constructor, importcpp: "gp_Hypr2d(@)", header: "gp_Hypr2d.hxx".}
proc setLocation*(this: var Hypr2d; p: Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Hypr2d.hxx".}
proc setMajorRadius*(this: var Hypr2d; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "gp_Hypr2d.hxx".}
proc setMinorRadius*(this: var Hypr2d; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "gp_Hypr2d.hxx".}
proc setAxis*(this: var Hypr2d; a: Ax22d) {.importcpp: "SetAxis",
                                      header: "gp_Hypr2d.hxx".}
proc setXAxis*(this: var Hypr2d; a: Ax2d) {.importcpp: "SetXAxis",
                                      header: "gp_Hypr2d.hxx".}
proc setYAxis*(this: var Hypr2d; a: Ax2d) {.importcpp: "SetYAxis",
                                      header: "gp_Hypr2d.hxx".}
proc asymptote1*(this: Hypr2d): Ax2d {.noSideEffect, importcpp: "Asymptote1",
                                   header: "gp_Hypr2d.hxx".}
proc asymptote2*(this: Hypr2d): Ax2d {.noSideEffect, importcpp: "Asymptote2",
                                   header: "gp_Hypr2d.hxx".}
proc coefficients*(this: Hypr2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: "gp_Hypr2d.hxx".}
proc conjugateBranch1*(this: Hypr2d): Hypr2d {.noSideEffect,
    importcpp: "ConjugateBranch1", header: "gp_Hypr2d.hxx".}
proc conjugateBranch2*(this: Hypr2d): Hypr2d {.noSideEffect,
    importcpp: "ConjugateBranch2", header: "gp_Hypr2d.hxx".}
proc directrix1*(this: Hypr2d): Ax2d {.noSideEffect, importcpp: "Directrix1",
                                   header: "gp_Hypr2d.hxx".}
proc directrix2*(this: Hypr2d): Ax2d {.noSideEffect, importcpp: "Directrix2",
                                   header: "gp_Hypr2d.hxx".}
proc eccentricity*(this: Hypr2d): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "gp_Hypr2d.hxx".}
proc focal*(this: Hypr2d): StandardReal {.noSideEffect, importcpp: "Focal",
                                      header: "gp_Hypr2d.hxx".}
proc focus1*(this: Hypr2d): Pnt2d {.noSideEffect, importcpp: "Focus1",
                                header: "gp_Hypr2d.hxx".}
proc focus2*(this: Hypr2d): Pnt2d {.noSideEffect, importcpp: "Focus2",
                                header: "gp_Hypr2d.hxx".}
proc location*(this: Hypr2d): Pnt2d {.noSideEffect, importcpp: "Location",
                                  header: "gp_Hypr2d.hxx".}
proc majorRadius*(this: Hypr2d): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: "gp_Hypr2d.hxx".}
proc minorRadius*(this: Hypr2d): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: "gp_Hypr2d.hxx".}
proc otherBranch*(this: Hypr2d): Hypr2d {.noSideEffect, importcpp: "OtherBranch",
                                      header: "gp_Hypr2d.hxx".}
proc parameter*(this: Hypr2d): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: "gp_Hypr2d.hxx".}
proc axis*(this: Hypr2d): Ax22d {.noSideEffect, importcpp: "Axis",
                              header: "gp_Hypr2d.hxx".}
proc xAxis*(this: Hypr2d): Ax2d {.noSideEffect, importcpp: "XAxis",
                              header: "gp_Hypr2d.hxx".}
proc yAxis*(this: Hypr2d): Ax2d {.noSideEffect, importcpp: "YAxis",
                              header: "gp_Hypr2d.hxx".}
proc reverse*(this: var Hypr2d) {.importcpp: "Reverse", header: "gp_Hypr2d.hxx".}
proc reversed*(this: Hypr2d): Hypr2d {.noSideEffect, importcpp: "Reversed",
                                   header: "gp_Hypr2d.hxx".}
proc isDirect*(this: Hypr2d): StandardBoolean {.noSideEffect, importcpp: "IsDirect",
    header: "gp_Hypr2d.hxx".}
proc mirror*(this: var Hypr2d; p: Pnt2d) {.importcpp: "Mirror", header: "gp_Hypr2d.hxx".}
proc mirrored*(this: Hypr2d; p: Pnt2d): Hypr2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Hypr2d.hxx".}
proc mirror*(this: var Hypr2d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Hypr2d.hxx".}
proc mirrored*(this: Hypr2d; a: Ax2d): Hypr2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Hypr2d.hxx".}
proc rotate*(this: var Hypr2d; p: Pnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Hypr2d.hxx".}
proc rotated*(this: Hypr2d; p: Pnt2d; ang: StandardReal): Hypr2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Hypr2d.hxx".}
proc scale*(this: var Hypr2d; p: Pnt2d; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Hypr2d.hxx".}
proc scaled*(this: Hypr2d; p: Pnt2d; s: StandardReal): Hypr2d {.noSideEffect,
    importcpp: "Scaled", header: "gp_Hypr2d.hxx".}
proc transform*(this: var Hypr2d; t: Trsf2d) {.importcpp: "Transform",
    header: "gp_Hypr2d.hxx".}
proc transformed*(this: Hypr2d; t: Trsf2d): Hypr2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Hypr2d.hxx".}
proc translate*(this: var Hypr2d; v: Vec2d) {.importcpp: "Translate",
                                        header: "gp_Hypr2d.hxx".}
proc translated*(this: Hypr2d; v: Vec2d): Hypr2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Hypr2d.hxx".}
proc translate*(this: var Hypr2d; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Translate",
    header: "gp_Hypr2d.hxx".}
proc translated*(this: Hypr2d; p1: Pnt2d; p2: Pnt2d): Hypr2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Hypr2d.hxx".}