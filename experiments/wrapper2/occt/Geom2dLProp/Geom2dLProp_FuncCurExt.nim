##  Created on: 1994-09-02
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
type
  Geom2dLProp_FuncCurExt* {.importcpp: "Geom2dLProp_FuncCurExt",
                           header: "Geom2dLProp_FuncCurExt.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructGeom2dLProp_FuncCurExt*(C: handle[Geom2d_Curve]; Tol: Standard_Real): Geom2dLProp_FuncCurExt {.
    constructor, importcpp: "Geom2dLProp_FuncCurExt(@)",
    header: "Geom2dLProp_FuncCurExt.hxx".}
proc Value*(this: var Geom2dLProp_FuncCurExt; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Geom2dLProp_FuncCurExt.hxx".}
proc Derivative*(this: var Geom2dLProp_FuncCurExt; X: Standard_Real;
                D: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "Geom2dLProp_FuncCurExt.hxx".}
proc Values*(this: var Geom2dLProp_FuncCurExt; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "Geom2dLProp_FuncCurExt.hxx".}
proc IsMinKC*(this: Geom2dLProp_FuncCurExt; Param: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsMinKC", header: "Geom2dLProp_FuncCurExt.hxx".}