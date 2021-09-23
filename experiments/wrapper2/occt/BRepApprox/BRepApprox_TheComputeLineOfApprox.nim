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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../Standard/Standard_Boolean, ../Approx/Approx_ParametrizationType,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

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
  BRepApprox_TheComputeLineOfApprox* {.importcpp: "BRepApprox_TheComputeLineOfApprox", header: "BRepApprox_TheComputeLineOfApprox.hxx",
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


proc constructBRepApprox_TheComputeLineOfApprox*(
    Line: BRepApprox_TheMultiLineOfApprox; degreemin: Standard_Integer = 4;
    degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-3;
    Tolerance2d: Standard_Real = 1.0e-6; NbIterations: Standard_Integer = 5;
    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc constructBRepApprox_TheComputeLineOfApprox*(
    Line: BRepApprox_TheMultiLineOfApprox; Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc constructBRepApprox_TheComputeLineOfApprox*(Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc constructBRepApprox_TheComputeLineOfApprox*(degreemin: Standard_Integer = 4;
    degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-03;
    Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineOfApprox(@)",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc Interpol*(this: var BRepApprox_TheComputeLineOfApprox;
              Line: BRepApprox_TheMultiLineOfApprox) {.importcpp: "Interpol",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc Init*(this: var BRepApprox_TheComputeLineOfApprox;
          degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
          Tolerance3d: Standard_Real = 1.0e-03;
          Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
          cutting: Standard_Boolean = Standard_True;
          parametrization: Approx_ParametrizationType = Approx_ChordLength;
          Squares: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc Perform*(this: var BRepApprox_TheComputeLineOfApprox;
             Line: BRepApprox_TheMultiLineOfApprox) {.importcpp: "Perform",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetParameters*(this: var BRepApprox_TheComputeLineOfApprox; ThePar: math_Vector) {.
    importcpp: "SetParameters", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetKnots*(this: var BRepApprox_TheComputeLineOfApprox;
              Knots: TColStd_Array1OfReal) {.importcpp: "SetKnots",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetKnotsAndMultiplicities*(this: var BRepApprox_TheComputeLineOfApprox;
                               Knots: TColStd_Array1OfReal;
                               Mults: TColStd_Array1OfInteger) {.
    importcpp: "SetKnotsAndMultiplicities",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetDegrees*(this: var BRepApprox_TheComputeLineOfApprox;
                degreemin: Standard_Integer; degreemax: Standard_Integer) {.
    importcpp: "SetDegrees", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetTolerances*(this: var BRepApprox_TheComputeLineOfApprox;
                   Tolerance3d: Standard_Real; Tolerance2d: Standard_Real) {.
    importcpp: "SetTolerances", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetContinuity*(this: var BRepApprox_TheComputeLineOfApprox; C: Standard_Integer) {.
    importcpp: "SetContinuity", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetConstraints*(this: var BRepApprox_TheComputeLineOfApprox;
                    firstC: AppParCurves_Constraint;
                    lastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc SetPeriodic*(this: var BRepApprox_TheComputeLineOfApprox;
                 thePeriodic: Standard_Boolean) {.importcpp: "SetPeriodic",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc IsAllApproximated*(this: BRepApprox_TheComputeLineOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc IsToleranceReached*(this: BRepApprox_TheComputeLineOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc Error*(this: BRepApprox_TheComputeLineOfApprox; tol3d: var Standard_Real;
           tol2d: var Standard_Real) {.noSideEffect, importcpp: "Error", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc Value*(this: BRepApprox_TheComputeLineOfApprox): AppParCurves_MultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc ChangeValue*(this: var BRepApprox_TheComputeLineOfApprox): var AppParCurves_MultiBSpCurve {.
    importcpp: "ChangeValue", header: "BRepApprox_TheComputeLineOfApprox.hxx".}
proc Parameters*(this: BRepApprox_TheComputeLineOfApprox): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "Parameters",
    header: "BRepApprox_TheComputeLineOfApprox.hxx".}