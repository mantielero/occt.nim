##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../math/math_BFGS,
  ../math/math_Vector, ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_MyGradientOfCompute"
discard "forward decl of AppDef_ParLeastSquareOfMyGradientOfCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientOfCompute"
discard "forward decl of AppDef_ParFunctionOfMyGradientOfCompute"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  AppDef_Gradient_BFGSOfMyGradientOfCompute* {.
      importcpp: "AppDef_Gradient_BFGSOfMyGradientOfCompute",
      header: "AppDef_Gradient_BFGSOfMyGradientOfCompute.hxx", bycopy.} = object of math_BFGS


proc constructAppDef_Gradient_BFGSOfMyGradientOfCompute*(
    F: var math_MultipleVarFunctionWithGradient; StartingPoint: math_Vector;
    Tolerance3d: Standard_Real; Tolerance2d: Standard_Real; Eps: Standard_Real;
    NbIterations: Standard_Integer = 200): AppDef_Gradient_BFGSOfMyGradientOfCompute {.
    constructor, importcpp: "AppDef_Gradient_BFGSOfMyGradientOfCompute(@)",
    header: "AppDef_Gradient_BFGSOfMyGradientOfCompute.hxx".}
proc IsSolutionReached*(this: AppDef_Gradient_BFGSOfMyGradientOfCompute;
                       F: var math_MultipleVarFunctionWithGradient): Standard_Boolean {.
    noSideEffect, importcpp: "IsSolutionReached",
    header: "AppDef_Gradient_BFGSOfMyGradientOfCompute.hxx".}