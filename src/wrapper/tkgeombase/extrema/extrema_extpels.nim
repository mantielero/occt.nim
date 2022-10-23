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


proc newExtremaExtPElS*(): ExtremaExtPElS {.cdecl, constructor,
    importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc newExtremaExtPElS*(p: PntObj; s: CylinderObj; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: PntObj; s: CylinderObj; tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtremaExtPElS*(p: PntObj; s: PlnObj; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: PntObj; s: PlnObj; tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtremaExtPElS*(p: PntObj; s: ConeObj; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: PntObj; s: ConeObj; tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtremaExtPElS*(p: PntObj; s: TorusObj; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: PntObj; s: TorusObj; tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtremaExtPElS*(p: PntObj; s: SphereObj; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: PntObj; s: SphereObj; tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc isDone*(this: ExtremaExtPElS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_ExtPElS.hxx".}
proc nbExt*(this: ExtremaExtPElS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      header: "Extrema_ExtPElS.hxx".}
proc squareDistance*(this: ExtremaExtPElS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPElS.hxx".}
proc point*(this: ExtremaExtPElS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPElS.hxx".}