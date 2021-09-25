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
  AppDefCompute* {.importcpp: "AppDef_Compute", header: "AppDef_Compute.hxx", bycopy.} = object ##
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


proc constructAppDefCompute*(line: AppDefMultiLine; degreemin: int = 4;
                            degreemax: int = 8; tolerance3d: float = 1.0e-3;
                            tolerance2d: float = 1.0e-6; nbIterations: int = 5;
                            cutting: bool = true; parametrization: ApproxParametrizationType = approxChordLength;
                            squares: bool = false): AppDefCompute {.constructor,
    importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc constructAppDefCompute*(line: AppDefMultiLine; parameters: MathVector;
                            degreemin: int = 4; degreemax: int = 8;
                            tolerance3d: float = 1.0e-03;
                            tolerance2d: float = 1.0e-06; nbIterations: int = 5;
                            cutting: bool = true; squares: bool = false): AppDefCompute {.
    constructor, importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc constructAppDefCompute*(parameters: MathVector; degreemin: int = 4;
                            degreemax: int = 8; tolerance3d: float = 1.0e-03;
                            tolerance2d: float = 1.0e-06; nbIterations: int = 5;
                            cutting: bool = true; squares: bool = false): AppDefCompute {.
    constructor, importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc constructAppDefCompute*(degreemin: int = 4; degreemax: int = 8;
                            tolerance3d: float = 1.0e-03;
                            tolerance2d: float = 1.0e-06; nbIterations: int = 5;
                            cutting: bool = true; parametrization: ApproxParametrizationType = approxChordLength;
                            squares: bool = false): AppDefCompute {.constructor,
    importcpp: "AppDef_Compute(@)", header: "AppDef_Compute.hxx".}
proc init*(this: var AppDefCompute; degreemin: int = 4; degreemax: int = 8;
          tolerance3d: float = 1.0e-03; tolerance2d: float = 1.0e-06;
          nbIterations: int = 5; cutting: bool = true;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: bool = false) {.importcpp: "Init", header: "AppDef_Compute.hxx".}
proc perform*(this: var AppDefCompute; line: AppDefMultiLine) {.importcpp: "Perform",
    header: "AppDef_Compute.hxx".}
proc setDegrees*(this: var AppDefCompute; degreemin: int; degreemax: int) {.
    importcpp: "SetDegrees", header: "AppDef_Compute.hxx".}
proc setTolerances*(this: var AppDefCompute; tolerance3d: float; tolerance2d: float) {.
    importcpp: "SetTolerances", header: "AppDef_Compute.hxx".}
proc setConstraints*(this: var AppDefCompute; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.importcpp: "SetConstraints",
    header: "AppDef_Compute.hxx".}
proc isAllApproximated*(this: AppDefCompute): bool {.noSideEffect,
    importcpp: "IsAllApproximated", header: "AppDef_Compute.hxx".}
proc isToleranceReached*(this: AppDefCompute): bool {.noSideEffect,
    importcpp: "IsToleranceReached", header: "AppDef_Compute.hxx".}
proc error*(this: AppDefCompute; index: int; tol3d: var float; tol2d: var float) {.
    noSideEffect, importcpp: "Error", header: "AppDef_Compute.hxx".}
proc nbMultiCurves*(this: AppDefCompute): int {.noSideEffect,
    importcpp: "NbMultiCurves", header: "AppDef_Compute.hxx".}
proc value*(this: AppDefCompute; index: int = 1): AppParCurvesMultiCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_Compute.hxx".}
proc changeValue*(this: var AppDefCompute; index: int = 1): var AppParCurvesMultiCurve {.
    importcpp: "ChangeValue", header: "AppDef_Compute.hxx".}
proc splineValue*(this: var AppDefCompute): AppParCurvesMultiBSpCurve {.
    importcpp: "SplineValue", header: "AppDef_Compute.hxx".}
proc parametrization*(this: AppDefCompute): ApproxParametrizationType {.
    noSideEffect, importcpp: "Parametrization", header: "AppDef_Compute.hxx".}
proc parameters*(this: AppDefCompute; index: int = 1): TColStdArray1OfReal {.
    noSideEffect, importcpp: "Parameters", header: "AppDef_Compute.hxx".}
