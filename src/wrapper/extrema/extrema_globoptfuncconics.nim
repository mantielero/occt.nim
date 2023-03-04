import extrema_types
import ../../tkmath/math/math_types
import ../../tkg3d/adaptor3d/adaptor3d_types
##  Copyright (c) 2020 OPEN CASCADE SAS
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
## ! between point on surface and nearest point on Conic.


proc newExtrema_GlobOptFuncConicS*(C: ptr Adaptor3d_Curve; S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc newExtrema_GlobOptFuncConicS*(S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc newExtrema_GlobOptFuncConicS*(S: ptr Adaptor3d_Surface; theUf: cfloat;
                                  theUl: cfloat; theVf: cfloat; theVl: cfloat): Extrema_GlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc LoadConic*(this: var Extrema_GlobOptFuncConicS; S: ptr Adaptor3d_Curve;
               theTf: cfloat; theTl: cfloat) {.cdecl, importcpp: "LoadConic",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncConicS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncConicS.hxx".}
proc Value*(this: var Extrema_GlobOptFuncConicS; theX: Math_Vector; theF: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncConicS.hxx".}
proc ConicParameter*(this: Extrema_GlobOptFuncConicS; theUV: Math_Vector): cfloat {.
    noSideEffect, cdecl, importcpp: "ConicParameter",
    header: "Extrema_GlobOptFuncConicS.hxx".}