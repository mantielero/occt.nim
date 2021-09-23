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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  BRepApprox_TheMultiLineOfApprox, ../AppParCurves/AppParCurves_MultiCurve,
  ../Standard/Standard_Integer, ../math/math_Vector, ../Standard/Standard_Real,
  ../math/math_Matrix,
  BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox,
  ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../math/math_MultipleVarFunctionWithGradient,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox* {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx",
      bycopy.} = object of math_MultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                           ## ! curve has the desired degree Deg.
                                                           ## ! this method is used each time Value or Gradient is
                                                           ## ! needed.


proc constructBRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: math_Vector; Deg: Standard_Integer): BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc NbVariables*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc Value*(this: var BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
           X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc Gradient*(this: var BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
              X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc Values*(this: var BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
            X: math_Vector; F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc NewParameters*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): math_Vector {.
    noSideEffect, importcpp: "NewParameters", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc CurveValue*(this: var BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): AppParCurves_MultiCurve {.
    importcpp: "CurveValue", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc Error*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
           IPoint: Standard_Integer; CurveIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Error", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc MaxError3d*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc MaxError2d*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc FirstConstraint*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                     FirstPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc LastConstraint*(this: BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                    LastPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "LastConstraint", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}