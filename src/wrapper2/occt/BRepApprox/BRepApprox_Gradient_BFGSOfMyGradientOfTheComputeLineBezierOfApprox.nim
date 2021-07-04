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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../math/math_BFGS,
  ../math/math_Vector, ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_MyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox* {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx",
      bycopy.} = object of math_BFGS


proc constructBRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox*(
    F: var math_MultipleVarFunctionWithGradient; StartingPoint: math_Vector;
    Tolerance3d: Standard_Real; Tolerance2d: Standard_Real; Eps: Standard_Real;
    NbIterations: Standard_Integer = 200): BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc IsSolutionReached*(this: BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox;
                       F: var math_MultipleVarFunctionWithGradient): Standard_Boolean {.
    noSideEffect, importcpp: "IsSolutionReached", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}