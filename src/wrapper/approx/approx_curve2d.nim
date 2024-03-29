import approx_types
import ../standard/standard_types
import ../adaptor2d/adaptor2d_types
import ../geomabs/geomabs_types
import ../geom2d/geom2d_types





##  Created on: 1997-10-28
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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



proc newApproxCurve2d*(c2d: Handle[Adaptor2dHCurve2d]; first: cfloat; last: cfloat;
                      tolU: cfloat; tolV: cfloat; continuity: GeomAbsShape;
                      maxDegree: cint; maxSegments: cint): ApproxCurve2d {.cdecl,
    constructor, importcpp: "Approx_Curve2d(@)", header: "Approx_Curve2d.hxx".}
proc isDone*(this: ApproxCurve2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Approx_Curve2d.hxx".}
proc hasResult*(this: ApproxCurve2d): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Approx_Curve2d.hxx".}
proc curve*(this: ApproxCurve2d): Handle[Geom2dBSplineCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", header: "Approx_Curve2d.hxx".}
proc maxError2dU*(this: ApproxCurve2d): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2dU", header: "Approx_Curve2d.hxx".}
proc maxError2dV*(this: ApproxCurve2d): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2dV", header: "Approx_Curve2d.hxx".}


