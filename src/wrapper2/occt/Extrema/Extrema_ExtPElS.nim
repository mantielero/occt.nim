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
proc constructExtremaExtPElS*(p: GpPnt; s: GpCylinder; tol: StandardReal): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: GpPnt; s: GpCylinder; tol: StandardReal) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: GpPnt; s: GpPln; tol: StandardReal): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: GpPnt; s: GpPln; tol: StandardReal) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: GpPnt; s: GpCone; tol: StandardReal): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: GpPnt; s: GpCone; tol: StandardReal) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: GpPnt; s: GpTorus; tol: StandardReal): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: GpPnt; s: GpTorus; tol: StandardReal) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtremaExtPElS*(p: GpPnt; s: GpSphere; tol: StandardReal): ExtremaExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc perform*(this: var ExtremaExtPElS; p: GpPnt; s: GpSphere; tol: StandardReal) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc isDone*(this: ExtremaExtPElS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPElS.hxx".}
proc nbExt*(this: ExtremaExtPElS): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPElS.hxx".}
proc squareDistance*(this: ExtremaExtPElS; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPElS.hxx".}
proc point*(this: ExtremaExtPElS; n: StandardInteger): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPElS.hxx".}

