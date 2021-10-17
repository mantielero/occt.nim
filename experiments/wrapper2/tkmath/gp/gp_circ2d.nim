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
  Circ2d* {.importcpp: "gp_Circ2d", header: "gp_Circ2d.hxx", bycopy.} = object ## ! creates an
                                                                       ## indefinite circle.


proc newCirc2d*(): Circ2d {.cdecl, constructor, importcpp: "gp_Circ2d(@)",
                         dynlib: tkmath.}
proc newCirc2d*(xAxis: Ax2d; radius: cfloat; sense: bool = true): Circ2d {.cdecl,
    constructor, importcpp: "gp_Circ2d(@)", dynlib: tkmath.}
proc newCirc2d*(axis: Ax22d; radius: cfloat): Circ2d {.cdecl, constructor,
    importcpp: "gp_Circ2d(@)", dynlib: tkmath.}
proc setLocation*(this: var Circ2d; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setXAxis*(this: var Circ2d; a: Ax2d) {.cdecl, importcpp: "SetXAxis", dynlib: tkmath.}
proc setAxis*(this: var Circ2d; a: Ax22d) {.cdecl, importcpp: "SetAxis", dynlib: tkmath.}
proc setYAxis*(this: var Circ2d; a: Ax2d) {.cdecl, importcpp: "SetYAxis", dynlib: tkmath.}
proc setRadius*(this: var Circ2d; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc area*(this: Circ2d): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                               dynlib: tkmath.}
proc coefficients*(this: Circ2d; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat;
                  e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc contains*(this: Circ2d; p: Pnt2d; linearTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc distance*(this: Circ2d; p: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: Circ2d; p: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc length*(this: Circ2d): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                                 dynlib: tkmath.}
proc location*(this: Circ2d): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                  dynlib: tkmath.}
proc radius*(this: Circ2d): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                 dynlib: tkmath.}
proc axis*(this: Circ2d): Ax22d {.noSideEffect, cdecl, importcpp: "Axis", dynlib: tkmath.}
proc position*(this: Circ2d): Ax22d {.noSideEffect, cdecl, importcpp: "Position",
                                  dynlib: tkmath.}
proc xAxis*(this: Circ2d): Ax2d {.noSideEffect, cdecl, importcpp: "XAxis",
                              dynlib: tkmath.}
proc yAxis*(this: Circ2d): Ax2d {.noSideEffect, cdecl, importcpp: "YAxis",
                              dynlib: tkmath.}
proc reverse*(this: var Circ2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Circ2d): Circ2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                   dynlib: tkmath.}
proc isDirect*(this: Circ2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                 dynlib: tkmath.}
proc mirror*(this: var Circ2d; p: Pnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Circ2d; p: Pnt2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var Circ2d; a: Ax2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Circ2d; a: Ax2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var Circ2d; p: Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Circ2d; p: Pnt2d; ang: cfloat): Circ2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Circ2d; p: Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: Circ2d; p: Pnt2d; s: cfloat): Circ2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Circ2d; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: Circ2d; t: Trsf2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Circ2d; v: Vec2d) {.cdecl, importcpp: "Translate",
                                        dynlib: tkmath.}
proc translated*(this: Circ2d; v: Vec2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var Circ2d; p1: Pnt2d; p2: Pnt2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Circ2d; p1: Pnt2d; p2: Pnt2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}