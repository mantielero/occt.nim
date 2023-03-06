import extrema_types
import ../gp/gp_types
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
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"


proc newExtrema_ExtPElC*(): Extrema_ExtPElC {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: gp_Pnt; C: gp_Lin; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Lin; Tol: cfloat; Uinf: cfloat;
             Usup: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: gp_Pnt; C: gp_Circ; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Circ; Tol: cfloat; Uinf: cfloat;
             Usup: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: gp_Pnt; C: gp_Elips; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Elips; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: gp_Pnt; C: gp_Hypr; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Hypr; Tol: cfloat; Uinf: cfloat;
             Usup: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: gp_Pnt; C: gp_Parab; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Parab; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC.hxx".}
proc IsDone*(this: Extrema_ExtPElC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_ExtPElC.hxx".}
proc NbExt*(this: Extrema_ExtPElC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_ExtPElC.hxx".}
proc SquareDistance*(this: Extrema_ExtPElC; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPElC.hxx".}
proc IsMin*(this: Extrema_ExtPElC; N: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ExtPElC.hxx".}
proc Point*(this: Extrema_ExtPElC; N: cint): Extrema_POnCurv {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPElC.hxx".}