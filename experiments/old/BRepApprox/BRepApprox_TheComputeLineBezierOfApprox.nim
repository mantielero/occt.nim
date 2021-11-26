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
      header: "BRepApprox_TheComputeLineBezierOfApprox.hxx", bycopy.} = object ## ! is
                                                                          ## internally used in the
                                                                          ## algorithm.


proc `new`*(this: var BRepApproxTheComputeLineBezierOfApprox; theSize: csize_t): pointer {.
    importcpp: "BRepApprox_TheComputeLineBezierOfApprox::operator new",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxTheComputeLineBezierOfApprox; theAddress: pointer) {.
    importcpp: "BRepApprox_TheComputeLineBezierOfApprox::operator delete",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxTheComputeLineBezierOfApprox; theSize: csize_t): pointer {.
    importcpp: "BRepApprox_TheComputeLineBezierOfApprox::operator new[]",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxTheComputeLineBezierOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_TheComputeLineBezierOfApprox::operator delete[]", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc `new`*(this: var BRepApproxTheComputeLineBezierOfApprox; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "BRepApprox_TheComputeLineBezierOfApprox::operator new", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxTheComputeLineBezierOfApprox; a2: pointer;
              a3: pointer) {.importcpp: "BRepApprox_TheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(
    line: BRepApproxTheMultiLineOfApprox; degreemin: int = 4; degreemax: int = 8;
    tolerance3d: StandardReal = 1.0e-3; tolerance2d: StandardReal = 1.0e-6;
    nbIterations: int = 5; cutting: StandardBoolean = true;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = false): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(
    line: BRepApproxTheMultiLineOfApprox; parameters: MathVector;
    degreemin: int = 4; degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
    cutting: StandardBoolean = true; squares: StandardBoolean = false): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(parameters: MathVector;
    degreemin: int = 4; degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
    cutting: StandardBoolean = true; squares: StandardBoolean = false): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxTheComputeLineBezierOfApprox*(degreemin: int = 4;
    degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
    cutting: StandardBoolean = true;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = false): BRepApproxTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc init*(this: var BRepApproxTheComputeLineBezierOfApprox; degreemin: int = 4;
          degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
          tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
          cutting: StandardBoolean = true;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: StandardBoolean = false) {.importcpp: "Init",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc perform*(this: var BRepApproxTheComputeLineBezierOfApprox;
             line: BRepApproxTheMultiLineOfApprox) {.importcpp: "Perform",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc setDegrees*(this: var BRepApproxTheComputeLineBezierOfApprox; degreemin: int;
                degreemax: int) {.importcpp: "SetDegrees", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
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
proc error*(this: BRepApproxTheComputeLineBezierOfApprox; index: int;
           tol3d: var StandardReal; tol2d: var StandardReal) {.noSideEffect,
    importcpp: "Error", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc nbMultiCurves*(this: BRepApproxTheComputeLineBezierOfApprox): int {.
    noSideEffect, importcpp: "NbMultiCurves",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc value*(this: BRepApproxTheComputeLineBezierOfApprox; index: int = 1): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc changeValue*(this: var BRepApproxTheComputeLineBezierOfApprox; index: int = 1): var AppParCurvesMultiCurve {.
    importcpp: "ChangeValue",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc splineValue*(this: var BRepApproxTheComputeLineBezierOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "SplineValue",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc parametrization*(this: BRepApproxTheComputeLineBezierOfApprox): ApproxParametrizationType {.
    noSideEffect, importcpp: "Parametrization",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc parameters*(this: BRepApproxTheComputeLineBezierOfApprox; index: int = 1): TColStdArray1OfReal {.
    noSideEffect, importcpp: "Parameters",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}