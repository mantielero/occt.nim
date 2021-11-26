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
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC"
type
  ExtremaELPCOfLocateExtPC* {.importcpp: "Extrema_ELPCOfLocateExtPC",
                             header: "Extrema_ELPCOfLocateExtPC.hxx", bycopy.} = object


proc constructExtremaELPCOfLocateExtPC*(): ExtremaELPCOfLocateExtPC {.constructor,
    importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc constructExtremaELPCOfLocateExtPC*(p: Pnt; c: Adaptor3dCurve; uinf: cfloat;
                                       usup: cfloat; tolF: cfloat = 1.0e-10): ExtremaELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc constructExtremaELPCOfLocateExtPC*(p: Pnt; c: Adaptor3dCurve;
                                       tolF: cfloat = 1.0e-10): ExtremaELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaELPCOfLocateExtPC; c: Adaptor3dCurve; uinf: cfloat;
                usup: cfloat; tolF: cfloat = 1.0e-10) {.importcpp: "Initialize",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc perform*(this: var ExtremaELPCOfLocateExtPC; p: Pnt) {.importcpp: "Perform",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc isDone*(this: ExtremaELPCOfLocateExtPC): bool {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc squareDistance*(this: ExtremaELPCOfLocateExtPC; n: cint): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc nbExt*(this: ExtremaELPCOfLocateExtPC): cint {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc isMin*(this: ExtremaELPCOfLocateExtPC; n: cint): bool {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc point*(this: ExtremaELPCOfLocateExtPC; n: cint): ExtremaPOnCurv {.noSideEffect,
    importcpp: "Point", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc trimmedSquareDistances*(this: ExtremaELPCOfLocateExtPC; dist1: var cfloat;
                            dist2: var cfloat; p1: var Pnt; p2: var Pnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ELPCOfLocateExtPC.hxx".}

























