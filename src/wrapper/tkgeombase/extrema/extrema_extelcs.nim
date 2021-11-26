##  Created on: 1992-07-22
##  Created by: Laurent PAINNOT
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Lin"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Hypr"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaExtElCS* {.importcpp: "Extrema_ExtElCS", header: "Extrema_ExtElCS.hxx",
                   bycopy.} = object


proc newExtremaExtElCS*(): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Lin; s: Pln): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Pln) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Lin; s: Cylinder): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Cylinder) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Lin; s: Cone): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Cone) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Lin; s: Sphere): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Sphere) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Lin; s: Torus): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Torus) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Circ; s: Pln): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Pln) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Circ; s: Cylinder): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Cylinder) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Circ; s: Cone): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Cone) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Circ; s: Sphere): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Sphere) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Circ; s: Torus): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Torus) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc newExtremaExtElCS*(c: Hypr; s: Pln): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtElCS; c: Hypr; s: Pln) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtElCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       dynlib: tkgeombase.}
proc isParallel*(this: ExtremaExtElCS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtElCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtElCS; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc points*(this: ExtremaExtElCS; n: cint; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                   dynlib: tkgeombase.}