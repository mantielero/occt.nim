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


proc constructElips2d*(): Elips2d {.constructor, importcpp: "gp_Elips2d(@)",
                                 header: "gp_Elips2d.hxx".}
proc constructElips2d*(majorAxis: Ax2d; majorRadius: float; minorRadius: float;
                      sense: bool = true): Elips2d {.constructor,
    importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc constructElips2d*(a: Ax22d; majorRadius: float; minorRadius: float): Elips2d {.
    constructor, importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc setLocation*(this: var Elips2d; p: Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Elips2d.hxx".}
proc setMajorRadius*(this: var Elips2d; majorRadius: float) {.
    importcpp: "SetMajorRadius", header: "gp_Elips2d.hxx".}
proc setMinorRadius*(this: var Elips2d; minorRadius: float) {.
    importcpp: "SetMinorRadius", header: "gp_Elips2d.hxx".}
proc setAxis*(this: var Elips2d; a: Ax22d) {.importcpp: "SetAxis",
                                       header: "gp_Elips2d.hxx".}
proc setXAxis*(this: var Elips2d; a: Ax2d) {.importcpp: "SetXAxis",
                                       header: "gp_Elips2d.hxx".}
proc setYAxis*(this: var Elips2d; a: Ax2d) {.importcpp: "SetYAxis",
                                       header: "gp_Elips2d.hxx".}
proc area*(this: Elips2d): float {.noSideEffect, importcpp: "Area",
                               header: "gp_Elips2d.hxx".}
proc coefficients*(this: Elips2d; a: var float; b: var float; c: var float; d: var float;
                  e: var float; f: var float) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Elips2d.hxx".}
proc directrix1*(this: Elips2d): Ax2d {.noSideEffect, importcpp: "Directrix1",
                                    header: "gp_Elips2d.hxx".}
proc directrix2*(this: Elips2d): Ax2d {.noSideEffect, importcpp: "Directrix2",
                                    header: "gp_Elips2d.hxx".}
proc eccentricity*(this: Elips2d): float {.noSideEffect, importcpp: "Eccentricity",
                                       header: "gp_Elips2d.hxx".}
proc focal*(this: Elips2d): float {.noSideEffect, importcpp: "Focal",
                                header: "gp_Elips2d.hxx".}
proc focus1*(this: Elips2d): Pnt2d {.noSideEffect, importcpp: "Focus1",
                                 header: "gp_Elips2d.hxx".}
proc focus2*(this: Elips2d): Pnt2d {.noSideEffect, importcpp: "Focus2",
                                 header: "gp_Elips2d.hxx".}
proc location*(this: Elips2d): Pnt2d {.noSideEffect, importcpp: "Location",
                                   header: "gp_Elips2d.hxx".}
proc majorRadius*(this: Elips2d): float {.noSideEffect, importcpp: "MajorRadius",
                                      header: "gp_Elips2d.hxx".}
proc minorRadius*(this: Elips2d): float {.noSideEffect, importcpp: "MinorRadius",
                                      header: "gp_Elips2d.hxx".}
proc parameter*(this: Elips2d): float {.noSideEffect, importcpp: "Parameter",
                                    header: "gp_Elips2d.hxx".}
proc axis*(this: Elips2d): Ax22d {.noSideEffect, importcpp: "Axis",
                               header: "gp_Elips2d.hxx".}
proc xAxis*(this: Elips2d): Ax2d {.noSideEffect, importcpp: "XAxis",
                               header: "gp_Elips2d.hxx".}
proc yAxis*(this: Elips2d): Ax2d {.noSideEffect, importcpp: "YAxis",
                               header: "gp_Elips2d.hxx".}
proc reverse*(this: var Elips2d) {.importcpp: "Reverse", header: "gp_Elips2d.hxx".}
proc reversed*(this: Elips2d): Elips2d {.noSideEffect, importcpp: "Reversed",
                                     header: "gp_Elips2d.hxx".}
proc isDirect*(this: Elips2d): bool {.noSideEffect, importcpp: "IsDirect",
                                  header: "gp_Elips2d.hxx".}
proc mirror*(this: var Elips2d; p: Pnt2d) {.importcpp: "Mirror",
                                      header: "gp_Elips2d.hxx".}
proc mirrored*(this: Elips2d; p: Pnt2d): Elips2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Elips2d.hxx".}
proc mirror*(this: var Elips2d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Elips2d.hxx".}
proc mirrored*(this: Elips2d; a: Ax2d): Elips2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Elips2d.hxx".}
proc rotate*(this: var Elips2d; p: Pnt2d; ang: float) {.importcpp: "Rotate",
    header: "gp_Elips2d.hxx".}
proc rotated*(this: Elips2d; p: Pnt2d; ang: float): Elips2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Elips2d.hxx".}
proc scale*(this: var Elips2d; p: Pnt2d; s: float) {.importcpp: "Scale",
    header: "gp_Elips2d.hxx".}
proc scaled*(this: Elips2d; p: Pnt2d; s: float): Elips2d {.noSideEffect,
    importcpp: "Scaled", header: "gp_Elips2d.hxx".}
proc transform*(this: var Elips2d; t: Trsf2d) {.importcpp: "Transform",
    header: "gp_Elips2d.hxx".}
proc transformed*(this: Elips2d; t: Trsf2d): Elips2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Elips2d.hxx".}
proc translate*(this: var Elips2d; v: Vec2d) {.importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
proc translated*(this: Elips2d; v: Vec2d): Elips2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Elips2d.hxx".}
proc translate*(this: var Elips2d; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
proc translated*(this: Elips2d; p1: Pnt2d; p2: Pnt2d): Elips2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Elips2d.hxx".}
