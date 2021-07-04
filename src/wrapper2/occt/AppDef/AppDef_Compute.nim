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
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_SequenceOfMultiCurve,
  ../AppParCurves/AppParCurves_MultiCurve,
  ../AppParCurves/AppParCurves_MultiBSpCurve, ../Standard/Standard_Boolean,
  ../Approx/Approx_ParametrizationType, ../TColStd/TColStd_HArray1OfReal,
  ../Approx/Approx_SequenceOfHArray1OfReal, ../TColStd/TColStd_SequenceOfReal,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_MyGradientOfCompute"
discard "forward decl of AppDef_ParLeastSquareOfMyGradientOfCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientOfCompute"
discard "forward decl of AppDef_ParFunctionOfMyGradientOfCompute"
discard "forward decl of AppDef_Gradient_BFGSOfMyGradientOfCompute"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  AppDef_Compute* {.importcpp: "AppDef_Compute", header: "AppDef_Compute.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## MultiLine
                                                                                         ## <Line>
                                                                                         ## will
                                                                                         ## be
                                                                                         ## approximated
                                                                                         ## until
                                                                                         ## tolerances
                                                                                         ##
                                                                                         ## !
                                                                                         ## will
                                                                                         ## be
                                                                                         ## reached.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## approximation
                                                                                         ## will
                                                                                         ## be
                                                                                         ## done
                                                                                         ## from
                                                                                         ## degreemin
                                                                                         ## to
                                                                                         ## degreemax
                                                                                         ##
                                                                                         ## !
                                                                                         ## with
                                                                                         ## a
                                                                                         ## cutting
                                                                                         ## if
                                                                                         ## the
                                                                                         ## corresponding
                                                                                         ## boolean
                                                                                         ## is
                                                                                         ## True.
                                                                                         ##
                                                                                         ## !
                                                                                         ## If
                                                                                         ## <Squares>
                                                                                         ## is
                                                                                         ## True,
                                                                                         ## the
                                                                                         ## computation
                                                                                         ## will
                                                                                         ## be
                                                                                         ## done
                                                                                         ## with
                                                                                         ##
                                                                                         ## !
                                                                                         ## no
                                                                                         ## iteration
                                                                                         ## at
                                                                                         ## all.
                                                                                         ##
                                                                                         ## !
                                                                                         ## is
                                                                                         ## internally
                                                                                         ## used
                                                                                         ## in
                                                                                         ## the
                                                                                         ## algorithm.


proc constructAppDef_Compute*(Line: AppDef_MultiLine;
                             degreemin: Standard_Integer = 4;
                             degreemax: Standard_Integer = 8;
                             Tolerance3d: Standard_Real = 1.0e-3;
                             Tolerance2d: Standard_Real = 1.0e-6;
                             NbIterations: Standard_Integer = 5;
                             cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
                             Squares: Standard_Boolean = Standard_False): AppDef_Compute {.
    constructor, importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc constructAppDef_Compute*(Line: AppDef_MultiLine; Parameters: math_Vector;
                             degreemin: Standard_Integer = 4;
                             degreemax: Standard_Integer = 8;
                             Tolerance3d: Standard_Real = 1.0e-03;
                             Tolerance2d: Standard_Real = 1.0e-06;
                             NbIterations: Standard_Integer = 5;
                             cutting: Standard_Boolean = Standard_True;
                             Squares: Standard_Boolean = Standard_False): AppDef_Compute {.
    constructor, importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc constructAppDef_Compute*(Parameters: math_Vector;
                             degreemin: Standard_Integer = 4;
                             degreemax: Standard_Integer = 8;
                             Tolerance3d: Standard_Real = 1.0e-03;
                             Tolerance2d: Standard_Real = 1.0e-06;
                             NbIterations: Standard_Integer = 5;
                             cutting: Standard_Boolean = Standard_True;
                             Squares: Standard_Boolean = Standard_False): AppDef_Compute {.
    constructor, importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc constructAppDef_Compute*(degreemin: Standard_Integer = 4;
                             degreemax: Standard_Integer = 8;
                             Tolerance3d: Standard_Real = 1.0e-03;
                             Tolerance2d: Standard_Real = 1.0e-06;
                             NbIterations: Standard_Integer = 5;
                             cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
                             Squares: Standard_Boolean = Standard_False): AppDef_Compute {.
    constructor, importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc Init*(this: var AppDef_Compute; degreemin: Standard_Integer = 4;
          degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-03;
          Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
          cutting: Standard_Boolean = Standard_True;
          parametrization: Approx_ParametrizationType = Approx_ChordLength;
          Squares: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "AppDef_Compute.hxx".}
proc Perform*(this: var AppDef_Compute; Line: AppDef_MultiLine) {.
    importcpp: "Perform", header: "AppDef_Compute.hxx".}
proc SetDegrees*(this: var AppDef_Compute; degreemin: Standard_Integer;
                degreemax: Standard_Integer) {.importcpp: "SetDegrees",
    header: "AppDef_Compute.hxx".}
proc SetTolerances*(this: var AppDef_Compute; Tolerance3d: Standard_Real;
                   Tolerance2d: Standard_Real) {.importcpp: "SetTolerances",
    header: "AppDef_Compute.hxx".}
proc SetConstraints*(this: var AppDef_Compute; firstC: AppParCurves_Constraint;
                    lastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "AppDef_Compute.hxx".}
proc IsAllApproximated*(this: AppDef_Compute): Standard_Boolean {.noSideEffect,
    importcpp: "IsAllApproximated", header: "AppDef_Compute.hxx".}
proc IsToleranceReached*(this: AppDef_Compute): Standard_Boolean {.noSideEffect,
    importcpp: "IsToleranceReached", header: "AppDef_Compute.hxx".}
proc Error*(this: AppDef_Compute; Index: Standard_Integer; tol3d: var Standard_Real;
           tol2d: var Standard_Real) {.noSideEffect, importcpp: "Error",
                                    header: "AppDef_Compute.hxx".}
proc NbMultiCurves*(this: AppDef_Compute): Standard_Integer {.noSideEffect,
    importcpp: "NbMultiCurves", header: "AppDef_Compute.hxx".}
proc Value*(this: AppDef_Compute; Index: Standard_Integer = 1): AppParCurves_MultiCurve {.
    noSideEffect, importcpp: "Value", header: "AppDef_Compute.hxx".}
proc ChangeValue*(this: var AppDef_Compute; Index: Standard_Integer = 1): var AppParCurves_MultiCurve {.
    importcpp: "ChangeValue", header: "AppDef_Compute.hxx".}
proc SplineValue*(this: var AppDef_Compute): AppParCurves_MultiBSpCurve {.
    importcpp: "SplineValue", header: "AppDef_Compute.hxx".}
proc Parametrization*(this: AppDef_Compute): Approx_ParametrizationType {.
    noSideEffect, importcpp: "Parametrization", header: "AppDef_Compute.hxx".}
proc Parameters*(this: AppDef_Compute; Index: Standard_Integer = 1): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "Parameters", header: "AppDef_Compute.hxx".}