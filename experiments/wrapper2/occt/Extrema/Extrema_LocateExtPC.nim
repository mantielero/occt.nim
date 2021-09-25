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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_ExtPElC"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_ELPCOfLocateExtPC"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC"
discard "forward decl of Extrema_LocEPCOfLocateExtPC"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC"
type
  ExtremaLocateExtPC* {.importcpp: "Extrema_LocateExtPC",
                       header: "Extrema_LocateExtPC.hxx", bycopy.} = object


proc constructExtremaLocateExtPC*(): ExtremaLocateExtPC {.constructor,
    importcpp: "Extrema_LocateExtPC(@)", header: "Extrema_LocateExtPC.hxx".}
proc constructExtremaLocateExtPC*(p: Pnt; c: Adaptor3dCurve; u0: float; tolF: float): ExtremaLocateExtPC {.
    constructor, importcpp: "Extrema_LocateExtPC(@)",
    header: "Extrema_LocateExtPC.hxx".}
proc constructExtremaLocateExtPC*(p: Pnt; c: Adaptor3dCurve; u0: float; umin: float;
                                 usup: float; tolF: float): ExtremaLocateExtPC {.
    constructor, importcpp: "Extrema_LocateExtPC(@)",
    header: "Extrema_LocateExtPC.hxx".}
proc initialize*(this: var ExtremaLocateExtPC; c: Adaptor3dCurve; umin: float;
                usup: float; tolF: float) {.importcpp: "Initialize",
                                        header: "Extrema_LocateExtPC.hxx".}
proc perform*(this: var ExtremaLocateExtPC; p: Pnt; u0: float) {.importcpp: "Perform",
    header: "Extrema_LocateExtPC.hxx".}
proc isDone*(this: ExtremaLocateExtPC): bool {.noSideEffect, importcpp: "IsDone",
    header: "Extrema_LocateExtPC.hxx".}
proc squareDistance*(this: ExtremaLocateExtPC): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_LocateExtPC.hxx".}
proc isMin*(this: ExtremaLocateExtPC): bool {.noSideEffect, importcpp: "IsMin",
    header: "Extrema_LocateExtPC.hxx".}
proc point*(this: ExtremaLocateExtPC): ExtremaPOnCurv {.noSideEffect,
    importcpp: "Point", header: "Extrema_LocateExtPC.hxx".}
