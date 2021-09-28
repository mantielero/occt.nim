##  Created on: 1992-08-06
##  Created by: Laurent BUCHARD
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Lin"
discard "forward decl of IntAna_Quadric"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
type
  IntAnaIntConicQuad* {.importcpp: "IntAna_IntConicQuad",
                       header: "IntAna_IntConicQuad.hxx", bycopy.} = object ## ! Empty
                                                                       ## constructor.


proc constructIntAnaIntConicQuad*(): IntAnaIntConicQuad {.constructor,
    importcpp: "IntAna_IntConicQuad(@)", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(L: Lin; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; L: Lin; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(c: Circ; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; c: Circ; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(e: Elips; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; e: Elips; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(p: Parab; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; p: Parab; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(h: Hypr; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; h: Hypr; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(L: Lin; p: Pln; tolang: cfloat; tol: cfloat = 0;
                                 len: cfloat = 0): IntAnaIntConicQuad {.constructor,
    importcpp: "IntAna_IntConicQuad(@)", header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; L: Lin; p: Pln; tolang: cfloat;
             tol: cfloat = 0; len: cfloat = 0) {.importcpp: "Perform",
    header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(c: Circ; p: Pln; tolang: cfloat; tol: cfloat): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; c: Circ; p: Pln; tolang: cfloat; tol: cfloat) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(e: Elips; p: Pln; tolang: cfloat; tol: cfloat): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; e: Elips; p: Pln; tolang: cfloat; tol: cfloat) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(pb: Parab; p: Pln; tolang: cfloat): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; pb: Parab; p: Pln; tolang: cfloat) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(h: Hypr; p: Pln; tolang: cfloat): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; h: Hypr; p: Pln; tolang: cfloat) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc isDone*(this: IntAnaIntConicQuad): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntAna_IntConicQuad.hxx".}
proc isInQuadric*(this: IntAnaIntConicQuad): bool {.noSideEffect,
    importcpp: "IsInQuadric", header: "IntAna_IntConicQuad.hxx".}
proc isParallel*(this: IntAnaIntConicQuad): bool {.noSideEffect,
    importcpp: "IsParallel", header: "IntAna_IntConicQuad.hxx".}
proc nbPoints*(this: IntAnaIntConicQuad): cint {.noSideEffect, importcpp: "NbPoints",
    header: "IntAna_IntConicQuad.hxx".}
proc point*(this: IntAnaIntConicQuad; n: cint): Pnt {.noSideEffect, importcpp: "Point",
    header: "IntAna_IntConicQuad.hxx".}
proc paramOnConic*(this: IntAnaIntConicQuad; n: cint): cfloat {.noSideEffect,
    importcpp: "ParamOnConic", header: "IntAna_IntConicQuad.hxx".}

























