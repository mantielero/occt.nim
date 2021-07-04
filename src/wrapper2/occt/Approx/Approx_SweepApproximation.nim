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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_HArray2OfPnt,
  ../TColStd/TColStd_HArray2OfReal, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../TColgp/TColgp_SequenceOfArray1OfPnt2d,
  Approx_HArray1OfGTrsf2d, ../gp/gp_Vec, ../TColgp/TColgp_HArray1OfPnt,
  ../TColgp/TColgp_HArray1OfPnt2d, ../TColgp/TColgp_HArray1OfVec,
  ../TColgp/TColgp_HArray1OfVec2d, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../AdvApprox/AdvApprox_EvaluatorFunction,
  ../TColgp/TColgp_Array2OfPnt, ../TColStd/TColStd_Array2OfReal,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../Standard/Standard_OStream

discard "forward decl of Approx_SweepFunction"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of AdvApprox_Cutting"
type
  Approx_SweepApproximation* {.importcpp: "Approx_SweepApproximation",
                              header: "Approx_SweepApproximation.hxx", bycopy.} = object


proc constructApprox_SweepApproximation*(Func: handle[Approx_SweepFunction]): Approx_SweepApproximation {.
    constructor, importcpp: "Approx_SweepApproximation(@)",
    header: "Approx_SweepApproximation.hxx".}
proc Perform*(this: var Approx_SweepApproximation; First: Standard_Real;
             Last: Standard_Real; Tol3d: Standard_Real; BoundTol: Standard_Real;
             Tol2d: Standard_Real; TolAngular: Standard_Real;
             Continuity: GeomAbs_Shape = GeomAbs_C0; Degmax: Standard_Integer = 11;
             Segmax: Standard_Integer = 50) {.importcpp: "Perform",
    header: "Approx_SweepApproximation.hxx".}
proc Eval*(this: var Approx_SweepApproximation; Parameter: Standard_Real;
          DerivativeRequest: Standard_Integer; First: Standard_Real;
          Last: Standard_Real; Result: var Standard_Real): Standard_Integer {.
    importcpp: "Eval", header: "Approx_SweepApproximation.hxx".}
proc IsDone*(this: Approx_SweepApproximation): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_SweepApproximation.hxx".}
proc SurfShape*(this: Approx_SweepApproximation; UDegree: var Standard_Integer;
               VDegree: var Standard_Integer; NbUPoles: var Standard_Integer;
               NbVPoles: var Standard_Integer; NbUKnots: var Standard_Integer;
               NbVKnots: var Standard_Integer) {.noSideEffect,
    importcpp: "SurfShape", header: "Approx_SweepApproximation.hxx".}
proc Surface*(this: Approx_SweepApproximation; TPoles: var TColgp_Array2OfPnt;
             TWeights: var TColStd_Array2OfReal; TUKnots: var TColStd_Array1OfReal;
             TVKnots: var TColStd_Array1OfReal;
             TUMults: var TColStd_Array1OfInteger;
             TVMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "Approx_SweepApproximation.hxx".}
proc UDegree*(this: Approx_SweepApproximation): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "Approx_SweepApproximation.hxx".}
proc VDegree*(this: Approx_SweepApproximation): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "Approx_SweepApproximation.hxx".}
proc SurfPoles*(this: Approx_SweepApproximation): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "Approx_SweepApproximation.hxx".}
proc SurfWeights*(this: Approx_SweepApproximation): TColStd_Array2OfReal {.
    noSideEffect, importcpp: "SurfWeights", header: "Approx_SweepApproximation.hxx".}
proc SurfUKnots*(this: Approx_SweepApproximation): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "SurfUKnots", header: "Approx_SweepApproximation.hxx".}
proc SurfVKnots*(this: Approx_SweepApproximation): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "SurfVKnots", header: "Approx_SweepApproximation.hxx".}
proc SurfUMults*(this: Approx_SweepApproximation): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "SurfUMults", header: "Approx_SweepApproximation.hxx".}
proc SurfVMults*(this: Approx_SweepApproximation): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "SurfVMults", header: "Approx_SweepApproximation.hxx".}
proc MaxErrorOnSurf*(this: Approx_SweepApproximation): Standard_Real {.noSideEffect,
    importcpp: "MaxErrorOnSurf", header: "Approx_SweepApproximation.hxx".}
proc AverageErrorOnSurf*(this: Approx_SweepApproximation): Standard_Real {.
    noSideEffect, importcpp: "AverageErrorOnSurf",
    header: "Approx_SweepApproximation.hxx".}
proc NbCurves2d*(this: Approx_SweepApproximation): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves2d", header: "Approx_SweepApproximation.hxx".}
proc Curves2dShape*(this: Approx_SweepApproximation; Degree: var Standard_Integer;
                   NbPoles: var Standard_Integer; NbKnots: var Standard_Integer) {.
    noSideEffect, importcpp: "Curves2dShape",
    header: "Approx_SweepApproximation.hxx".}
proc Curve2d*(this: Approx_SweepApproximation; Index: Standard_Integer;
             TPoles: var TColgp_Array1OfPnt2d; TKnots: var TColStd_Array1OfReal;
             TMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "Approx_SweepApproximation.hxx".}
proc Curves2dDegree*(this: Approx_SweepApproximation): Standard_Integer {.
    noSideEffect, importcpp: "Curves2dDegree",
    header: "Approx_SweepApproximation.hxx".}
proc Curve2dPoles*(this: Approx_SweepApproximation; Index: Standard_Integer): TColgp_Array1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles",
    header: "Approx_SweepApproximation.hxx".}
proc Curves2dKnots*(this: Approx_SweepApproximation): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "Curves2dKnots",
    header: "Approx_SweepApproximation.hxx".}
proc Curves2dMults*(this: Approx_SweepApproximation): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Curves2dMults",
    header: "Approx_SweepApproximation.hxx".}
proc Max2dError*(this: Approx_SweepApproximation; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Max2dError", header: "Approx_SweepApproximation.hxx".}
proc Average2dError*(this: Approx_SweepApproximation; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Average2dError",
    header: "Approx_SweepApproximation.hxx".}
proc TolCurveOnSurf*(this: Approx_SweepApproximation; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolCurveOnSurf",
    header: "Approx_SweepApproximation.hxx".}
proc Dump*(this: Approx_SweepApproximation; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Approx_SweepApproximation.hxx".}