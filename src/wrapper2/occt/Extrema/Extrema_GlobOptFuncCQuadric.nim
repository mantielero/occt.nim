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

import
  ../Adaptor3d/Adaptor3d_Curve, ../Adaptor3d/Adaptor3d_Surface,
  ../math/math_Matrix, ../math/math_Vector, ../math/math_MultipleVarFunction,
  ../GeomAbs/GeomAbs_SurfaceType, ../gp/gp_Pln, ../gp/gp_Cylinder, ../gp/gp_Cone,
  ../gp/gp_Sphere, ../gp/gp_Torus

## ! This class implements function which calculate square Eucluidean distance
## ! between point on surface and nearest point on Conic.

type
  Extrema_GlobOptFuncCQuadric* {.importcpp: "Extrema_GlobOptFuncCQuadric",
                                header: "Extrema_GlobOptFuncCQuadric.hxx", bycopy.} = object of math_MultipleVarFunction ##
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
                                                                                                                  ## Extrema_GlobOptFuncCQuadric.
    ##  Boundaries


proc constructExtrema_GlobOptFuncCQuadric*(C: ptr Adaptor3d_Curve): Extrema_GlobOptFuncCQuadric {.
    constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc constructExtrema_GlobOptFuncCQuadric*(C: ptr Adaptor3d_Curve;
    theTf: Standard_Real; theTl: Standard_Real): Extrema_GlobOptFuncCQuadric {.
    constructor, importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc constructExtrema_GlobOptFuncCQuadric*(C: ptr Adaptor3d_Curve;
    S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncCQuadric {.constructor,
    importcpp: "Extrema_GlobOptFuncCQuadric(@)",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc LoadQuad*(this: var Extrema_GlobOptFuncCQuadric; S: ptr Adaptor3d_Surface;
              theUf: Standard_Real; theUl: Standard_Real; theVf: Standard_Real;
              theVl: Standard_Real) {.importcpp: "LoadQuad",
                                    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncCQuadric): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc Value*(this: var Extrema_GlobOptFuncCQuadric; theX: math_Vector;
           theF: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Extrema_GlobOptFuncCQuadric.hxx".}
proc QuadricParameters*(this: Extrema_GlobOptFuncCQuadric; theCT: math_Vector;
                       theUV: var math_Vector) {.noSideEffect,
    importcpp: "QuadricParameters", header: "Extrema_GlobOptFuncCQuadric.hxx".}