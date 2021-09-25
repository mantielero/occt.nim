##  Created on: 1997-02-21
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of math_Matrix"
discard "forward decl of Adaptor2d_HCurve2d"
type
  BlendSurfCurvFuncInv* {.importcpp: "Blend_SurfCurvFuncInv",
                         header: "Blend_SurfCurvFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## 3.


proc nbVariables*(this: BlendSurfCurvFuncInv): int {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_SurfCurvFuncInv.hxx".}
proc nbEquations*(this: BlendSurfCurvFuncInv): int {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_SurfCurvFuncInv.hxx".}
proc value*(this: var BlendSurfCurvFuncInv; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Blend_SurfCurvFuncInv.hxx".}
proc derivatives*(this: var BlendSurfCurvFuncInv; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Blend_SurfCurvFuncInv.hxx".}
proc values*(this: var BlendSurfCurvFuncInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "Blend_SurfCurvFuncInv.hxx".}
proc set*(this: var BlendSurfCurvFuncInv; rst: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Set", header: "Blend_SurfCurvFuncInv.hxx".}
proc getTolerance*(this: BlendSurfCurvFuncInv; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_SurfCurvFuncInv.hxx".}
proc getBounds*(this: BlendSurfCurvFuncInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "Blend_SurfCurvFuncInv.hxx".}
proc isSolution*(this: var BlendSurfCurvFuncInv; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "Blend_SurfCurvFuncInv.hxx".}
