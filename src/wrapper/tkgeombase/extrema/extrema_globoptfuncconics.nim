import extrema_types

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



proc newExtremaGlobOptFuncConicS*(c: ptr Adaptor3dCurve; s: ptr Adaptor3dSurface): ExtremaGlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc newExtremaGlobOptFuncConicS*(s: ptr Adaptor3dSurface): ExtremaGlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc newExtremaGlobOptFuncConicS*(s: ptr Adaptor3dSurface; theUf: cfloat;
                                 theUl: cfloat; theVf: cfloat; theVl: cfloat): ExtremaGlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc loadConic*(this: var ExtremaGlobOptFuncConicS; s: ptr Adaptor3dCurve;
               theTf: cfloat; theTl: cfloat) {.cdecl, importcpp: "LoadConic",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncConicS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncConicS.hxx".}
proc value*(this: var ExtremaGlobOptFuncConicS; theX: MathVector; theF: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncConicS.hxx".}
proc conicParameter*(this: ExtremaGlobOptFuncConicS; theUV: MathVector): cfloat {.
    noSideEffect, cdecl, importcpp: "ConicParameter", header: "Extrema_GlobOptFuncConicS.hxx".}
