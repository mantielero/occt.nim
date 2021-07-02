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
discard "forward decl of BRepApprox_MyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  BRepApproxTheComputeLineBezierOfApprox* {.
      importcpp: "BRepApprox_TheComputeLineBezierOfApprox",
      header: "BRepApprox_TheComputeLineBezierOfApprox.hxx", bycopy.} = object ## ! The
                                                                          ## MultiLine <Line> will be
                                                                          ## approximated until
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
                                                                          ## boolean is True.
                                                                          ## ! If
                                                                          ## <Squares> is True, the
                                                                          ## computation will be done with
                                                                          ## ! no
                                                                          ## iteration at all.
                                                                          ## ! is
                                                                          ## internally used in the
                                                                          ## algorithm.


proc constructBRepApproxTheComputeLineBezierOfApprox*(
    line: BRepApproxTheMultiLineOfApprox; degreemin: StandardInteger = 4;
    degreemax: StandardInteger = 8; tolerance3d: StandardReal = 1.0e-3;
    tolerance2d: StandardReal = 1.0e-6; nbIterations: StandardInteger = 5;
    cutting: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = standardFalse): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(
    line: BRepApproxTheMultiLineOfApprox; parameters: MathVector;
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    squares: StandardBoolean = standardFalse): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(parameters: MathVector;
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    squares: StandardBoolean = standardFalse): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(
    degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
    tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
    nbIterations: StandardInteger = 5; cutting: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = standardFalse): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc init*(this: var BRepApproxTheComputeLineBezierOfApprox;
          degreemin: StandardInteger = 4; degreemax: StandardInteger = 8;
          tolerance3d: StandardReal = 1.0e-03; tolerance2d: StandardReal = 1.0e-06;
          nbIterations: StandardInteger = 5;
          cutting: StandardBoolean = standardTrue;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: StandardBoolean = standardFalse) {.importcpp: "Init",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc perform*(this: var BRepApproxTheComputeLineBezierOfApprox;
             line: BRepApproxTheMultiLineOfApprox) {.importcpp: "Perform",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc setDegrees*(this: var BRepApproxTheComputeLineBezierOfApprox;
                degreemin: StandardInteger; degreemax: StandardInteger) {.
    importcpp: "SetDegrees", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc setTolerances*(this: var BRepApproxTheComputeLineBezierOfApprox;
                   tolerance3d: StandardReal; tolerance2d: StandardReal) {.
    importcpp: "SetTolerances",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc setConstraints*(this: var BRepApproxTheComputeLineBezierOfApprox;
                    firstC: AppParCurvesConstraint; lastC: AppParCurvesConstraint) {.
    importcpp: "SetConstraints",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc isAllApproximated*(this: BRepApproxTheComputeLineBezierOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc isToleranceReached*(this: BRepApproxTheComputeLineBezierOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc error*(this: BRepApproxTheComputeLineBezierOfApprox; index: StandardInteger;
           tol3d: var StandardReal; tol2d: var StandardReal) {.noSideEffect,
    importcpp: "Error", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc nbMultiCurves*(this: BRepApproxTheComputeLineBezierOfApprox): StandardInteger {.
    noSideEffect, importcpp: "NbMultiCurves",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc value*(this: BRepApproxTheComputeLineBezierOfApprox;
           index: StandardInteger = 1): AppParCurvesMultiCurve {.noSideEffect,
    importcpp: "Value", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc changeValue*(this: var BRepApproxTheComputeLineBezierOfApprox;
                 index: StandardInteger = 1): var AppParCurvesMultiCurve {.
    importcpp: "ChangeValue",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc splineValue*(this: var BRepApproxTheComputeLineBezierOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "SplineValue",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc parametrization*(this: BRepApproxTheComputeLineBezierOfApprox): ApproxParametrizationType {.
    noSideEffect, importcpp: "Parametrization",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc parameters*(this: BRepApproxTheComputeLineBezierOfApprox;
                index: StandardInteger = 1): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}

