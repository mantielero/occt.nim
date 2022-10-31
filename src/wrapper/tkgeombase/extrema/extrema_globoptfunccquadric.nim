import ../../tkmath/math/math_types
import ../../tkg3d/adaptor3d/adaptor3d_types
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



proc newExtremaGlobOptFuncCQuadric*(c: ptr Adaptor3dCurve): ExtremaGlobOptFuncCQuadric {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc newExtremaGlobOptFuncCQuadric*(c: ptr Adaptor3dCurve; theTf: cfloat;
                                   theTl: cfloat): ExtremaGlobOptFuncCQuadric {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc newExtremaGlobOptFuncCQuadric*(c: ptr Adaptor3dCurve; s: ptr Adaptor3dSurface): ExtremaGlobOptFuncCQuadric {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc loadQuad*(this: var ExtremaGlobOptFuncCQuadric; s: ptr Adaptor3dSurface;
              theUf: cfloat; theUl: cfloat; theVf: cfloat; theVl: cfloat) {.cdecl,
    importcpp: "LoadQuad", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncCQuadric): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc value*(this: var ExtremaGlobOptFuncCQuadric; theX: MathVector; theF: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc quadricParameters*(this: ExtremaGlobOptFuncCQuadric; theCT: MathVector;
                       theUV: var MathVector) {.noSideEffect, cdecl,
    importcpp: "QuadricParameters", header: "Extrema_GlobOptFuncCQuadric.hxx".}


