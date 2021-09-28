##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_MyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_MyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of AppParCurves_MultiCurve"
type
  BRepApproxTheComputeLineOfApprox* {.importcpp: "BRepApprox_TheComputeLineOfApprox", header: "BRepApprox_TheComputeLineOfApprox.hxx",
                                     bycopy.} = object ## ! The MultiLine <Line> will be approximated until tolerances
                                                    ## ! will be reached.
                                                    ## ! The approximation will be done from degreemin to degreemax
                                                    ## ! with a cutting if the corresponding boolean is True.
                                                    ## ! If <Squares> is True, the computation will be done with
                                                    ## ! no iteration at all.
                                                    ## !
                                                    ## ! The multiplicities of the internal knots is set by
                                                    ## ! default.
                                                    ## ! is internally used in the algorithm.


proc constructBRepApproxTheComputeLineOfApprox*(
    line: BRepApproxTheMultiLineOfApprox; degreemin: cint = 4; degreemax: cint = 8;
    tolerance3d: cfloat = 1.0e-3; tolerance2d: cfloat = 1.0e-6; nbIterations: cint = 5;
    cutting: bool = true;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: bool = false): BRepApproxTheComputeLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc constructBRepApproxTheComputeLineOfApprox*(
    line: BRepApproxTheMultiLineOfApprox; parameters: MathVector;
    degreemin: cint = 4; degreemax: cint = 8; tolerance3d: cfloat = 1.0e-03;
    tolerance2d: cfloat = 1.0e-06; nbIterations: cint = 5; cutting: bool = true;
    squares: bool = false): BRepApproxTheComputeLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc constructBRepApproxTheComputeLineOfApprox*(parameters: MathVector;
    degreemin: cint = 4; degreemax: cint = 8; tolerance3d: cfloat = 1.0e-03;
    tolerance2d: cfloat = 1.0e-06; nbIterations: cint = 5; cutting: bool = true;
    squares: bool = false): BRepApproxTheComputeLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc constructBRepApproxTheComputeLineOfApprox*(degreemin: cint = 4;
    degreemax: cint = 8; tolerance3d: cfloat = 1.0e-03; tolerance2d: cfloat = 1.0e-06;
    nbIterations: cint = 5; cutting: bool = true;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: bool = false): BRepApproxTheComputeLineOfApprox {.constructor,
    importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc interpol*(this: var BRepApproxTheComputeLineOfApprox;
              line: BRepApproxTheMultiLineOfApprox) {.importcpp: "Interpol",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc init*(this: var BRepApproxTheComputeLineOfApprox; degreemin: cint = 4;
          degreemax: cint = 8; tolerance3d: cfloat = 1.0e-03;
          tolerance2d: cfloat = 1.0e-06; nbIterations: cint = 5; cutting: bool = true;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: bool = false) {.importcpp: "Init",
                               header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxTheComputeLineOfApprox;
             line: BRepApproxTheMultiLineOfApprox) {.importcpp: "Perform",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setParameters*(this: var BRepApproxTheComputeLineOfApprox; thePar: MathVector) {.
    importcpp: "SetParameters", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setKnots*(this: var BRepApproxTheComputeLineOfApprox;
              knots: TColStdArray1OfReal) {.importcpp: "SetKnots",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setKnotsAndMultiplicities*(this: var BRepApproxTheComputeLineOfApprox;
                               knots: TColStdArray1OfReal;
                               mults: TColStdArray1OfInteger) {.
    importcpp: "SetKnotsAndMultiplicities",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setDegrees*(this: var BRepApproxTheComputeLineOfApprox; degreemin: cint;
                degreemax: cint) {.importcpp: "SetDegrees", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setTolerances*(this: var BRepApproxTheComputeLineOfApprox; tolerance3d: cfloat;
                   tolerance2d: cfloat) {.importcpp: "SetTolerances", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setContinuity*(this: var BRepApproxTheComputeLineOfApprox; c: cint) {.
    importcpp: "SetContinuity", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setConstraints*(this: var BRepApproxTheComputeLineOfApprox;
                    firstC: AppParCurvesConstraint; lastC: AppParCurvesConstraint) {.
    importcpp: "SetConstraints", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc setPeriodic*(this: var BRepApproxTheComputeLineOfApprox; thePeriodic: bool) {.
    importcpp: "SetPeriodic", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc isAllApproximated*(this: BRepApproxTheComputeLineOfApprox): bool {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc isToleranceReached*(this: BRepApproxTheComputeLineOfApprox): bool {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc error*(this: BRepApproxTheComputeLineOfApprox; tol3d: var cfloat;
           tol2d: var cfloat) {.noSideEffect, importcpp: "Error",
                             header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc value*(this: BRepApproxTheComputeLineOfApprox): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc changeValue*(this: var BRepApproxTheComputeLineOfApprox): var AppParCurvesMultiBSpCurve {.
    importcpp: "ChangeValue", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc parameters*(this: BRepApproxTheComputeLineOfApprox): TColStdArray1OfReal {.
    noSideEffect, importcpp: "Parameters",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}

























