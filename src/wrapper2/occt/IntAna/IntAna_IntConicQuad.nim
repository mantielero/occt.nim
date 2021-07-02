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
proc constructIntAnaIntConicQuad*(L: GpLin; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; L: GpLin; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(c: GpCirc; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; c: GpCirc; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(e: GpElips; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; e: GpElips; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(p: GpParab; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; p: GpParab; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(h: GpHypr; q: IntAnaQuadric): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; h: GpHypr; q: IntAnaQuadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(L: GpLin; p: GpPln; tolang: StandardReal;
                                 tol: StandardReal = 0; len: StandardReal = 0): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; L: GpLin; p: GpPln; tolang: StandardReal;
             tol: StandardReal = 0; len: StandardReal = 0) {.importcpp: "Perform",
    header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(c: GpCirc; p: GpPln; tolang: StandardReal;
                                 tol: StandardReal): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; c: GpCirc; p: GpPln; tolang: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(e: GpElips; p: GpPln; tolang: StandardReal;
                                 tol: StandardReal): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; e: GpElips; p: GpPln; tolang: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(pb: GpParab; p: GpPln; tolang: StandardReal): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; pb: GpParab; p: GpPln; tolang: StandardReal) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAnaIntConicQuad*(h: GpHypr; p: GpPln; tolang: StandardReal): IntAnaIntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc perform*(this: var IntAnaIntConicQuad; h: GpHypr; p: GpPln; tolang: StandardReal) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc isDone*(this: IntAnaIntConicQuad): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_IntConicQuad.hxx".}
proc isInQuadric*(this: IntAnaIntConicQuad): StandardBoolean {.noSideEffect,
    importcpp: "IsInQuadric", header: "IntAna_IntConicQuad.hxx".}
proc isParallel*(this: IntAnaIntConicQuad): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "IntAna_IntConicQuad.hxx".}
proc nbPoints*(this: IntAnaIntConicQuad): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "IntAna_IntConicQuad.hxx".}
proc point*(this: IntAnaIntConicQuad; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "Point", header: "IntAna_IntConicQuad.hxx".}
proc paramOnConic*(this: IntAnaIntConicQuad; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "ParamOnConic", header: "IntAna_IntConicQuad.hxx".}

