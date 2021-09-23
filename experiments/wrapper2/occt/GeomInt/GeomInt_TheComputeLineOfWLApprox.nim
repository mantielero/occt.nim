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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../Standard/Standard_Boolean, ../Approx/Approx_ParametrizationType,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

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
  GeomInt_TheComputeLineOfWLApprox* {.importcpp: "GeomInt_TheComputeLineOfWLApprox", header: "GeomInt_TheComputeLineOfWLApprox.hxx",
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


proc constructGeomInt_TheComputeLineOfWLApprox*(
    Line: GeomInt_TheMultiLineOfWLApprox; degreemin: Standard_Integer = 4;
    degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-3;
    Tolerance2d: Standard_Real = 1.0e-6; NbIterations: Standard_Integer = 5;
    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomInt_TheComputeLineOfWLApprox*(
    Line: GeomInt_TheMultiLineOfWLApprox; Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomInt_TheComputeLineOfWLApprox*(Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc constructGeomInt_TheComputeLineOfWLApprox*(degreemin: Standard_Integer = 4;
    degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-03;
    Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineOfWLApprox(@)",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc Interpol*(this: var GeomInt_TheComputeLineOfWLApprox;
              Line: GeomInt_TheMultiLineOfWLApprox) {.importcpp: "Interpol",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc Init*(this: var GeomInt_TheComputeLineOfWLApprox;
          degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
          Tolerance3d: Standard_Real = 1.0e-03;
          Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
          cutting: Standard_Boolean = Standard_True;
          parametrization: Approx_ParametrizationType = Approx_ChordLength;
          Squares: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc Perform*(this: var GeomInt_TheComputeLineOfWLApprox;
             Line: GeomInt_TheMultiLineOfWLApprox) {.importcpp: "Perform",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetParameters*(this: var GeomInt_TheComputeLineOfWLApprox; ThePar: math_Vector) {.
    importcpp: "SetParameters", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetKnots*(this: var GeomInt_TheComputeLineOfWLApprox;
              Knots: TColStd_Array1OfReal) {.importcpp: "SetKnots",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetKnotsAndMultiplicities*(this: var GeomInt_TheComputeLineOfWLApprox;
                               Knots: TColStd_Array1OfReal;
                               Mults: TColStd_Array1OfInteger) {.
    importcpp: "SetKnotsAndMultiplicities",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetDegrees*(this: var GeomInt_TheComputeLineOfWLApprox;
                degreemin: Standard_Integer; degreemax: Standard_Integer) {.
    importcpp: "SetDegrees", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetTolerances*(this: var GeomInt_TheComputeLineOfWLApprox;
                   Tolerance3d: Standard_Real; Tolerance2d: Standard_Real) {.
    importcpp: "SetTolerances", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetContinuity*(this: var GeomInt_TheComputeLineOfWLApprox; C: Standard_Integer) {.
    importcpp: "SetContinuity", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetConstraints*(this: var GeomInt_TheComputeLineOfWLApprox;
                    firstC: AppParCurves_Constraint;
                    lastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc SetPeriodic*(this: var GeomInt_TheComputeLineOfWLApprox;
                 thePeriodic: Standard_Boolean) {.importcpp: "SetPeriodic",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc IsAllApproximated*(this: GeomInt_TheComputeLineOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc IsToleranceReached*(this: GeomInt_TheComputeLineOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc Error*(this: GeomInt_TheComputeLineOfWLApprox; tol3d: var Standard_Real;
           tol2d: var Standard_Real) {.noSideEffect, importcpp: "Error", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc Value*(this: GeomInt_TheComputeLineOfWLApprox): AppParCurves_MultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc ChangeValue*(this: var GeomInt_TheComputeLineOfWLApprox): var AppParCurves_MultiBSpCurve {.
    importcpp: "ChangeValue", header: "GeomInt_TheComputeLineOfWLApprox.hxx".}
proc Parameters*(this: GeomInt_TheComputeLineOfWLApprox): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "Parameters",
    header: "GeomInt_TheComputeLineOfWLApprox.hxx".}