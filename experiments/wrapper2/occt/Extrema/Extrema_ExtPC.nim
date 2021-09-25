##  Created on: 1991-02-26
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
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_ExtPElC"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_EPCOfExtPC"
discard "forward decl of Extrema_PCFOfEPCOfExtPC"
type
  ExtremaExtPC* {.importcpp: "Extrema_ExtPC", header: "Extrema_ExtPC.hxx", bycopy.} = object


proc constructExtremaExtPC*(): ExtremaExtPC {.constructor,
    importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc constructExtremaExtPC*(p: Pnt; c: Adaptor3dCurve; uinf: float; usup: float;
                           tolF: float = 1.0e-10): ExtremaExtPC {.constructor,
    importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc constructExtremaExtPC*(p: Pnt; c: Adaptor3dCurve; tolF: float = 1.0e-10): ExtremaExtPC {.
    constructor, importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc initialize*(this: var ExtremaExtPC; c: Adaptor3dCurve; uinf: float; usup: float;
                tolF: float = 1.0e-10) {.importcpp: "Initialize",
                                     header: "Extrema_ExtPC.hxx".}
proc perform*(this: var ExtremaExtPC; p: Pnt) {.importcpp: "Perform",
    header: "Extrema_ExtPC.hxx".}
proc isDone*(this: ExtremaExtPC): bool {.noSideEffect, importcpp: "IsDone",
                                     header: "Extrema_ExtPC.hxx".}
proc squareDistance*(this: ExtremaExtPC; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtPC.hxx".}
proc nbExt*(this: ExtremaExtPC): int {.noSideEffect, importcpp: "NbExt",
                                   header: "Extrema_ExtPC.hxx".}
proc isMin*(this: ExtremaExtPC; n: int): bool {.noSideEffect, importcpp: "IsMin",
    header: "Extrema_ExtPC.hxx".}
proc point*(this: ExtremaExtPC; n: int): ExtremaPOnCurv {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPC.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPC; dist1: var float; dist2: var float;
                            p1: var Pnt; p2: var Pnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPC.hxx".}
