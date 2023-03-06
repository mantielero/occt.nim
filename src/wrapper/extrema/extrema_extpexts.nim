import extrema_types
import ../gp/gp_types
import ../standard/standard_types
import ../geomadaptor/geomadaptor_types
##  Created on: 1999-09-16
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


proc newExtrema_ExtPExtS*(): Extrema_ExtPExtS {.cdecl, constructor,
    importcpp: "Extrema_ExtPExtS(@)", header: "Extrema_ExtPExtS.hxx".}
proc newExtrema_ExtPExtS*(P: gp_Pnt;
                         S: Handle[GeomAdaptor_SurfaceOfLinearExtrusion];
                         Umin: cfloat; Usup: cfloat; Vmin: cfloat; Vsup: cfloat;
                         TolU: cfloat; TolV: cfloat): Extrema_ExtPExtS {.cdecl,
    constructor, importcpp: "Extrema_ExtPExtS(@)", header: "Extrema_ExtPExtS.hxx".}
proc newExtrema_ExtPExtS*(P: gp_Pnt;
                         S: Handle[GeomAdaptor_SurfaceOfLinearExtrusion];
                         TolU: cfloat; TolV: cfloat): Extrema_ExtPExtS {.cdecl,
    constructor, importcpp: "Extrema_ExtPExtS(@)", header: "Extrema_ExtPExtS.hxx".}
proc Initialize*(this: var Extrema_ExtPExtS;
                S: Handle[GeomAdaptor_SurfaceOfLinearExtrusion]; Uinf: cfloat;
                Usup: cfloat; Vinf: cfloat; Vsup: cfloat; TolU: cfloat; TolV: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_ExtPExtS.hxx".}
proc Perform*(this: var Extrema_ExtPExtS; P: gp_Pnt) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPExtS.hxx".}
proc IsDone*(this: Extrema_ExtPExtS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "Extrema_ExtPExtS.hxx".}
proc NbExt*(this: Extrema_ExtPExtS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        header: "Extrema_ExtPExtS.hxx".}
proc SquareDistance*(this: Extrema_ExtPExtS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPExtS.hxx".}
proc Point*(this: Extrema_ExtPExtS; N: cint): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPExtS.hxx".}