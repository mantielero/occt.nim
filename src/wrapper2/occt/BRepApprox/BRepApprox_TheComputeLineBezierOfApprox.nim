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
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_SequenceOfMultiCurve,
  ../AppParCurves/AppParCurves_MultiCurve,
  ../AppParCurves/AppParCurves_MultiBSpCurve, ../Standard/Standard_Boolean,
  ../Approx/Approx_ParametrizationType, ../TColStd/TColStd_HArray1OfReal,
  ../Approx/Approx_SequenceOfHArray1OfReal, ../TColStd/TColStd_SequenceOfReal,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal

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
  BRepApprox_TheComputeLineBezierOfApprox* {.
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


proc constructBRepApprox_TheComputeLineBezierOfApprox*(
    Line: BRepApprox_TheMultiLineOfApprox; degreemin: Standard_Integer = 4;
    degreemax: Standard_Integer = 8; Tolerance3d: Standard_Real = 1.0e-3;
    Tolerance2d: Standard_Real = 1.0e-6; NbIterations: Standard_Integer = 5;
    cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApprox_TheComputeLineBezierOfApprox*(
    Line: BRepApprox_TheMultiLineOfApprox; Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApprox_TheComputeLineBezierOfApprox*(Parameters: math_Vector;
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc constructBRepApprox_TheComputeLineBezierOfApprox*(
    degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
    Tolerance3d: Standard_Real = 1.0e-03; Tolerance2d: Standard_Real = 1.0e-06;
    NbIterations: Standard_Integer = 5; cutting: Standard_Boolean = Standard_True;
    parametrization: Approx_ParametrizationType = Approx_ChordLength;
    Squares: Standard_Boolean = Standard_False): BRepApprox_TheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_TheComputeLineBezierOfApprox(@)",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc Init*(this: var BRepApprox_TheComputeLineBezierOfApprox;
          degreemin: Standard_Integer = 4; degreemax: Standard_Integer = 8;
          Tolerance3d: Standard_Real = 1.0e-03;
          Tolerance2d: Standard_Real = 1.0e-06; NbIterations: Standard_Integer = 5;
          cutting: Standard_Boolean = Standard_True;
          parametrization: Approx_ParametrizationType = Approx_ChordLength;
          Squares: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc Perform*(this: var BRepApprox_TheComputeLineBezierOfApprox;
             Line: BRepApprox_TheMultiLineOfApprox) {.importcpp: "Perform",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc SetDegrees*(this: var BRepApprox_TheComputeLineBezierOfApprox;
                degreemin: Standard_Integer; degreemax: Standard_Integer) {.
    importcpp: "SetDegrees", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc SetTolerances*(this: var BRepApprox_TheComputeLineBezierOfApprox;
                   Tolerance3d: Standard_Real; Tolerance2d: Standard_Real) {.
    importcpp: "SetTolerances",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc SetConstraints*(this: var BRepApprox_TheComputeLineBezierOfApprox;
                    firstC: AppParCurves_Constraint;
                    lastC: AppParCurves_Constraint) {.importcpp: "SetConstraints",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc IsAllApproximated*(this: BRepApprox_TheComputeLineBezierOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsAllApproximated",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc IsToleranceReached*(this: BRepApprox_TheComputeLineBezierOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsToleranceReached",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc Error*(this: BRepApprox_TheComputeLineBezierOfApprox; Index: Standard_Integer;
           tol3d: var Standard_Real; tol2d: var Standard_Real) {.noSideEffect,
    importcpp: "Error", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc NbMultiCurves*(this: BRepApprox_TheComputeLineBezierOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbMultiCurves",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc Value*(this: BRepApprox_TheComputeLineBezierOfApprox;
           Index: Standard_Integer = 1): AppParCurves_MultiCurve {.noSideEffect,
    importcpp: "Value", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc ChangeValue*(this: var BRepApprox_TheComputeLineBezierOfApprox;
                 Index: Standard_Integer = 1): var AppParCurves_MultiCurve {.
    importcpp: "ChangeValue",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc SplineValue*(this: var BRepApprox_TheComputeLineBezierOfApprox): AppParCurves_MultiBSpCurve {.
    importcpp: "SplineValue",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc Parametrization*(this: BRepApprox_TheComputeLineBezierOfApprox): Approx_ParametrizationType {.
    noSideEffect, importcpp: "Parametrization",
    header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}
proc Parameters*(this: BRepApprox_TheComputeLineBezierOfApprox;
                Index: Standard_Integer = 1): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "BRepApprox_TheComputeLineBezierOfApprox.hxx".}