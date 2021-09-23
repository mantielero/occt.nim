##  Created on: 2014-01-20
##  Created by: Alexaner Malyshev
##  Copyright (c) 2014-2014 OPEN CASCADE SAS
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
##  commercial license or contractual agreement

import
  ../Adaptor2d/Adaptor2d_Curve2d, ../Adaptor3d/Adaptor3d_Curve,
  ../math/math_Matrix, ../math/math_Vector, ../math/math_MultipleVarFunction,
  ../math/math_MultipleVarFunctionWithGradient,
  ../math/math_MultipleVarFunctionWithHessian

## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C0.

type
  Extrema_GlobOptFuncCCC0* {.importcpp: "Extrema_GlobOptFuncCCC0",
                            header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of math_MultipleVarFunction


proc constructExtrema_GlobOptFuncCCC0*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_GlobOptFuncCCC0 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC0(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc constructExtrema_GlobOptFuncCCC0*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_GlobOptFuncCCC0 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC0(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCCC0): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCCC0; X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C1.

type
  Extrema_GlobOptFuncCCC1* {.importcpp: "Extrema_GlobOptFuncCCC1",
                            header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of math_MultipleVarFunctionWithGradient


proc constructExtrema_GlobOptFuncCCC1*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_GlobOptFuncCCC1 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC1(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc constructExtrema_GlobOptFuncCCC1*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_GlobOptFuncCCC1 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC1(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCCC1): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCCC1; X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
proc Gradient*(this: var Extrema_GlobOptFuncCCC1; X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "Extrema_GlobOptFuncCC.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCCC1; X: math_Vector; F: var Standard_Real;
            G: var math_Vector): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_GlobOptFuncCC.hxx".}
## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C2.

type
  Extrema_GlobOptFuncCCC2* {.importcpp: "Extrema_GlobOptFuncCCC2",
                            header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of math_MultipleVarFunctionWithHessian


proc constructExtrema_GlobOptFuncCCC2*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_GlobOptFuncCCC2 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC2(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc constructExtrema_GlobOptFuncCCC2*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_GlobOptFuncCCC2 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC2(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCCC2): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCCC2; X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
proc Gradient*(this: var Extrema_GlobOptFuncCCC2; X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "Extrema_GlobOptFuncCC.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCCC2; X: math_Vector; F: var Standard_Real;
            G: var math_Vector): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCCC2; X: math_Vector; F: var Standard_Real;
            G: var math_Vector; H: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "Extrema_GlobOptFuncCC.hxx".}