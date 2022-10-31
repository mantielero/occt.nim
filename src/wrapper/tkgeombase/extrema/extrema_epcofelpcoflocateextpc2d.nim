import ../../tkmath/gp/gp_types
import ../../tkg2d/adaptor2d/adaptor2d_types
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



proc newExtremaEPCOfELPCOfLocateExtPC2d*(): ExtremaEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc newExtremaEPCOfELPCOfLocateExtPC2d*(p: Pnt2dObj; c: Adaptor2dCurve2d; nbU: cint;
                                        tolU: cfloat; tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc newExtremaEPCOfELPCOfLocateExtPC2d*(p: Pnt2dObj; c: Adaptor2dCurve2d; nbU: cint;
                                        umin: cfloat; usup: cfloat; tolU: cfloat;
                                        tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                nbU: cint; tolU: cfloat; tolF: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                nbU: cint; umin: cfloat; usup: cfloat; tolU: cfloat; tolF: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d) {.
    cdecl, importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; nbU: cint; umin: cfloat;
                usup: cfloat; tolU: cfloat; tolF: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc perform*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; p: Pnt2dObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc isDone*(this: ExtremaEPCOfELPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc nbExt*(this: ExtremaEPCOfELPCOfLocateExtPC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc squareDistance*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc isMin*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsMin", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}
proc point*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): ExtremaPOnCurv2d {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx".}


