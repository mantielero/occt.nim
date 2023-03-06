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

discard "forward decl of PntObj"
discard "forward decl of LinObj"
discard "forward decl of CircObj"
discard "forward decl of ElipsObj"
discard "forward decl of HyprObj"
discard "forward decl of ParabObj"


proc newExtrema_ExtPElC*(): Extrema_ExtPElC {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: PntObj; C: LinObj; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: PntObj; C: LinObj; Tol: cfloat; Uinf: cfloat;
             Usup: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: PntObj; C: CircObj; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: PntObj; C: CircObj; Tol: cfloat; Uinf: cfloat;
             Usup: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: PntObj; C: ElipsObj; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: PntObj; C: ElipsObj; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: PntObj; C: HyprObj; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: PntObj; C: HyprObj; Tol: cfloat; Uinf: cfloat;
             Usup: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_ExtPElC.hxx".}
proc newExtrema_ExtPElC*(P: PntObj; C: ParabObj; Tol: cfloat; Uinf: cfloat; Usup: cfloat): Extrema_ExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)",
    header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: PntObj; C: ParabObj; Tol: cfloat;
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