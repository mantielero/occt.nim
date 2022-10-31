import ../../tkmath/tcolgp/tcolgp_types
import approx_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types



##  Created on: 1997-06-24
##  Created by: Philippe MANGIN
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



proc newApproxSweepApproximation*(`func`: Handle[ApproxSweepFunction]): ApproxSweepApproximation {.
    cdecl, constructor, importcpp: "Approx_SweepApproximation(@)",
    header: "Approx_SweepApproximation.hxx".}
proc perform*(this: var ApproxSweepApproximation; first: cfloat; last: cfloat;
             tol3d: cfloat; boundTol: cfloat; tol2d: cfloat; tolAngular: cfloat;
             continuity: GeomAbsShape = geomAbsC0; degmax: cint = 11; segmax: cint = 50) {.
    cdecl, importcpp: "Perform", header: "Approx_SweepApproximation.hxx".}
proc eval*(this: var ApproxSweepApproximation; parameter: cfloat;
          derivativeRequest: cint; first: cfloat; last: cfloat; result: var cfloat): cint {.
    cdecl, importcpp: "Eval", header: "Approx_SweepApproximation.hxx".}
proc isDone*(this: ApproxSweepApproximation): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Approx_SweepApproximation.hxx".}
proc surfShape*(this: ApproxSweepApproximation; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  header: "Approx_SweepApproximation.hxx".}
proc surface*(this: ApproxSweepApproximation; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", header: "Approx_SweepApproximation.hxx".}
proc uDegree*(this: ApproxSweepApproximation): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "Approx_SweepApproximation.hxx".}
proc vDegree*(this: ApproxSweepApproximation): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "Approx_SweepApproximation.hxx".}
proc surfPoles*(this: ApproxSweepApproximation): TColgpArray2OfPnt {.noSideEffect,
    cdecl, importcpp: "SurfPoles", header: "Approx_SweepApproximation.hxx".}
proc surfWeights*(this: ApproxSweepApproximation): TColStdArray2OfReal {.
    noSideEffect, cdecl, importcpp: "SurfWeights", header: "Approx_SweepApproximation.hxx".}
proc surfUKnots*(this: ApproxSweepApproximation): TColStdArray1OfReal {.
    noSideEffect, cdecl, importcpp: "SurfUKnots", header: "Approx_SweepApproximation.hxx".}
proc surfVKnots*(this: ApproxSweepApproximation): TColStdArray1OfReal {.
    noSideEffect, cdecl, importcpp: "SurfVKnots", header: "Approx_SweepApproximation.hxx".}
proc surfUMults*(this: ApproxSweepApproximation): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "SurfUMults", header: "Approx_SweepApproximation.hxx".}
proc surfVMults*(this: ApproxSweepApproximation): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "SurfVMults", header: "Approx_SweepApproximation.hxx".}
proc maxErrorOnSurf*(this: ApproxSweepApproximation): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxErrorOnSurf", header: "Approx_SweepApproximation.hxx".}
proc averageErrorOnSurf*(this: ApproxSweepApproximation): cfloat {.noSideEffect,
    cdecl, importcpp: "AverageErrorOnSurf", header: "Approx_SweepApproximation.hxx".}
proc nbCurves2d*(this: ApproxSweepApproximation): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", header: "Approx_SweepApproximation.hxx".}
proc curves2dShape*(this: ApproxSweepApproximation; degree: var cint;
                   nbPoles: var cint; nbKnots: var cint) {.noSideEffect, cdecl,
    importcpp: "Curves2dShape", header: "Approx_SweepApproximation.hxx".}
proc curve2d*(this: ApproxSweepApproximation; index: cint;
             tPoles: var TColgpArray1OfPnt2d; tKnots: var TColStdArray1OfReal;
             tMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "Approx_SweepApproximation.hxx".}
proc curves2dDegree*(this: ApproxSweepApproximation): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", header: "Approx_SweepApproximation.hxx".}
proc curve2dPoles*(this: ApproxSweepApproximation; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", header: "Approx_SweepApproximation.hxx".}
proc curves2dKnots*(this: ApproxSweepApproximation): TColStdArray1OfReal {.
    noSideEffect, cdecl, importcpp: "Curves2dKnots", header: "Approx_SweepApproximation.hxx".}
proc curves2dMults*(this: ApproxSweepApproximation): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Curves2dMults", header: "Approx_SweepApproximation.hxx".}
proc max2dError*(this: ApproxSweepApproximation; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Max2dError", header: "Approx_SweepApproximation.hxx".}
proc average2dError*(this: ApproxSweepApproximation; index: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Average2dError", header: "Approx_SweepApproximation.hxx".}
proc tolCurveOnSurf*(this: ApproxSweepApproximation; index: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "TolCurveOnSurf", header: "Approx_SweepApproximation.hxx".}
proc dump*(this: ApproxSweepApproximation; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "Approx_SweepApproximation.hxx".}

