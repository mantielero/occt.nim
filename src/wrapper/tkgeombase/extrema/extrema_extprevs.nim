import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geomadaptor/geomadaptor_types
import extrema_types





##  Created on: 1999-09-21
##  Created by: Edward AGAPOV
##  Copyright (c) 1999 Matra Datavision
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





proc newExtremaExtPRevS*(): ExtremaExtPRevS {.cdecl, constructor,
    importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc newExtremaExtPRevS*(p: PntObj; s: Handle[GeomAdaptorHSurfaceOfRevolution];
                        umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat;
                        tolU: cfloat; tolV: cfloat): ExtremaExtPRevS {.cdecl,
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc newExtremaExtPRevS*(p: PntObj; s: Handle[GeomAdaptorHSurfaceOfRevolution];
                        tolU: cfloat; tolV: cfloat): ExtremaExtPRevS {.cdecl,
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc initialize*(this: var ExtremaExtPRevS;
                s: Handle[GeomAdaptorHSurfaceOfRevolution]; umin: cfloat;
                usup: cfloat; vmin: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_ExtPRevS.hxx".}
proc perform*(this: var ExtremaExtPRevS; p: PntObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPRevS.hxx".}
proc isDone*(this: ExtremaExtPRevS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_ExtPRevS.hxx".}
proc nbExt*(this: ExtremaExtPRevS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_ExtPRevS.hxx".}
proc squareDistance*(this: ExtremaExtPRevS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPRevS.hxx".}
proc point*(this: ExtremaExtPRevS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPRevS.hxx".}


