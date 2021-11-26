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
                                    bycopy.} = object ## ! is internally used in the algorithm.


proc `new`*(this: var GeomIntTheComputeLineOfWLApprox; theSize: csize_t): pointer {.
    importcpp: "GeomInt_TheComputeLineOfWLApprox::operator new",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntTheComputeLineOfWLApprox; theAddress: pointer) {.
    importcpp: "GeomInt_TheComputeLineOfWLApprox::operator delete",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntTheComputeLineOfWLApprox; theSize: csize_t): pointer {.
    importcpp: "GeomInt_TheComputeLineOfWLApprox::operator new[]",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntTheComputeLineOfWLApprox; theAddress: pointer) {.
    importcpp: "GeomInt_TheComputeLineOfWLApprox::operator delete[]",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc `new`*(this: var GeomIntTheComputeLineOfWLApprox; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomInt_TheComputeLineOfWLApprox::operator new", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntTheComputeLineOfWLApprox; a2: pointer; a3: pointer) {.
    importcpp: "GeomInt_TheComputeLineOfWLApprox::operator delete",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(
    line: GeomIntTheMultiLineOfWLApprox; degreemin: int = 4; degreemax: int = 8;
    tolerance3d: StandardReal = 1.0e-3; tolerance2d: StandardReal = 1.0e-6;
    nbIterations: int = 5; cutting: StandardBoolean = true;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = false): GeomIntTheComputeLineOfWLApprox {.constructor,
    importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(
    line: GeomIntTheMultiLineOfWLApprox; parameters: MathVector; degreemin: int = 4;
    degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
    cutting: StandardBoolean = true; squares: StandardBoolean = false): GeomIntTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(parameters: MathVector;
    degreemin: int = 4; degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
    cutting: StandardBoolean = true; squares: StandardBoolean = false): GeomIntTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomIntTheComputeLineOfWLApprox*(degreemin: int = 4;
    degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
    tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
    cutting: StandardBoolean = true;
    parametrization: ApproxParametrizationType = approxChordLength;
    squares: StandardBoolean = false): GeomIntTheComputeLineOfWLApprox {.constructor,
    importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc interpol*(this: var GeomIntTheComputeLineOfWLApprox;
              line: GeomIntTheMultiLineOfWLApprox) {.importcpp: "Interpol",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc init*(this: var GeomIntTheComputeLineOfWLApprox; degreemin: int = 4;
          degreemax: int = 8; tolerance3d: StandardReal = 1.0e-03;
          tolerance2d: StandardReal = 1.0e-06; nbIterations: int = 5;
          cutting: StandardBoolean = true;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: StandardBoolean = false) {.importcpp: "Init",
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
proc setDegrees*(this: var GeomIntTheComputeLineOfWLApprox; degreemin: int;
                degreemax: int) {.importcpp: "SetDegrees",
                                header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setTolerances*(this: var GeomIntTheComputeLineOfWLApprox;
                   tolerance3d: StandardReal; tolerance2d: StandardReal) {.
    importcpp: "SetTolerances", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc setContinuity*(this: var GeomIntTheComputeLineOfWLApprox; c: int) {.
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