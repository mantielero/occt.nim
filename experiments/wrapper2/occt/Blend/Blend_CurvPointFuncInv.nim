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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ../math/math_Vector,
  ../Standard/Standard_Real

discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  Blend_CurvPointFuncInv* {.importcpp: "Blend_CurvPointFuncInv",
                           header: "Blend_CurvPointFuncInv.hxx", bycopy.} = object of math_FunctionSetWithDerivatives ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## 3.


proc NbVariables*(this: Blend_CurvPointFuncInv): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_CurvPointFuncInv.hxx".}
proc NbEquations*(this: Blend_CurvPointFuncInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_CurvPointFuncInv.hxx".}
proc Value*(this: var Blend_CurvPointFuncInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Blend_CurvPointFuncInv.hxx".}
proc Derivatives*(this: var Blend_CurvPointFuncInv; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Blend_CurvPointFuncInv.hxx".}
proc Values*(this: var Blend_CurvPointFuncInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Blend_CurvPointFuncInv.hxx".}
proc Set*(this: var Blend_CurvPointFuncInv; P: gp_Pnt) {.importcpp: "Set",
    header: "Blend_CurvPointFuncInv.hxx".}
proc GetTolerance*(this: Blend_CurvPointFuncInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "Blend_CurvPointFuncInv.hxx".}
proc GetBounds*(this: Blend_CurvPointFuncInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "Blend_CurvPointFuncInv.hxx".}
proc IsSolution*(this: var Blend_CurvPointFuncInv; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "Blend_CurvPointFuncInv.hxx".}