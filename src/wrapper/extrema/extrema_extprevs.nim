import extrema_types
import ../tkmath/gp/gp_types
import ../tkernel/standard/standard_types
import ../tkg3d/geomadaptor/geomadaptor_types
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


proc newExtrema_ExtPRevS*(): Extrema_ExtPRevS {.cdecl, constructor,
    importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc newExtrema_ExtPRevS*(P: PntObj; S: Handle[GeomAdaptor_SurfaceOfRevolution];
                         Umin: cfloat; Usup: cfloat; Vmin: cfloat; Vsup: cfloat;
                         TolU: cfloat; TolV: cfloat): Extrema_ExtPRevS {.cdecl,
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc newExtrema_ExtPRevS*(P: PntObj; S: Handle[GeomAdaptor_SurfaceOfRevolution];
                         TolU: cfloat; TolV: cfloat): Extrema_ExtPRevS {.cdecl,
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc Initialize*(this: var Extrema_ExtPRevS;
                S: Handle[GeomAdaptor_SurfaceOfRevolution]; Umin: cfloat;
                Usup: cfloat; Vmin: cfloat; Vsup: cfloat; TolU: cfloat; TolV: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_ExtPRevS.hxx".}
proc Perform*(this: var Extrema_ExtPRevS; P: PntObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPRevS.hxx".}
proc IsDone*(this: Extrema_ExtPRevS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "Extrema_ExtPRevS.hxx".}
proc NbExt*(this: Extrema_ExtPRevS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        header: "Extrema_ExtPRevS.hxx".}
proc SquareDistance*(this: Extrema_ExtPRevS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPRevS.hxx".}
proc Point*(this: Extrema_ExtPRevS; N: cint): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPRevS.hxx".}