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

proc circ2d*(): Circ2dObj {.cdecl, constructor, importcpp: "gp_Circ2d(@)",
                         header: "gp_Circ2d.hxx".}
proc circ2d*(xAxis: Ax2dObj; radius: cfloat; sense: bool = true): Circ2dObj {.cdecl,
    constructor, importcpp: "gp_Circ2d(@)", header: "gp_Circ2d.hxx".}
proc circ2d*(axis: Ax22dObj; radius: cfloat): Circ2dObj {.cdecl, constructor,
    importcpp: "gp_Circ2d(@)", header: "gp_Circ2d.hxx".}
proc setLocation*(this: var Circ2dObj; p: Pnt2dObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Circ2d.hxx".}
proc setXAxis*(this: var Circ2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetXAxis", header: "gp_Circ2d.hxx".}
proc setAxis*(this: var Circ2dObj; a: Ax22dObj) {.cdecl, importcpp: "SetAxis", header: "gp_Circ2d.hxx".}
proc setYAxis*(this: var Circ2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetYAxis", header: "gp_Circ2d.hxx".}
proc setRadius*(this: var Circ2dObj; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Circ2d.hxx".}
proc area*(this: Circ2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                               header: "gp_Circ2d.hxx".}
proc coefficients*(this: Circ2dObj; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat;
                  e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Circ2d.hxx".}
proc contains*(this: Circ2dObj; p: Pnt2dObj; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "gp_Circ2d.hxx".}
proc distance*(this: Circ2dObj; p: Pnt2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Circ2d.hxx".}
proc squareDistance*(this: Circ2dObj; p: Pnt2dObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Circ2d.hxx".}
proc length*(this: Circ2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                                 header: "gp_Circ2d.hxx".}
proc location*(this: Circ2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Circ2d.hxx".}
proc radius*(this: Circ2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                 header: "gp_Circ2d.hxx".}
proc axis*(this: Circ2dObj): Ax22dObj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Circ2d.hxx".}
proc position*(this: Circ2dObj): Ax22dObj {.noSideEffect, cdecl, importcpp: "Position",
                                  header: "gp_Circ2d.hxx".}
proc xAxis*(this: Circ2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "XAxis",
                              header: "gp_Circ2d.hxx".}
proc yAxis*(this: Circ2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "YAxis",
                              header: "gp_Circ2d.hxx".}
proc reverse*(this: var Circ2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Circ2d.hxx".}
proc reversed*(this: Circ2dObj): Circ2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                   header: "gp_Circ2d.hxx".}
proc isDirect*(this: Circ2dObj): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                 header: "gp_Circ2d.hxx".}
proc mirror*(this: var Circ2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Circ2d.hxx".}
proc mirrored*(this: Circ2dObj; p: Pnt2dObj): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Circ2d.hxx".}
proc mirror*(this: var Circ2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Circ2d.hxx".}
proc mirrored*(this: Circ2dObj; a: Ax2dObj): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Circ2d.hxx".}
proc rotate*(this: var Circ2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Circ2d.hxx".}
proc rotated*(this: Circ2dObj; p: Pnt2dObj; ang: cfloat): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Circ2d.hxx".}
proc scale*(this: var Circ2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Circ2d.hxx".}
proc scaled*(this: Circ2dObj; p: Pnt2dObj; s: cfloat): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Circ2d.hxx".}
proc transform*(this: var Circ2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "gp_Circ2d.hxx".}
proc transformed*(this: Circ2dObj; t: Trsf2dObj): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Circ2d.hxx".}
proc translate*(this: var Circ2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate",
                                        header: "gp_Circ2d.hxx".}
proc translated*(this: Circ2dObj; v: Vec2dObj): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Circ2d.hxx".}
proc translate*(this: var Circ2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Circ2d.hxx".}
proc translated*(this: Circ2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Circ2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Circ2d.hxx".}
