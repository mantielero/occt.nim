##  Created on: 2014-06-23
##  Created by: Alexander Malyshev
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

## ! This class implements function which calculate square Eucluidean distance
## ! between point on curve and point on surface in case of continuity is C2.

type
  ExtremaGlobOptFuncCS* {.importcpp: "Extrema_GlobOptFuncCS",
                         header: "Extrema_GlobOptFuncCS.hxx", bycopy.} = object of MathMultipleVarFunctionWithHessian ##
                                                                                                               ## !
                                                                                                               ## Curve
                                                                                                               ## and
                                                                                                               ## surface
                                                                                                               ## should
                                                                                                               ## exist
                                                                                                               ## during
                                                                                                               ## all
                                                                                                               ## the
                                                                                                               ## lifetime
                                                                                                               ## of
                                                                                                               ## Extrema_GlobOptFuncCS.


proc constructExtremaGlobOptFuncCS*(c: ptr Adaptor3dCurve; s: ptr Adaptor3dSurface): ExtremaGlobOptFuncCS {.
    constructor, importcpp: "Extrema_GlobOptFuncCS(@)",
    header: "Extrema_GlobOptFuncCS.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCS): int {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCS.hxx".}
proc value*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theF: var float): bool {.
    importcpp: "Value", header: "Extrema_GlobOptFuncCS.hxx".}
proc gradient*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theG: var MathVector): bool {.
    importcpp: "Gradient", header: "Extrema_GlobOptFuncCS.hxx".}
proc values*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theF: var float;
            theG: var MathVector): bool {.importcpp: "Values",
                                      header: "Extrema_GlobOptFuncCS.hxx".}
proc values*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theF: var float;
            theG: var MathVector; theH: var MathMatrix): bool {.importcpp: "Values",
    header: "Extrema_GlobOptFuncCS.hxx".}
