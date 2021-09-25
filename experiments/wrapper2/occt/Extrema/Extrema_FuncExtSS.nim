##  Created on: 1996-01-09
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
##  commercial license or contractual agreement.

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of math_Matrix"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaFuncExtSS* {.importcpp: "Extrema_FuncExtSS",
                     header: "Extrema_FuncExtSS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructExtremaFuncExtSS*(): ExtremaFuncExtSS {.constructor,
    importcpp: "Extrema_FuncExtSS(@)", header: "Extrema_FuncExtSS.hxx".}
proc constructExtremaFuncExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface): ExtremaFuncExtSS {.
    constructor, importcpp: "Extrema_FuncExtSS(@)", header: "Extrema_FuncExtSS.hxx".}
proc initialize*(this: var ExtremaFuncExtSS; s1: Adaptor3dSurface;
                s2: Adaptor3dSurface) {.importcpp: "Initialize",
                                      header: "Extrema_FuncExtSS.hxx".}
proc nbVariables*(this: ExtremaFuncExtSS): int {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_FuncExtSS.hxx".}
proc nbEquations*(this: ExtremaFuncExtSS): int {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_FuncExtSS.hxx".}
proc value*(this: var ExtremaFuncExtSS; uv: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Extrema_FuncExtSS.hxx".}
proc derivatives*(this: var ExtremaFuncExtSS; uv: MathVector; df: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Extrema_FuncExtSS.hxx".}
proc values*(this: var ExtremaFuncExtSS; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.importcpp: "Values",
                                    header: "Extrema_FuncExtSS.hxx".}
proc getStateNumber*(this: var ExtremaFuncExtSS): int {.importcpp: "GetStateNumber",
    header: "Extrema_FuncExtSS.hxx".}
proc nbExt*(this: ExtremaFuncExtSS): int {.noSideEffect, importcpp: "NbExt",
                                       header: "Extrema_FuncExtSS.hxx".}
proc squareDistance*(this: ExtremaFuncExtSS; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_FuncExtSS.hxx".}
proc pointOnS1*(this: ExtremaFuncExtSS; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "PointOnS1", header: "Extrema_FuncExtSS.hxx".}
proc pointOnS2*(this: ExtremaFuncExtSS; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "PointOnS2", header: "Extrema_FuncExtSS.hxx".}
