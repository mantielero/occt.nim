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


proc newExtremaGlobOptFuncConicS*(c: ptr Adaptor3dCurve; s: ptr Adaptor3dSurface): ExtremaGlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    dynlib: tkgeombase.}
proc newExtremaGlobOptFuncConicS*(s: ptr Adaptor3dSurface): ExtremaGlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    dynlib: tkgeombase.}
proc newExtremaGlobOptFuncConicS*(s: ptr Adaptor3dSurface; theUf: cfloat;
                                 theUl: cfloat; theVf: cfloat; theVl: cfloat): ExtremaGlobOptFuncConicS {.
    cdecl, constructor, importcpp: "Extrema_GlobOptFuncConicS(@)",
    dynlib: tkgeombase.}
proc loadConic*(this: var ExtremaGlobOptFuncConicS; s: ptr Adaptor3dCurve;
               theTf: cfloat; theTl: cfloat) {.cdecl, importcpp: "LoadConic",
    dynlib: tkgeombase.}
proc nbVariables*(this: ExtremaGlobOptFuncConicS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkgeombase.}
proc value*(this: var ExtremaGlobOptFuncConicS; theX: MathVector; theF: var cfloat): bool {.
    cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc conicParameter*(this: ExtremaGlobOptFuncConicS; theUV: MathVector): cfloat {.
    noSideEffect, cdecl, importcpp: "ConicParameter", dynlib: tkgeombase.}