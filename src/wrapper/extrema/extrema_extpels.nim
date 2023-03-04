import extrema_types
import ../tkmath/gp/gp_types
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Sphere"

proc newExtrema_ExtPElS*(): Extrema_ExtPElS {.cdecl, constructor,
    importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc newExtrema_ExtPElS*(P: gp_Pnt; S: gp_Cylinder; Tol: cfloat): Extrema_ExtPElS {.
    cdecl, constructor, importcpp: "Extrema_ExtPElS(@)",
    header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Cylinder; Tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtrema_ExtPElS*(P: gp_Pnt; S: gp_Pln; Tol: cfloat): Extrema_ExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Pln; Tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtrema_ExtPElS*(P: gp_Pnt; S: gp_Cone; Tol: cfloat): Extrema_ExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Cone; Tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtrema_ExtPElS*(P: gp_Pnt; S: gp_Torus; Tol: cfloat): Extrema_ExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Torus; Tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc newExtrema_ExtPElS*(P: gp_Pnt; S: gp_Sphere; Tol: cfloat): Extrema_ExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Sphere; Tol: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc IsDone*(this: Extrema_ExtPElS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_ExtPElS.hxx".}
proc NbExt*(this: Extrema_ExtPElS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_ExtPElS.hxx".}
proc SquareDistance*(this: Extrema_ExtPElS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPElS.hxx".}
proc Point*(this: Extrema_ExtPElS; N: cint): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPElS.hxx".}