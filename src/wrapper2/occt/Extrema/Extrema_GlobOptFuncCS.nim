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

import
  ../Adaptor3d/Adaptor3d_Curve, ../Adaptor3d/Adaptor3d_Surface,
  ../math/math_Matrix, ../math/math_Vector,
  ../math/math_MultipleVarFunctionWithHessian

## ! This class implements function which calculate square Eucluidean distance
## ! between point on curve and point on surface in case of continuity is C2.

type
  Extrema_GlobOptFuncCS* {.importcpp: "Extrema_GlobOptFuncCS",
                          header: "Extrema_GlobOptFuncCS.hxx", bycopy.} = object of math_MultipleVarFunctionWithHessian ##
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


proc constructExtrema_GlobOptFuncCS*(C: ptr Adaptor3d_Curve;
                                    S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncCS {.
    constructor, importcpp: "Extrema_GlobOptFuncCS(@)",
    header: "Extrema_GlobOptFuncCS.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCS): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCS.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCS; theX: math_Vector;
           theF: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Extrema_GlobOptFuncCS.hxx".}
proc Gradient*(this: var Extrema_GlobOptFuncCS; theX: math_Vector;
              theG: var math_Vector): Standard_Boolean {.importcpp: "Gradient",
    header: "Extrema_GlobOptFuncCS.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCS; theX: math_Vector;
            theF: var Standard_Real; theG: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "Extrema_GlobOptFuncCS.hxx".}
proc Values*(this: var Extrema_GlobOptFuncCS; theX: math_Vector;
            theF: var Standard_Real; theG: var math_Vector; theH: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "Extrema_GlobOptFuncCS.hxx".}