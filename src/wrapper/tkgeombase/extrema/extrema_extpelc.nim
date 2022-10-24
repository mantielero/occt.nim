import extrema_types

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
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Extrema_POnCurv"


proc newExtremaExtPElC*(): ExtremaExtPElC {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc newExtremaExtPElC*(p: PntObj; c: LinObj; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: PntObj; c: LinObj; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", header: "Extrema_ExtPElC.hxx".}
proc newExtremaExtPElC*(p: PntObj; c: CircObj; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: PntObj; c: CircObj; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", header: "Extrema_ExtPElC.hxx".}
proc newExtremaExtPElC*(p: PntObj; c: ElipsObj; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: PntObj; c: ElipsObj; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", header: "Extrema_ExtPElC.hxx".}
proc newExtremaExtPElC*(p: PntObj; c: HyprObj; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: PntObj; c: HyprObj; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", header: "Extrema_ExtPElC.hxx".}
proc newExtremaExtPElC*(p: PntObj; c: ParabObj; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: PntObj; c: ParabObj; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", header: "Extrema_ExtPElC.hxx".}
proc isDone*(this: ExtremaExtPElC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_ExtPElC.hxx".}
proc nbExt*(this: ExtremaExtPElC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      header: "Extrema_ExtPElC.hxx".}
proc squareDistance*(this: ExtremaExtPElC; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPElC.hxx".}
proc isMin*(this: ExtremaExtPElC; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ExtPElC.hxx".}
proc point*(this: ExtremaExtPElC; n: cint): ExtremaPOnCurv {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPElC.hxx".}
