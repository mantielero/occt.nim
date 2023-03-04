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



proc newExtrema_GlobOptFuncCQuadric*(C: ptr Adaptor3d_Curve): Extrema_GlobOptFuncCQuadric {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc newExtrema_GlobOptFuncCQuadric*(C: ptr Adaptor3d_Curve; theTf: cfloat;
                                    theTl: cfloat): Extrema_GlobOptFuncCQuadric {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc newExtrema_GlobOptFuncCQuadric*(C: ptr Adaptor3d_Curve;
                                    S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncCQuadric {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc LoadQuad*(this: var Extrema_GlobOptFuncCQuadric; S: ptr Adaptor3d_Surface;
              theUf: cfloat; theUl: cfloat; theVf: cfloat; theVl: cfloat) {.cdecl,
    importcpp: "LoadQuad", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCQuadric): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCQuadric; theX: Math_Vector; theF: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc QuadricParameters*(this: Extrema_GlobOptFuncCQuadric; theCT: Math_Vector;
                       theUV: var Math_Vector) {.noSideEffect, cdecl,
    importcpp: "QuadricParameters", header: "Extrema_GlobOptFuncCQuadric.hxx".}