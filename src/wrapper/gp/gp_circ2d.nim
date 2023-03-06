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

proc circ2d*(): gp_Circ2d {.cdecl, constructor, importcpp: "gp_Circ2d(@)",
                         header: "gp_Circ2d.hxx".}
proc circ2d*(xAxis: gp_Ax2d; radius: cfloat; sense: bool = true): gp_Circ2d {.cdecl,
    constructor, importcpp: "gp_Circ2d(@)", header: "gp_Circ2d.hxx".}
proc circ2d*(axis: gp_Ax22d; radius: cfloat): gp_Circ2d {.cdecl, constructor,
    importcpp: "gp_Circ2d(@)", header: "gp_Circ2d.hxx".}
proc setLocation*(this: var gp_Circ2d; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Circ2d.hxx".}
proc setXAxis*(this: var gp_Circ2d; a: gp_Ax2d) {.cdecl, importcpp: "SetXAxis", header: "gp_Circ2d.hxx".}
proc setAxis*(this: var gp_Circ2d; a: gp_Ax22d) {.cdecl, importcpp: "SetAxis", header: "gp_Circ2d.hxx".}
proc setYAxis*(this: var gp_Circ2d; a: gp_Ax2d) {.cdecl, importcpp: "SetYAxis", header: "gp_Circ2d.hxx".}
proc setRadius*(this: var gp_Circ2d; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Circ2d.hxx".}
proc area*(this: gp_Circ2d): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                               header: "gp_Circ2d.hxx".}
proc coefficients*(this: gp_Circ2d; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat;
                  e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Circ2d.hxx".}
proc contains*(this: gp_Circ2d; p: gp_Pnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "gp_Circ2d.hxx".}
proc distance*(this: gp_Circ2d; p: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Circ2d.hxx".}
proc squareDistance*(this: gp_Circ2d; p: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Circ2d.hxx".}
proc length*(this: gp_Circ2d): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                                 header: "gp_Circ2d.hxx".}
proc location*(this: gp_Circ2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                  header: "gp_Circ2d.hxx".}
proc radius*(this: gp_Circ2d): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                 header: "gp_Circ2d.hxx".}
proc axis*(this: gp_Circ2d): gp_Ax22d {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Circ2d.hxx".}
proc position*(this: gp_Circ2d): gp_Ax22d {.noSideEffect, cdecl, importcpp: "Position",
                                  header: "gp_Circ2d.hxx".}
proc xAxis*(this: gp_Circ2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "XAxis",
                              header: "gp_Circ2d.hxx".}
proc yAxis*(this: gp_Circ2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "YAxis",
                              header: "gp_Circ2d.hxx".}
proc reverse*(this: var gp_Circ2d) {.cdecl, importcpp: "Reverse", header: "gp_Circ2d.hxx".}
proc reversed*(this: gp_Circ2d): gp_Circ2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                   header: "gp_Circ2d.hxx".}
proc isDirect*(this: gp_Circ2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                 header: "gp_Circ2d.hxx".}
proc mirror*(this: var gp_Circ2d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Circ2d.hxx".}
proc mirrored*(this: gp_Circ2d; p: gp_Pnt2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Circ2d.hxx".}
proc mirror*(this: var gp_Circ2d; a: gp_Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Circ2d.hxx".}
proc mirrored*(this: gp_Circ2d; a: gp_Ax2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Circ2d.hxx".}
proc rotate*(this: var gp_Circ2d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Circ2d.hxx".}
proc rotated*(this: gp_Circ2d; p: gp_Pnt2d; ang: cfloat): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Circ2d.hxx".}
proc scale*(this: var gp_Circ2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Circ2d.hxx".}
proc scaled*(this: gp_Circ2d; p: gp_Pnt2d; s: cfloat): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Circ2d.hxx".}
proc transform*(this: var gp_Circ2d; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
    header: "gp_Circ2d.hxx".}
proc transformed*(this: gp_Circ2d; t: gp_Trsf2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Circ2d.hxx".}
proc translate*(this: var gp_Circ2d; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
                                        header: "gp_Circ2d.hxx".}
proc translated*(this: gp_Circ2d; v: gp_Vec2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Circ2d.hxx".}
proc translate*(this: var gp_Circ2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Circ2d.hxx".}
proc translated*(this: gp_Circ2d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Circ2d.hxx".}
