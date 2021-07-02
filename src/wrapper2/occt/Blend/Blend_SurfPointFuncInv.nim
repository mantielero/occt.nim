##  Created on: 1997-02-12
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
discard "forward decl of gp_Pnt"
type
  BlendSurfPointFuncInv* {.importcpp: "Blend_SurfPointFuncInv",
                          header: "Blend_SurfPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## 3.


proc nbVariables*(this: BlendSurfPointFuncInv): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_SurfPointFuncInv.hxx".}
proc nbEquations*(this: BlendSurfPointFuncInv): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_SurfPointFuncInv.hxx".}
proc value*(this: var BlendSurfPointFuncInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "Blend_SurfPointFuncInv.hxx".}
proc derivatives*(this: var BlendSurfPointFuncInv; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "Blend_SurfPointFuncInv.hxx".}
proc values*(this: var BlendSurfPointFuncInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "Blend_SurfPointFuncInv.hxx".}
proc set*(this: var BlendSurfPointFuncInv; p: GpPnt) {.importcpp: "Set",
    header: "Blend_SurfPointFuncInv.hxx".}
proc getTolerance*(this: BlendSurfPointFuncInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "Blend_SurfPointFuncInv.hxx".}
proc getBounds*(this: BlendSurfPointFuncInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "Blend_SurfPointFuncInv.hxx".}
proc isSolution*(this: var BlendSurfPointFuncInv; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "Blend_SurfPointFuncInv.hxx".}

