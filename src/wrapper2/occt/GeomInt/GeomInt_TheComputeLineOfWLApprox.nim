##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_MyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of AppParCurves_MultiCurve"
type
  GeomIntTheComputeLineOfWLApprox* {.importcpp: "GeomInt_TheComputeLineOfWLApprox", header: "GeomInt_TheComputeLineOfWLApprox.hxx",
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


proc constructGeomIntTheComputeLineOfWLApprox*(
    line: GeomIntTheMultiLineOfWLApprox; degreemin: StandardInteger = 4;
    degreemax: StandardInteger = 8; tolerance3d: StandardReal = 1.0e-3;
    tolerance2d: StandardReal = 1.0e-6; nbIterations: StandardInteger = 5;
    cutting: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(
    line: GeomIntTheMultiLineOfWLApprox; parameters: MathVector;
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(parameters: MathVector;
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(degreemin: StandardInteger = 4;
    degreemax: StandardInteger = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: StandardInteger = 5;
    cutting: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc interpol*(this: var GeomIntTheComputeLineOfWLApprox;
              line: GeomIntTheMultiLineOfWLApprox) {.importcpp: "Interpol",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc init*(this: var GeomIntTheComputeLineOfWLApprox;
          degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
          tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
          nbIterations: StandardInteger = 5;
          cutting: StandardBoolean = standardTrue;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: StandardBoolean = standardFalse) {.importcpp: "Init",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc perform*(this: var GeomIntTheComputeLineOfWLApprox;
             line: GeomIntTheMultiLineOfWLApprox) {.importcpp: "Perform",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setParameters*(this: var GeomIntTheComputeLineOfWLApprox; thePar: MathVector) {.
    importcpp: "SetParameters", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setKnots*(this: var GeomIntTheComputeLineOfWLApprox; knots: TColStdArray1OfReal) {.
    importcpp: "SetKnots", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setKnotsAndMultiplicities*(this: var GeomIntTheComputeLineOfWLApprox;
                               knots: TColStdArray1OfReal;
                               mults: TColStdArray1OfInteger) {.
    importcpp: "SetKnotsAndMultiplicities",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setDegrees*(this: var GeomIntTheComputeLineOfWLApprox;
                degreemin: StandardInteger; degreemax: StandardInteger) {.
    importcpp: "SetDegrees", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setTolerances*(this: var GeomIntTheComputeLineOfWLApprox;
                   tolerance3d: StandardReal; tolerance2d: StandardReal) {.
    importcpp: "SetTolerances", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setContinuity*(this: var GeomIntTheComputeLineOfWLApprox; c: StandardInteger) {.
    importcpp: "SetContinuity", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setConstraints*(this: var GeomIntTheComputeLineOfWLApprox;
                    firstC: AppParCurvesConstraint; lastC: AppParCurvesConstraint) {.
    importcpp: "SetConstraints", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setPeriodic*(this: var GeomIntTheComputeLineOfWLApprox;
                 thePeriodic: StandardBoolean) {.importcpp: "SetPeriodic",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc isAllApproximated*(this: GeomIntTheComputeLineOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc isToleranceReached*(this: GeomIntTheComputeLineOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc error*(this: GeomIntTheComputeLineOfWLApprox; tol3d: var StandardReal;
           tol2d: var StandardReal) {.noSideEffect, importcpp: "Error", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc value*(this: GeomIntTheComputeLineOfWLApprox): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc changeValue*(this: var GeomIntTheComputeLineOfWLApprox): var AppParCurvesMultiBSpCurve {.
    importcpp: "ChangeValue", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc parameters*(this: GeomIntTheComputeLineOfWLApprox): TColStdArray1OfReal {.
    noSideEffect, importcpp: "Parameters",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}

