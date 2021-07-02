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
proc constructExtremaExtPC*(p: GpPnt; c: Adaptor3dCurve; uinf: StandardReal;
                           usup: StandardReal; tolF: StandardReal = 1.0e-10): ExtremaExtPC {.
    constructor, importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc constructExtremaExtPC*(p: GpPnt; c: Adaptor3dCurve; tolF: StandardReal = 1.0e-10): ExtremaExtPC {.
    constructor, importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc initialize*(this: var ExtremaExtPC; c: Adaptor3dCurve; uinf: StandardReal;
                usup: StandardReal; tolF: StandardReal = 1.0e-10) {.
    importcpp: "Initialize", header: "Extrema_ExtPC.hxx".}
proc perform*(this: var ExtremaExtPC; p: GpPnt) {.importcpp: "Perform",
    header: "Extrema_ExtPC.hxx".}
proc isDone*(this: ExtremaExtPC): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPC.hxx".}
proc squareDistance*(this: ExtremaExtPC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPC.hxx".}
proc nbExt*(this: ExtremaExtPC): StandardInteger {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_ExtPC.hxx".}
proc isMin*(this: ExtremaExtPC; n: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_ExtPC.hxx".}
proc point*(this: ExtremaExtPC; n: StandardInteger): ExtremaPOnCurv {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPC.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPC; dist1: var StandardReal;
                            dist2: var StandardReal; p1: var GpPnt; p2: var GpPnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPC.hxx".}

