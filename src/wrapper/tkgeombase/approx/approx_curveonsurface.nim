import approx_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import ../../tkg2d/adaptor2d/adaptor2d_types
import ../../tkmath/geomabs/geomabs_types
import ../../tkg3d/geom/geom_types
import ../../tkg2d/geom2d/geom2d_types





##  Created on: 1997-09-30
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



proc newApproxCurveOnSurface*(c2d: Handle[Adaptor2dHCurve2d];
                             surf: Handle[Adaptor3dHSurface]; first: cfloat;
                             last: cfloat; tol: cfloat; continuity: GeomAbsShape;
                             maxDegree: cint; maxSegments: cint;
                             only3d: bool = false; only2d: bool = false): ApproxCurveOnSurface {.
    cdecl, constructor, importcpp: "Approx_CurveOnSurface(@)", header: "Approx_CurveOnSurface.hxx".}
proc newApproxCurveOnSurface*(theC2D: Handle[Adaptor2dHCurve2d];
                             theSurf: Handle[Adaptor3dHSurface]; theFirst: cfloat;
                             theLast: cfloat; theTol: cfloat): ApproxCurveOnSurface {.
    cdecl, constructor, importcpp: "Approx_CurveOnSurface(@)", header: "Approx_CurveOnSurface.hxx".}
proc isDone*(this: ApproxCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Approx_CurveOnSurface.hxx".}
proc hasResult*(this: ApproxCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Approx_CurveOnSurface.hxx".}
proc curve3d*(this: ApproxCurveOnSurface): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "Curve3d", header: "Approx_CurveOnSurface.hxx".}
proc maxError3d*(this: ApproxCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError3d", header: "Approx_CurveOnSurface.hxx".}
proc curve2d*(this: ApproxCurveOnSurface): Handle[Geom2dBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "Curve2d", header: "Approx_CurveOnSurface.hxx".}
proc maxError2dU*(this: ApproxCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2dU", header: "Approx_CurveOnSurface.hxx".}
proc maxError2dV*(this: ApproxCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2dV", header: "Approx_CurveOnSurface.hxx".}
proc perform*(this: var ApproxCurveOnSurface; theMaxSegments: cint;
             theMaxDegree: cint; theContinuity: GeomAbsShape;
             theOnly3d: bool = false; theOnly2d: bool = false) {.cdecl,
    importcpp: "Perform", header: "Approx_CurveOnSurface.hxx".}


