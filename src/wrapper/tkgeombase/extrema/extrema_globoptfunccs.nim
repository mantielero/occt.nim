import ../../tkmath/math/math_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types





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



proc newExtremaGlobOptFuncCS*(c: ptr Adaptor3dCurve; s: ptr Adaptor3dSurface): ExtremaGlobOptFuncCS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCS(@)", header: "Extrema_GlobOptFuncCS.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCS.hxx".}
proc value*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theF: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncCS.hxx".}
proc gradient*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theG: var MathVector): bool {.
    cdecl, importcpp: "Gradient", header: "Extrema_GlobOptFuncCS.hxx".}
proc values*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theF: var cfloat;
            theG: var MathVector): bool {.cdecl, importcpp: "Values",
                                      header: "Extrema_GlobOptFuncCS.hxx".}
proc values*(this: var ExtremaGlobOptFuncCS; theX: MathVector; theF: var cfloat;
            theG: var MathVector; theH: var MathMatrix): bool {.cdecl,
    importcpp: "Values", header: "Extrema_GlobOptFuncCS.hxx".}


