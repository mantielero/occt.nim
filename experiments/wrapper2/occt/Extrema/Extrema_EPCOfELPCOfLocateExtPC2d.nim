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
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC2d"
type
  ExtremaEPCOfELPCOfLocateExtPC2d* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx",
                                    bycopy.} = object


proc constructExtremaEPCOfELPCOfLocateExtPC2d*(): ExtremaEPCOfELPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc constructExtremaEPCOfELPCOfLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d;
    nbU: cint; tolU: cfloat; tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc constructExtremaEPCOfELPCOfLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d;
    nbU: cint; umin: cfloat; usup: cfloat; tolU: cfloat; tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                nbU: cint; tolU: cfloat; tolF: cfloat) {.importcpp: "Initialize",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                nbU: cint; umin: cfloat; usup: cfloat; tolU: cfloat; tolF: cfloat) {.
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d) {.
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; nbU: cint; umin: cfloat;
                usup: cfloat; tolU: cfloat; tolF: cfloat) {.importcpp: "Initialize",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc perform*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; p: Pnt2d) {.
    importcpp: "Perform", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc isDone*(this: ExtremaEPCOfELPCOfLocateExtPC2d): bool {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc nbExt*(this: ExtremaEPCOfELPCOfLocateExtPC2d): cint {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc squareDistance*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): cfloat {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc isMin*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): bool {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc point*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}

























