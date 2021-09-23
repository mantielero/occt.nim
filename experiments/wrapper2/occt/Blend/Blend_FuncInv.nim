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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ../math/math_Vector,
  ../Standard/Standard_Real

discard "forward decl of math_Matrix"
discard "forward decl of Adaptor2d_HCurve2d"
type
  Blend_FuncInv* {.importcpp: "Blend_FuncInv", header: "Blend_FuncInv.hxx", bycopy.} = object of math_FunctionSetWithDerivatives ##
                                                                                                                       ## !
                                                                                                                       ## Returns
                                                                                                                       ## 4.


proc NbVariables*(this: Blend_FuncInv): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_FuncInv.hxx".}
proc NbEquations*(this: Blend_FuncInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_FuncInv.hxx".}
proc Value*(this: var Blend_FuncInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Blend_FuncInv.hxx".}
proc Derivatives*(this: var Blend_FuncInv; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Blend_FuncInv.hxx".}
proc Values*(this: var Blend_FuncInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Blend_FuncInv.hxx".}
proc Set*(this: var Blend_FuncInv; OnFirst: Standard_Boolean;
         COnSurf: handle[Adaptor2d_HCurve2d]) {.importcpp: "Set",
    header: "Blend_FuncInv.hxx".}
proc GetTolerance*(this: Blend_FuncInv; Tolerance: var math_Vector; Tol: Standard_Real) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_FuncInv.hxx".}
proc GetBounds*(this: Blend_FuncInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "Blend_FuncInv.hxx".}
proc IsSolution*(this: var Blend_FuncInv; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "Blend_FuncInv.hxx".}