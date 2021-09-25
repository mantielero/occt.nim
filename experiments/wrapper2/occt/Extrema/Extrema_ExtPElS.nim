##  Created on: 1991-02-21
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Sphere"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaExtPElS* {.importcpp: "Extrema_ExtPElS", header: "Extrema_ExtPElS.hxx",
                   bycopy.} = object


proc constructExtremaExtPElS*(): ExtremaExtPElS {.constructor,
    importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: Pnt; s: Cylinder; tol: float): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Cylinder; tol: float) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: Pnt; s: Pln; tol: float): ExtremaExtPElS {.constructor,
    importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Pln; tol: float) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: Pnt; s: Cone; tol: float): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Cone; tol: float) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: Pnt; s: Torus; tol: float): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Torus; tol: float) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: Pnt; s: Sphere; tol: float): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Sphere; tol: float) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc isDone*(this: ExtremaExtPElS): bool {.noSideEffect, importcpp: "IsDone",
                                       header: "Extrema_ExtPElS.hxx".}
proc nbExt*(this: ExtremaExtPElS): int {.noSideEffect, importcpp: "NbExt",
                                     header: "Extrema_ExtPElS.hxx".}
proc squareDistance*(this: ExtremaExtPElS; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtPElS.hxx".}
proc point*(this: ExtremaExtPElS; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPElS.hxx".}
