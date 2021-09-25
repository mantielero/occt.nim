##  Created on: 1991-07-24
##  Created by: Michel CHAUVAT
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of math_Matrix"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaFuncPSNorm* {.importcpp: "Extrema_FuncPSNorm",
                      header: "Extrema_FuncPSNorm.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructExtremaFuncPSNorm*(): ExtremaFuncPSNorm {.constructor,
    importcpp: "Extrema_FuncPSNorm(@)", header: "Extrema_FuncPSNorm.hxx".}
proc constructExtremaFuncPSNorm*(p: Pnt; s: Adaptor3dSurface): ExtremaFuncPSNorm {.
    constructor, importcpp: "Extrema_FuncPSNorm(@)",
    header: "Extrema_FuncPSNorm.hxx".}
proc initialize*(this: var ExtremaFuncPSNorm; s: Adaptor3dSurface) {.
    importcpp: "Initialize", header: "Extrema_FuncPSNorm.hxx".}
proc setPoint*(this: var ExtremaFuncPSNorm; p: Pnt) {.importcpp: "SetPoint",
    header: "Extrema_FuncPSNorm.hxx".}
proc nbVariables*(this: ExtremaFuncPSNorm): int {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_FuncPSNorm.hxx".}
proc nbEquations*(this: ExtremaFuncPSNorm): int {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_FuncPSNorm.hxx".}
proc value*(this: var ExtremaFuncPSNorm; uv: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Extrema_FuncPSNorm.hxx".}
proc derivatives*(this: var ExtremaFuncPSNorm; uv: MathVector; df: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Extrema_FuncPSNorm.hxx".}
proc values*(this: var ExtremaFuncPSNorm; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.importcpp: "Values",
                                    header: "Extrema_FuncPSNorm.hxx".}
proc getStateNumber*(this: var ExtremaFuncPSNorm): int {.importcpp: "GetStateNumber",
    header: "Extrema_FuncPSNorm.hxx".}
proc nbExt*(this: ExtremaFuncPSNorm): int {.noSideEffect, importcpp: "NbExt",
                                        header: "Extrema_FuncPSNorm.hxx".}
proc squareDistance*(this: ExtremaFuncPSNorm; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_FuncPSNorm.hxx".}
proc point*(this: ExtremaFuncPSNorm; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_FuncPSNorm.hxx".}
