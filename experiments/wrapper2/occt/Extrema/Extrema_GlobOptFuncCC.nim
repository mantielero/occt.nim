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

type
  ExtremaGlobOptFuncCCC0* {.importcpp: "Extrema_GlobOptFuncCCC0",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunction


proc constructExtremaGlobOptFuncCCC0*(c1: Adaptor3dCurve; c2: Adaptor3dCurve): ExtremaGlobOptFuncCCC0 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC0(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc constructExtremaGlobOptFuncCCC0*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d): ExtremaGlobOptFuncCCC0 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC0(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCCC0): cint {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc value*(this: var ExtremaGlobOptFuncCCC0; x: MathVector; f: var cfloat): bool {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C1.

type
  ExtremaGlobOptFuncCCC1* {.importcpp: "Extrema_GlobOptFuncCCC1",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient


proc constructExtremaGlobOptFuncCCC1*(c1: Adaptor3dCurve; c2: Adaptor3dCurve): ExtremaGlobOptFuncCCC1 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC1(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc constructExtremaGlobOptFuncCCC1*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d): ExtremaGlobOptFuncCCC1 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC1(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCCC1): cint {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc value*(this: var ExtremaGlobOptFuncCCC1; x: MathVector; f: var cfloat): bool {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
proc gradient*(this: var ExtremaGlobOptFuncCCC1; x: MathVector; g: var MathVector): bool {.
    importcpp: "Gradient", header: "Extrema_GlobOptFuncCC.hxx".}
proc values*(this: var ExtremaGlobOptFuncCCC1; x: MathVector; f: var cfloat;
            g: var MathVector): bool {.importcpp: "Values",
                                   header: "Extrema_GlobOptFuncCC.hxx".}
## ! This class implements function which calculate Eucluidean distance
## ! between point on curve and point on other curve in case of C1 and C2 continuity is C2.

type
  ExtremaGlobOptFuncCCC2* {.importcpp: "Extrema_GlobOptFuncCCC2",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunctionWithHessian


proc constructExtremaGlobOptFuncCCC2*(c1: Adaptor3dCurve; c2: Adaptor3dCurve): ExtremaGlobOptFuncCCC2 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC2(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc constructExtremaGlobOptFuncCCC2*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d): ExtremaGlobOptFuncCCC2 {.
    constructor, importcpp: "Extrema_GlobOptFuncCCC2(@)",
    header: "Extrema_GlobOptFuncCC.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCCC2): cint {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCC.hxx".}
proc value*(this: var ExtremaGlobOptFuncCCC2; x: MathVector; f: var cfloat): bool {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCC.hxx".}
proc gradient*(this: var ExtremaGlobOptFuncCCC2; x: MathVector; g: var MathVector): bool {.
    importcpp: "Gradient", header: "Extrema_GlobOptFuncCC.hxx".}
proc values*(this: var ExtremaGlobOptFuncCCC2; x: MathVector; f: var cfloat;
            g: var MathVector): bool {.importcpp: "Values",
                                   header: "Extrema_GlobOptFuncCC.hxx".}
proc values*(this: var ExtremaGlobOptFuncCCC2; x: MathVector; f: var cfloat;
            g: var MathVector; h: var MathMatrix): bool {.importcpp: "Values",
    header: "Extrema_GlobOptFuncCC.hxx".}

























