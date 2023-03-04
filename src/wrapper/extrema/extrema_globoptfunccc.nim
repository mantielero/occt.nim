import extrema_types
import ../tkmath/math/math_types
import ../tkg2d/adaptor2d/adaptor2d_types
import ../tkg3d/adaptor3d/adaptor3d_types
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

## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C0.


proc newExtrema_GlobOptFuncCCC0*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_GlobOptFuncCCC0 {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCCC0(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc newExtrema_GlobOptFuncCCC0*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_GlobOptFuncCCC0 {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCCC0(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCCC0): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCCC0; X: Math_Vector; F: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C1.

type
  Extrema_GlobOptFuncCCC1* {.importcpp: "Extrema_GlobOptFuncCCC1",
                            header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of Math_MultipleVarFunctionWithGradient


proc newExtrema_GlobOptFuncCCC1*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_GlobOptFuncCCC1 {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCCC1(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc newExtrema_GlobOptFuncCCC1*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_GlobOptFuncCCC1 {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCCC1(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCCC1): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCCC1; X: Math_Vector; F: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
proc Gradient*(this: var Extrema_GlobOptFuncCCC1; X: Math_Vector; G: var Math_Vector): bool {.
    cdecl, importcpp: "Gradient", header: "Extrema_GlobOptFuncCC.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCCC1; X: Math_Vector; F: var cfloat;
            G: var Math_Vector): bool {.cdecl, importcpp: "Values",
                                    header: "Extrema_GlobOptFuncCC.hxx".}
## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C2.

type
  Extrema_GlobOptFuncCCC2* {.importcpp: "Extrema_GlobOptFuncCCC2",
                            header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of Math_MultipleVarFunctionWithHessian


proc newExtrema_GlobOptFuncCCC2*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_GlobOptFuncCCC2 {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCCC2(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc newExtrema_GlobOptFuncCCC2*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_GlobOptFuncCCC2 {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCCC2(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCCC2): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCCC2; X: Math_Vector; F: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
proc Gradient*(this: var Extrema_GlobOptFuncCCC2; X: Math_Vector; G: var Math_Vector): bool {.
    cdecl, importcpp: "Gradient", header: "Extrema_GlobOptFuncCC.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCCC2; X: Math_Vector; F: var cfloat;
            G: var Math_Vector): bool {.cdecl, importcpp: "Values",
                                    header: "Extrema_GlobOptFuncCC.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCCC2; X: Math_Vector; F: var cfloat;
            G: var Math_Vector; H: var Math_Matrix): bool {.cdecl, importcpp: "Values",
    header: "Extrema_GlobOptFuncCC.hxx".}