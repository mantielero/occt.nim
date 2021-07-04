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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  GeomInt_TheMultiLineOfWLApprox, ../AppParCurves/AppParCurves_MultiCurve,
  ../Standard/Standard_Integer, ../math/math_Vector, ../Standard/Standard_Real,
  ../math/math_Matrix,
  GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox,
  ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../math/math_MultipleVarFunctionWithGradient,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox* {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx",
      bycopy.} = object of math_MultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                           ## ! curve has the desired degree Deg.
                                                           ## ! this method is used each time Value or Gradient is
                                                           ## ! needed.


proc constructGeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox*(
    SSP: GeomInt_TheMultiLineOfWLApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: math_Vector; Deg: Standard_Integer): GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox(@)", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc NbVariables*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc Value*(this: var GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
           X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc Gradient*(this: var GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
              X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc Values*(this: var GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
            X: math_Vector; F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc NewParameters*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): math_Vector {.
    noSideEffect, importcpp: "NewParameters", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc CurveValue*(this: var GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): AppParCurves_MultiCurve {.
    importcpp: "CurveValue", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc Error*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
           IPoint: Standard_Integer; CurveIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Error", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc MaxError3d*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc MaxError2d*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc FirstConstraint*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                     FirstPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc LastConstraint*(this: GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                    LastPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "LastConstraint", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}