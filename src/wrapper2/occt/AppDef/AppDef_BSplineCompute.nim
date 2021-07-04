##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../Standard/Standard_Boolean, ../Approx/Approx_ParametrizationType,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_MyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_MyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ParFunctionOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDef_BSplineCompute* {.importcpp: "AppDef_BSplineCompute",
                          header: "AppDef_BSplineCompute.hxx", bycopy.} = object ## ! The
                                                                            ## MultiLine
                                                                            ## <Line> will be
                                                                            ## approximated
                                                                            ## until
                                                                            ## tolerances
                                                                            ## ! will be
                                                                            ## reached.
                                                                            ## ! The
                                                                            ## approximation will be done from
                                                                            ## degreemin to
                                                                            ## degreemax
                                                                            ## ! with a
                                                                            ## cutting if the
                                                                            ## corresponding
                                                                            ## boolean is
                                                                            ## True.
                                                                            ## ! If
                                                                            ## <Squares> is
                                                                            ## True, the
                                                                            ## computation will be done with
                                                                            ## ! no
                                                                            ## iteration at all.
                                                                            ## !
                                                                            ## ! The
                                                                            ## multiplicities of the
                                                                            ## internal
                                                                            ## knots is set by
                                                                            ## !
                                                                            ## default.
                                                                            ## ! is
                                                                            ## internally used in the
                                                                            ## algorithm.


proc constructAppDef_BSplineCompute*(Line: AppDef_MultiLine;
                                    degreemin: Standard_Integer = 4;
                                    degreemax: Standard_Integer = 8;
                                    Tolerance3d: Standard_Real = 1.0e-3;
                                    Tolerance2d: Standard_Real = 1.0e-6;
                                    NbIterations: Standard_Integer = 5;
                                    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
                                    Squares: Standard_Boolean = Standard_False): AppDef_BSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc constructAppDef_BSplineCompute*(Line: AppDef_MultiLine;
                                    Parameters: math_Vector;
                                    degreemin: Standard_Integer = 4;
                                    degreemax: Standard_Integer = 8;
                                    Tolerance3d: Standard_Real = 1.0e-03;
                                    Tolerance2d: Standard_Real = 1.0e-06;
                                    NbIterations: Standard_Integer = 5;
                                    cutting: Standard_Boolean = Standard_True;
                                    Squares: Standard_Boolean = Standard_False): AppDef_BSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc constructAppDef_BSplineCompute*(Parameters: math_Vector;
                                    degreemin: Standard_Integer = 4;
                                    degreemax: Standard_Integer = 8;
                                    Tolerance3d: Standard_Real = 1.0e-03;
                                    Tolerance2d: Standard_Real = 1.0e-06;
                                    NbIterations: Standard_Integer = 5;
                                    cutting: Standard_Boolean = Standard_True;
                                    Squares: Standard_Boolean = Standard_False): AppDef_BSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc constructAppDef_BSplineCompute*(degreemin: Standard_Integer = 4;
                                    degreemax: Standard_Integer = 8;
                                    Tolerance3d: Standard_Real = 1.0e-03;
                                    Tolerance2d: Standard_Real = 1.0e-06;
                                    NbIterations: Standard_Integer = 5;
                                    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
                                    Squares: Standard_Boolean = Standard_False): AppDef_BSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc Interpol*(this: var AppDef_BSplineCompute; Line: AppDef_MultiLine) {.
    importcpp: "Interpol", header: "AppDef_BSplineCompute.hxx".}
proc Init*(this: var AppDef_BSplineCompute; degreemin: Standard_Integer = 4;
          degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-03;
          Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
          cutting: Standard_Boolean = Standard_True;
          parametrization: Approx_ParametrizationType = Approx_ChordLength;
          Squares: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "AppDef_BSplineCompute.hxx".}
proc Perform*(this: var AppDef_BSplineCompute; Line: AppDef_MultiLine) {.
    importcpp: "Perform", header: "AppDef_BSplineCompute.hxx".}
proc SetParameters*(this: var AppDef_BSplineCompute; ThePar: math_Vector) {.
    importcpp: "SetParameters", header: "AppDef_BSplineCompute.hxx".}
proc SetKnots*(this: var AppDef_BSplineCompute; Knots: TColStd_Array1OfReal) {.
    importcpp: "SetKnots", header: "AppDef_BSplineCompute.hxx".}
proc SetKnotsAndMultiplicities*(this: var AppDef_BSplineCompute;
                               Knots: TColStd_Array1OfReal;
                               Mults: TColStd_Array1OfInteger) {.
    importcpp: "SetKnotsAndMultiplicities", header: "AppDef_BSplineCompute.hxx".}
proc SetDegrees*(this: var AppDef_BSplineCompute; degreemin: Standard_Integer;
                degreemax: Standard_Integer) {.importcpp: "SetDegrees",
    header: "AppDef_BSplineCompute.hxx".}
proc SetTolerances*(this: var AppDef_BSplineCompute; Tolerance3d: Standard_Real;
                   Tolerance2d: Standard_Real) {.importcpp: "SetTolerances",
    header: "AppDef_BSplineCompute.hxx".}
proc SetContinuity*(this: var AppDef_BSplineCompute; C: Standard_Integer) {.
    importcpp: "SetContinuity", header: "AppDef_BSplineCompute.hxx".}
proc SetConstraints*(this: var AppDef_BSplineCompute;
                    firstC: AppParCurves_Constraint;
                    lastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "AppDef_BSplineCompute.hxx".}
proc SetPeriodic*(this: var AppDef_BSplineCompute; thePeriodic: Standard_Boolean) {.
    importcpp: "SetPeriodic", header: "AppDef_BSplineCompute.hxx".}
proc IsAllApproximated*(this: AppDef_BSplineCompute): Standard_Boolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "AppDef_BSplineCompute.hxx".}
proc IsToleranceReached*(this: AppDef_BSplineCompute): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "AppDef_BSplineCompute.hxx".}
proc Error*(this: AppDef_BSplineCompute; tol3d: var Standard_Real;
           tol2d: var Standard_Real) {.noSideEffect, importcpp: "Error",
                                    header: "AppDef_BSplineCompute.hxx".}
proc Value*(this: AppDef_BSplineCompute): AppParCurves_MultiBSpCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_BSplineCompute.hxx".}
proc ChangeValue*(this: var AppDef_BSplineCompute): var AppParCurves_MultiBSpCurve {.
    importcpp: "ChangeValue", header: "AppDef_BSplineCompute.hxx".}
proc Parameters*(this: AppDef_BSplineCompute): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "AppDef_BSplineCompute.hxx".}