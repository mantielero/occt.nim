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
  ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin, ../gp/gp_Circ, ../gp/gp_Elips,
  ../gp/gp_Hypr, ../gp/gp_Parab

## ! This class implements function which calculate square Eucluidean distance
## ! between point on surface and nearest point on Conic.

type
  Extrema_GlobOptFuncConicS* {.importcpp: "Extrema_GlobOptFuncConicS",
                              header: "Extrema_GlobOptFuncConicS.hxx", bycopy.} = object of math_MultipleVarFunction ##
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
                                                                                                              ## Extrema_GlobOptFuncConicS.
    ## Boundaries


proc constructExtrema_GlobOptFuncConicS*(C: ptr Adaptor3d_Curve;
                                        S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncConicS {.
    constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc constructExtrema_GlobOptFuncConicS*(S: ptr Adaptor3d_Surface): Extrema_GlobOptFuncConicS {.
    constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc constructExtrema_GlobOptFuncConicS*(S: ptr Adaptor3d_Surface;
                                        theUf: Standard_Real;
                                        theUl: Standard_Real;
                                        theVf: Standard_Real; theVl: Standard_Real): Extrema_GlobOptFuncConicS {.
    constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc LoadConic*(this: var Extrema_GlobOptFuncConicS; S: ptr Adaptor3d_Curve;
               theTf: Standard_Real; theTl: Standard_Real) {.importcpp: "LoadConic",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc NbVariables*(this: Extrema_GlobOptFuncConicS): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncConicS.hxx".}
proc Value*(this: var Extrema_GlobOptFuncConicS; theX: math_Vector;
           theF: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc ConicParameter*(this: Extrema_GlobOptFuncConicS; theUV: math_Vector): Standard_Real {.
    noSideEffect, importcpp: "ConicParameter",
    header: "Extrema_GlobOptFuncConicS.hxx".}