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
discard "forward decl of GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  GeomIntTheComputeLineBezierOfWLApprox* {.
      importcpp: "GeomInt_TheComputeLineBezierOfWLApprox",
      header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx", bycopy.} = object ## ! The
                                                                         ## MultiLine <Line> will be
                                                                         ## approximated until
                                                                         ## tolerances
                                                                         ## ! will be
                                                                         ## reached.
                                                                         ## ! The
                                                                         ## approximation will be done from
                                                                         ## degreemin to
                                                                         ## degreemax
                                                                         ## ! with a cutting if the
                                                                         ## corresponding boolean is True.
                                                                         ## ! If
                                                                         ## <Squares> is True, the
                                                                         ## computation will be done with
                                                                         ## ! no
                                                                         ## iteration at all.
                                                                         ## ! is
                                                                         ## internally used in the
                                                                         ## algorithm.


proc constructGeomIntTheComputeLineBezierOfWLApprox*(
    line: GeomIntTheMultiLineOfWLApprox; degreemin: StandardInteger = 4;
    degreemax: StandardInteger = 8; tolerance3d: StandardReal = 1.0e-3;
    tolerance2d: StandardReal = 1.0e-6; nbIterations: StandardInteger = 5;
    cutting: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineBezierOfWLApprox*(
    line: GeomIntTheMultiLineOfWLApprox; parameters: MathVector;
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineBezierOfWLApprox*(parameters: MathVector;
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineBezierOfWLApprox*(
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = standardFalse): GeomIntTheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc init*(this: var GeomIntTheComputeLineBezierOfWLApprox;
          degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
          tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
          nbIterations: StandardInteger = 5;
          cutting: StandardBoolean = standardTrue;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: StandardBoolean = standardFalse) {.importcpp: "Init",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc perform*(this: var GeomIntTheComputeLineBezierOfWLApprox;
             line: GeomIntTheMultiLineOfWLApprox) {.importcpp: "Perform",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc setDegrees*(this: var GeomIntTheComputeLineBezierOfWLApprox;
                degreemin: StandardInteger; degreemax: StandardInteger) {.
    importcpp: "SetDegrees", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc setTolerances*(this: var GeomIntTheComputeLineBezierOfWLApprox;
                   tolerance3d: StandardReal; tolerance2d: StandardReal) {.
    importcpp: "SetTolerances",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc setConstraints*(this: var GeomIntTheComputeLineBezierOfWLApprox;
                    firstC: AppParCurvesConstraint; lastC: AppParCurvesConstraint) {.
    importcpp: "SetConstraints",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc isAllApproximated*(this: GeomIntTheComputeLineBezierOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc isToleranceReached*(this: GeomIntTheComputeLineBezierOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc error*(this: GeomIntTheComputeLineBezierOfWLApprox; index: StandardInteger;
           tol3d: var StandardReal; tol2d: var StandardReal) {.noSideEffect,
    importcpp: "Error", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc nbMultiCurves*(this: GeomIntTheComputeLineBezierOfWLApprox): StandardInteger {.
    noSideEffect, importcpp: "NbMultiCurves",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc value*(this: GeomIntTheComputeLineBezierOfWLApprox; index: StandardInteger = 1): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc changeValue*(this: var GeomIntTheComputeLineBezierOfWLApprox;
                 index: StandardInteger = 1): var AppParCurvesMultiCurve {.
    importcpp: "ChangeValue", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc splineValue*(this: var GeomIntTheComputeLineBezierOfWLApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "SplineValue", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc parametrization*(this: GeomIntTheComputeLineBezierOfWLApprox): ApproxParametrizationType {.
    noSideEffect, importcpp: "Parametrization",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc parameters*(this: GeomIntTheComputeLineBezierOfWLApprox;
                index: StandardInteger = 1): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}

