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
  GpCirc2d* {.importcpp: "gp_Circ2d", header: "gp_Circ2d.hxx", bycopy.} = object ## ! creates an
                                                                         ## indefinite circle.


proc constructGpCirc2d*(): GpCirc2d {.cdecl, constructor, importcpp: "gp_Circ2d(@)",
                                   dynlib: tkmath.}
proc constructGpCirc2d*(xAxis: GpAx2d; radius: cfloat; sense: bool = standardTrue): GpCirc2d {.
    cdecl, constructor, importcpp: "gp_Circ2d(@)", dynlib: tkmath.}
proc constructGpCirc2d*(axis: GpAx22d; radius: cfloat): GpCirc2d {.cdecl, constructor,
    importcpp: "gp_Circ2d(@)", dynlib: tkmath.}
proc setLocation*(this: var GpCirc2d; p: GpPnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setXAxis*(this: var GpCirc2d; a: GpAx2d) {.cdecl, importcpp: "SetXAxis",
    dynlib: tkmath.}
proc setAxis*(this: var GpCirc2d; a: GpAx22d) {.cdecl, importcpp: "SetAxis",
    dynlib: tkmath.}
proc setYAxis*(this: var GpCirc2d; a: GpAx2d) {.cdecl, importcpp: "SetYAxis",
    dynlib: tkmath.}
proc setRadius*(this: var GpCirc2d; radius: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkmath.}
proc area*(this: GpCirc2d): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                                 dynlib: tkmath.}
proc coefficients*(this: GpCirc2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", dynlib: tkmath.}
proc contains*(this: GpCirc2d; p: GpPnt2d; linearTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Contains", dynlib: tkmath.}
proc distance*(this: GpCirc2d; p: GpPnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: GpCirc2d; p: GpPnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc length*(this: GpCirc2d): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                                   dynlib: tkmath.}
proc location*(this: GpCirc2d): GpPnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                      dynlib: tkmath.}
proc radius*(this: GpCirc2d): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                   dynlib: tkmath.}
proc axis*(this: GpCirc2d): GpAx22d {.noSideEffect, cdecl, importcpp: "Axis",
                                  dynlib: tkmath.}
proc position*(this: GpCirc2d): GpAx22d {.noSideEffect, cdecl, importcpp: "Position",
                                      dynlib: tkmath.}
proc xAxis*(this: GpCirc2d): GpAx2d {.noSideEffect, cdecl, importcpp: "XAxis",
                                  dynlib: tkmath.}
proc yAxis*(this: GpCirc2d): GpAx2d {.noSideEffect, cdecl, importcpp: "YAxis",
                                  dynlib: tkmath.}
proc reverse*(this: var GpCirc2d) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GpCirc2d): GpCirc2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                       dynlib: tkmath.}
proc isDirect*(this: GpCirc2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                   dynlib: tkmath.}
proc mirror*(this: var GpCirc2d; p: GpPnt2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCirc2d; p: GpPnt2d): GpCirc2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc mirror*(this: var GpCirc2d; a: GpAx2d) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: GpCirc2d; a: GpAx2d): GpCirc2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", dynlib: tkmath.}
proc rotate*(this: var GpCirc2d; p: GpPnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: GpCirc2d; p: GpPnt2d; ang: cfloat): GpCirc2d {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var GpCirc2d; p: GpPnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    dynlib: tkmath.}
proc scaled*(this: GpCirc2d; p: GpPnt2d; s: cfloat): GpCirc2d {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var GpCirc2d; t: GpTrsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformed*(this: GpCirc2d; t: GpTrsf2d): GpCirc2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var GpCirc2d; v: GpVec2d) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: GpCirc2d; v: GpVec2d): GpCirc2d {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}
proc translate*(this: var GpCirc2d; p1: GpPnt2d; p2: GpPnt2d) {.cdecl,
    importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: GpCirc2d; p1: GpPnt2d; p2: GpPnt2d): GpCirc2d {.noSideEffect,
    cdecl, importcpp: "Translated", dynlib: tkmath.}