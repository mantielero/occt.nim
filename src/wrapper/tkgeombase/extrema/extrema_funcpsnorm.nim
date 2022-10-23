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


proc newExtremaFuncPSNorm*(): ExtremaFuncPSNorm {.cdecl, constructor,
    importcpp: "Extrema_FuncPSNorm(@)", header: "Extrema_FuncPSNorm.hxx".}
proc newExtremaFuncPSNorm*(p: PntObj; s: Adaptor3dSurface): ExtremaFuncPSNorm {.cdecl,
    constructor, importcpp: "Extrema_FuncPSNorm(@)", header: "Extrema_FuncPSNorm.hxx".}
proc initialize*(this: var ExtremaFuncPSNorm; s: Adaptor3dSurface) {.cdecl,
    importcpp: "Initialize", header: "Extrema_FuncPSNorm.hxx".}
proc setPoint*(this: var ExtremaFuncPSNorm; p: PntObj) {.cdecl, importcpp: "SetPoint",
    header: "Extrema_FuncPSNorm.hxx".}
proc nbVariables*(this: ExtremaFuncPSNorm): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_FuncPSNorm.hxx".}
proc nbEquations*(this: ExtremaFuncPSNorm): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Extrema_FuncPSNorm.hxx".}
proc value*(this: var ExtremaFuncPSNorm; uv: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "Extrema_FuncPSNorm.hxx".}
proc derivatives*(this: var ExtremaFuncPSNorm; uv: MathVector; df: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Extrema_FuncPSNorm.hxx".}
proc values*(this: var ExtremaFuncPSNorm; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "Extrema_FuncPSNorm.hxx".}
proc getStateNumber*(this: var ExtremaFuncPSNorm): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_FuncPSNorm.hxx".}
proc nbExt*(this: ExtremaFuncPSNorm): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "Extrema_FuncPSNorm.hxx".}
proc squareDistance*(this: ExtremaFuncPSNorm; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_FuncPSNorm.hxx".}
proc point*(this: ExtremaFuncPSNorm; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_FuncPSNorm.hxx".}