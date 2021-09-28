##  Created on: 1991-05-15
##  Created by: Isabelle GRIGNON
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Cylinder"
discard "forward decl of IntAna_Quadric"
discard "forward decl of gp_Cone"
discard "forward decl of IntAna_Curve"
discard "forward decl of gp_Pnt"
type
  IntAnaIntQuadQuad* {.importcpp: "IntAna_IntQuadQuad",
                      header: "IntAna_IntQuadQuad.hxx", bycopy.} = object ## ! Empty Constructor
                                                                     ## ! Set the next and previous fields. Private method.


proc constructIntAnaIntQuadQuad*(): IntAnaIntQuadQuad {.constructor,
    importcpp: "IntAna_IntQuadQuad(@)", header: "IntAna_IntQuadQuad.hxx".}
proc constructIntAnaIntQuadQuad*(c: Cylinder; q: IntAnaQuadric; tol: cfloat): IntAnaIntQuadQuad {.
    constructor, importcpp: "IntAna_IntQuadQuad(@)",
    header: "IntAna_IntQuadQuad.hxx".}
proc constructIntAnaIntQuadQuad*(c: Cone; q: IntAnaQuadric; tol: cfloat): IntAnaIntQuadQuad {.
    constructor, importcpp: "IntAna_IntQuadQuad(@)",
    header: "IntAna_IntQuadQuad.hxx".}
proc perform*(this: var IntAnaIntQuadQuad; c: Cylinder; q: IntAnaQuadric; tol: cfloat) {.
    importcpp: "Perform", header: "IntAna_IntQuadQuad.hxx".}
proc perform*(this: var IntAnaIntQuadQuad; c: Cone; q: IntAnaQuadric; tol: cfloat) {.
    importcpp: "Perform", header: "IntAna_IntQuadQuad.hxx".}
proc isDone*(this: IntAnaIntQuadQuad): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntAna_IntQuadQuad.hxx".}
proc identicalElements*(this: IntAnaIntQuadQuad): bool {.noSideEffect,
    importcpp: "IdenticalElements", header: "IntAna_IntQuadQuad.hxx".}
proc nbCurve*(this: IntAnaIntQuadQuad): cint {.noSideEffect, importcpp: "NbCurve",
    header: "IntAna_IntQuadQuad.hxx".}
proc curve*(this: IntAnaIntQuadQuad; n: cint): IntAnaCurve {.noSideEffect,
    importcpp: "Curve", header: "IntAna_IntQuadQuad.hxx".}
proc nbPnt*(this: IntAnaIntQuadQuad): cint {.noSideEffect, importcpp: "NbPnt",
    header: "IntAna_IntQuadQuad.hxx".}
proc point*(this: IntAnaIntQuadQuad; n: cint): Pnt {.noSideEffect, importcpp: "Point",
    header: "IntAna_IntQuadQuad.hxx".}
proc parameters*(this: IntAnaIntQuadQuad; n: cint; u1: var cfloat; u2: var cfloat) {.
    noSideEffect, importcpp: "Parameters", header: "IntAna_IntQuadQuad.hxx".}
proc hasNextCurve*(this: IntAnaIntQuadQuad; i: cint): bool {.noSideEffect,
    importcpp: "HasNextCurve", header: "IntAna_IntQuadQuad.hxx".}
proc nextCurve*(this: IntAnaIntQuadQuad; i: cint; theOpposite: var bool): cint {.
    noSideEffect, importcpp: "NextCurve", header: "IntAna_IntQuadQuad.hxx".}
proc hasPreviousCurve*(this: IntAnaIntQuadQuad; i: cint): bool {.noSideEffect,
    importcpp: "HasPreviousCurve", header: "IntAna_IntQuadQuad.hxx".}
proc previousCurve*(this: IntAnaIntQuadQuad; i: cint; theOpposite: var bool): cint {.
    noSideEffect, importcpp: "PreviousCurve", header: "IntAna_IntQuadQuad.hxx".}

























