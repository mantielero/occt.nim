##  Created on: 1993-12-02
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
  BlendFuncInv* {.importcpp: "Blend_FuncInv", header: "Blend_FuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## 4.


proc nbVariables*(this: BlendFuncInv): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_FuncInv.hxx".}
proc nbEquations*(this: BlendFuncInv): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_FuncInv.hxx".}
proc value*(this: var BlendFuncInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "Blend_FuncInv.hxx".}
proc derivatives*(this: var BlendFuncInv; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "Blend_FuncInv.hxx".}
proc values*(this: var BlendFuncInv; x: MathVector; f: var MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Values", header: "Blend_FuncInv.hxx".}
proc set*(this: var BlendFuncInv; onFirst: StandardBoolean;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "Blend_FuncInv.hxx".}
proc getTolerance*(this: BlendFuncInv; tolerance: var MathVector; tol: StandardReal) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_FuncInv.hxx".}
proc getBounds*(this: BlendFuncInv; infBound: var MathVector; supBound: var MathVector) {.
    noSideEffect, importcpp: "GetBounds", header: "Blend_FuncInv.hxx".}
proc isSolution*(this: var BlendFuncInv; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "Blend_FuncInv.hxx".}

