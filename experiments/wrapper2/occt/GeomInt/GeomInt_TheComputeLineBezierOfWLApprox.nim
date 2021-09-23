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
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_SequenceOfMultiCurve,
  ../AppParCurves/AppParCurves_MultiCurve,
  ../AppParCurves/AppParCurves_MultiBSpCurve, ../Standard/Standard_Boolean,
  ../Approx/Approx_ParametrizationType, ../TColStd/TColStd_HArray1OfReal,
  ../Approx/Approx_SequenceOfHArray1OfReal, ../TColStd/TColStd_SequenceOfReal,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal

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
  GeomInt_TheComputeLineBezierOfWLApprox* {.
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


proc constructGeomInt_TheComputeLineBezierOfWLApprox*(
    Line: GeomInt_TheMultiLineOfWLApprox; degreemin: Standard_Integer = 4;
    degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-3;
    Tolerance2d: Standard_Real = 1.0e-6; NbIterations: Standard_Integer = 5;
    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomInt_TheComputeLineBezierOfWLApprox*(
    Line: GeomInt_TheMultiLineOfWLApprox; Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomInt_TheComputeLineBezierOfWLApprox*(Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomInt_TheComputeLineBezierOfWLApprox*(
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): GeomInt_TheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_TheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc Init*(this: var GeomInt_TheComputeLineBezierOfWLApprox;
          degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
          Tolerance3d: Standard_Real = 1.0e-03;
          Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
          cutting: Standard_Boolean = Standard_True;
          parametrization: Approx_ParametrizationType = Approx_ChordLength;
          Squares: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc Perform*(this: var GeomInt_TheComputeLineBezierOfWLApprox;
             Line: GeomInt_TheMultiLineOfWLApprox) {.importcpp: "Perform",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc SetDegrees*(this: var GeomInt_TheComputeLineBezierOfWLApprox;
                degreemin: Standard_Integer; degreemax: Standard_Integer) {.
    importcpp: "SetDegrees", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc SetTolerances*(this: var GeomInt_TheComputeLineBezierOfWLApprox;
                   Tolerance3d: Standard_Real; Tolerance2d: Standard_Real) {.
    importcpp: "SetTolerances",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc SetConstraints*(this: var GeomInt_TheComputeLineBezierOfWLApprox;
                    firstC: AppParCurves_Constraint;
                    lastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc IsAllApproximated*(this: GeomInt_TheComputeLineBezierOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc IsToleranceReached*(this: GeomInt_TheComputeLineBezierOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc Error*(this: GeomInt_TheComputeLineBezierOfWLApprox; Index: Standard_Integer;
           tol3d: var Standard_Real; tol2d: var Standard_Real) {.noSideEffect,
    importcpp: "Error", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc NbMultiCurves*(this: GeomInt_TheComputeLineBezierOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbMultiCurves",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc Value*(this: GeomInt_TheComputeLineBezierOfWLApprox;
           Index: Standard_Integer = 1): AppParCurves_MultiCurve {.noSideEffect,
    importcpp: "Value", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc ChangeValue*(this: var GeomInt_TheComputeLineBezierOfWLApprox;
                 Index: Standard_Integer = 1): var AppParCurves_MultiCurve {.
    importcpp: "ChangeValue", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc SplineValue*(this: var GeomInt_TheComputeLineBezierOfWLApprox): AppParCurves_MultiBSpCurve {.
    importcpp: "SplineValue", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc Parametrization*(this: GeomInt_TheComputeLineBezierOfWLApprox): Approx_ParametrizationType {.
    noSideEffect, importcpp: "Parametrization",
    header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}
proc Parameters*(this: GeomInt_TheComputeLineBezierOfWLApprox;
                Index: Standard_Integer = 1): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "GeomInt_TheComputeLineBezierOfWLApprox.hxx".}