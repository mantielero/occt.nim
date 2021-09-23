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
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_Constraint,
  ../AppParCurves/AppParCurves_MultiBSpCurve, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../math/math_Matrix, ../math/math_Vector,
  ../math/math_IntegerVector, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx",
      bycopy.} = object ## ! given a MultiLine, this algorithm computes the least
                     ## ! square resolution using the Householder-QR method.
                     ## ! If the first and/or the last point is a constraint
                     ## ! point, the value of the tangency or curvature is
                     ## ! computed in the resolution.
                     ## ! NbPol is the number of control points wanted
                     ## ! for the approximating curves.
                     ## ! The system to solve is the following:
                     ## ! A X = B.
                     ## ! Where A is the Bernstein matrix computed with the
                     ## ! parameters, B the points coordinates and X the poles
                     ## ! solutions.
                     ## ! The matrix A is the same for each coordinate x, y and z
                     ## ! and is also the same for each MultiLine point because
                     ## ! they are approximated in parallel(so with the same
                     ## ! parameter, only the vector B changes).
                     ## ! is used by the constuctors above.


proc constructBRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer; FirstCons: AppParCurves_Constraint;
    LastCons: AppParCurves_Constraint; Parameters: math_Vector;
    NbPol: Standard_Integer): BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer; FirstCons: AppParCurves_Constraint;
    LastCons: AppParCurves_Constraint; NbPol: Standard_Integer): BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer; FirstCons: AppParCurves_Constraint;
    LastCons: AppParCurves_Constraint; Parameters: math_Vector;
    NbPol: Standard_Integer): BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer; FirstCons: AppParCurves_Constraint;
    LastCons: AppParCurves_Constraint; NbPol: Standard_Integer): BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Perform*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             Parameters: math_Vector) {.importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Perform*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             Parameters: math_Vector; l1: Standard_Real; l2: Standard_Real) {.
    importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Perform*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             Parameters: math_Vector; V1t: math_Vector; V2t: math_Vector;
             l1: Standard_Real; l2: Standard_Real) {.importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Perform*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             Parameters: math_Vector; V1t: math_Vector; V2t: math_Vector;
             V1c: math_Vector; V2c: math_Vector; l1: Standard_Real; l2: Standard_Real) {.
    importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc IsDone*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc BezierValue*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurves_MultiCurve {.
    importcpp: "BezierValue", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc BSplineValue*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurves_MultiBSpCurve {.
    importcpp: "BSplineValue", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc FunctionMatrix*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc DerivativeFunctionMatrix*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc ErrorGradient*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
                   Grad: var math_Vector; F: var Standard_Real;
                   MaxE3d: var Standard_Real; MaxE2d: var Standard_Real) {.
    importcpp: "ErrorGradient", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Distance*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    importcpp: "Distance", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Error*(this: var BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
           F: var Standard_Real; MaxE3d: var Standard_Real; MaxE2d: var Standard_Real) {.
    importcpp: "Error", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc FirstLambda*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "FirstLambda", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc LastLambda*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "LastLambda", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Points*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "Points", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Poles*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "Poles", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc KIndex*(this: BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): math_IntegerVector {.
    noSideEffect, importcpp: "KIndex", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}