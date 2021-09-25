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
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_ExtPElC2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Extrema_ELPCOfLocateExtPC2d"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC2d"
discard "forward decl of Extrema_LocEPCOfLocateExtPC2d"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC2d"
type
  ExtremaLocateExtPC2d* {.importcpp: "Extrema_LocateExtPC2d",
                         header: "Extrema_LocateExtPC2d.hxx", bycopy.} = object


proc constructExtremaLocateExtPC2d*(): ExtremaLocateExtPC2d {.constructor,
    importcpp: "Extrema_LocateExtPC2d(@)", header: "Extrema_LocateExtPC2d.hxx".}
proc constructExtremaLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; u0: float;
                                   tolF: float): ExtremaLocateExtPC2d {.
    constructor, importcpp: "Extrema_LocateExtPC2d(@)",
    header: "Extrema_LocateExtPC2d.hxx".}
proc constructExtremaLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; u0: float;
                                   umin: float; usup: float; tolF: float): ExtremaLocateExtPC2d {.
    constructor, importcpp: "Extrema_LocateExtPC2d(@)",
    header: "Extrema_LocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaLocateExtPC2d; c: Adaptor2dCurve2d; umin: float;
                usup: float; tolF: float) {.importcpp: "Initialize",
                                        header: "Extrema_LocateExtPC2d.hxx".}
proc perform*(this: var ExtremaLocateExtPC2d; p: Pnt2d; u0: float) {.
    importcpp: "Perform", header: "Extrema_LocateExtPC2d.hxx".}
proc isDone*(this: ExtremaLocateExtPC2d): bool {.noSideEffect, importcpp: "IsDone",
    header: "Extrema_LocateExtPC2d.hxx".}
proc squareDistance*(this: ExtremaLocateExtPC2d): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_LocateExtPC2d.hxx".}
proc isMin*(this: ExtremaLocateExtPC2d): bool {.noSideEffect, importcpp: "IsMin",
    header: "Extrema_LocateExtPC2d.hxx".}
proc point*(this: ExtremaLocateExtPC2d): ExtremaPOnCurv2d {.noSideEffect,
    importcpp: "Point", header: "Extrema_LocateExtPC2d.hxx".}
