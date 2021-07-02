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

discard "forward decl of Approx_SweepFunction"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of AdvApprox_Cutting"
type
  ApproxSweepApproximation* {.importcpp: "Approx_SweepApproximation",
                             header: "Approx_SweepApproximation.hxx", bycopy.} = object


proc constructApproxSweepApproximation*(`func`: Handle[ApproxSweepFunction]): ApproxSweepApproximation {.
    constructor, importcpp: "Approx_SweepApproximation(@)",
    header: "Approx_SweepApproximation.hxx".}
proc perform*(this: var ApproxSweepApproximation; first: StandardReal;
             last: StandardReal; tol3d: StandardReal; boundTol: StandardReal;
             tol2d: StandardReal; tolAngular: StandardReal;
             continuity: GeomAbsShape = geomAbsC0; degmax: StandardInteger = 11;
             segmax: StandardInteger = 50) {.importcpp: "Perform",
    header: "Approx_SweepApproximation.hxx".}
proc eval*(this: var ApproxSweepApproximation; parameter: StandardReal;
          derivativeRequest: StandardInteger; first: StandardReal;
          last: StandardReal; result: var StandardReal): StandardInteger {.
    importcpp: "Eval", header: "Approx_SweepApproximation.hxx".}
proc isDone*(this: ApproxSweepApproximation): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_SweepApproximation.hxx".}
proc surfShape*(this: ApproxSweepApproximation; uDegree: var StandardInteger;
               vDegree: var StandardInteger; nbUPoles: var StandardInteger;
               nbVPoles: var StandardInteger; nbUKnots: var StandardInteger;
               nbVKnots: var StandardInteger) {.noSideEffect,
    importcpp: "SurfShape", header: "Approx_SweepApproximation.hxx".}
proc surface*(this: ApproxSweepApproximation; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "Approx_SweepApproximation.hxx".}
proc uDegree*(this: ApproxSweepApproximation): StandardInteger {.noSideEffect,
    importcpp: "UDegree", header: "Approx_SweepApproximation.hxx".}
proc vDegree*(this: ApproxSweepApproximation): StandardInteger {.noSideEffect,
    importcpp: "VDegree", header: "Approx_SweepApproximation.hxx".}
proc surfPoles*(this: ApproxSweepApproximation): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "Approx_SweepApproximation.hxx".}
proc surfWeights*(this: ApproxSweepApproximation): TColStdArray2OfReal {.
    noSideEffect, importcpp: "SurfWeights", header: "Approx_SweepApproximation.hxx".}
proc surfUKnots*(this: ApproxSweepApproximation): TColStdArray1OfReal {.
    noSideEffect, importcpp: "SurfUKnots", header: "Approx_SweepApproximation.hxx".}
proc surfVKnots*(this: ApproxSweepApproximation): TColStdArray1OfReal {.
    noSideEffect, importcpp: "SurfVKnots", header: "Approx_SweepApproximation.hxx".}
proc surfUMults*(this: ApproxSweepApproximation): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "SurfUMults", header: "Approx_SweepApproximation.hxx".}
proc surfVMults*(this: ApproxSweepApproximation): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "SurfVMults", header: "Approx_SweepApproximation.hxx".}
proc maxErrorOnSurf*(this: ApproxSweepApproximation): StandardReal {.noSideEffect,
    importcpp: "MaxErrorOnSurf", header: "Approx_SweepApproximation.hxx".}
proc averageErrorOnSurf*(this: ApproxSweepApproximation): StandardReal {.
    noSideEffect, importcpp: "AverageErrorOnSurf",
    header: "Approx_SweepApproximation.hxx".}
proc nbCurves2d*(this: ApproxSweepApproximation): StandardInteger {.noSideEffect,
    importcpp: "NbCurves2d", header: "Approx_SweepApproximation.hxx".}
proc curves2dShape*(this: ApproxSweepApproximation; degree: var StandardInteger;
                   nbPoles: var StandardInteger; nbKnots: var StandardInteger) {.
    noSideEffect, importcpp: "Curves2dShape",
    header: "Approx_SweepApproximation.hxx".}
proc curve2d*(this: ApproxSweepApproximation; index: StandardInteger;
             tPoles: var TColgpArray1OfPnt2d; tKnots: var TColStdArray1OfReal;
             tMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "Approx_SweepApproximation.hxx".}
proc curves2dDegree*(this: ApproxSweepApproximation): StandardInteger {.
    noSideEffect, importcpp: "Curves2dDegree",
    header: "Approx_SweepApproximation.hxx".}
proc curve2dPoles*(this: ApproxSweepApproximation; index: StandardInteger): TColgpArray1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles",
    header: "Approx_SweepApproximation.hxx".}
proc curves2dKnots*(this: ApproxSweepApproximation): TColStdArray1OfReal {.
    noSideEffect, importcpp: "Curves2dKnots",
    header: "Approx_SweepApproximation.hxx".}
proc curves2dMults*(this: ApproxSweepApproximation): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "Curves2dMults",
    header: "Approx_SweepApproximation.hxx".}
proc max2dError*(this: ApproxSweepApproximation; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Max2dError", header: "Approx_SweepApproximation.hxx".}
proc average2dError*(this: ApproxSweepApproximation; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Average2dError",
    header: "Approx_SweepApproximation.hxx".}
proc tolCurveOnSurf*(this: ApproxSweepApproximation; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "TolCurveOnSurf",
    header: "Approx_SweepApproximation.hxx".}
proc dump*(this: ApproxSweepApproximation; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Approx_SweepApproximation.hxx".}

