import extrema_types

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
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC"


proc newExtremaEPCOfELPCOfLocateExtPC*(): ExtremaEPCOfELPCOfLocateExtPC {.cdecl,
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC(@)", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc newExtremaEPCOfELPCOfLocateExtPC*(p: PntObj; c: Adaptor3dCurve; nbU: cint;
                                      tolU: cfloat; tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc newExtremaEPCOfELPCOfLocateExtPC*(p: PntObj; c: Adaptor3dCurve; nbU: cint;
                                      umin: cfloat; usup: cfloat; tolU: cfloat;
                                      tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC; c: Adaptor3dCurve;
                nbU: cint; tolU: cfloat; tolF: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC; c: Adaptor3dCurve;
                nbU: cint; umin: cfloat; usup: cfloat; tolU: cfloat; tolF: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC; c: Adaptor3dCurve) {.cdecl,
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC; nbU: cint; umin: cfloat;
                usup: cfloat; tolU: cfloat; tolF: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc perform*(this: var ExtremaEPCOfELPCOfLocateExtPC; p: PntObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc isDone*(this: ExtremaEPCOfELPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc nbExt*(this: ExtremaEPCOfELPCOfLocateExtPC): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc squareDistance*(this: ExtremaEPCOfELPCOfLocateExtPC; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc isMin*(this: ExtremaEPCOfELPCOfLocateExtPC; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc point*(this: ExtremaEPCOfELPCOfLocateExtPC; n: cint): ExtremaPOnCurv {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
