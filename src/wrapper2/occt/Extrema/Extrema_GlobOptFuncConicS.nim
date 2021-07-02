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

type
  ExtremaGlobOptFuncConicS* {.importcpp: "Extrema_GlobOptFuncConicS",
                             header: "Extrema_GlobOptFuncConicS.hxx", bycopy.} = object of MathMultipleVarFunction ##
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


proc constructExtremaGlobOptFuncConicS*(c: ptr Adaptor3dCurve;
                                       s: ptr Adaptor3dSurface): ExtremaGlobOptFuncConicS {.
    constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc constructExtremaGlobOptFuncConicS*(s: ptr Adaptor3dSurface): ExtremaGlobOptFuncConicS {.
    constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc constructExtremaGlobOptFuncConicS*(s: ptr Adaptor3dSurface;
                                       theUf: StandardReal; theUl: StandardReal;
                                       theVf: StandardReal; theVl: StandardReal): ExtremaGlobOptFuncConicS {.
    constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc loadConic*(this: var ExtremaGlobOptFuncConicS; s: ptr Adaptor3dCurve;
               theTf: StandardReal; theTl: StandardReal) {.importcpp: "LoadConic",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc nbVariables*(this: ExtremaGlobOptFuncConicS): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_GlobOptFuncConicS.hxx".}
proc value*(this: var ExtremaGlobOptFuncConicS; theX: MathVector;
           theF: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "Extrema_GlobOptFuncConicS.hxx".}
proc conicParameter*(this: ExtremaGlobOptFuncConicS; theUV: MathVector): StandardReal {.
    noSideEffect, importcpp: "ConicParameter",
    header: "Extrema_GlobOptFuncConicS.hxx".}

