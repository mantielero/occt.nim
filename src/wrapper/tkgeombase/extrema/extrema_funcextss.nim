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


proc newExtremaFuncExtSS*(): ExtremaFuncExtSS {.cdecl, constructor,
    importcpp: "Extrema_FuncExtSS(@)", dynlib: tkgeombase.}
proc newExtremaFuncExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface): ExtremaFuncExtSS {.
    cdecl, constructor, importcpp: "Extrema_FuncExtSS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaFuncExtSS; s1: Adaptor3dSurface;
                s2: Adaptor3dSurface) {.cdecl, importcpp: "Initialize",
                                      dynlib: tkgeombase.}
proc nbVariables*(this: ExtremaFuncExtSS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkgeombase.}
proc nbEquations*(this: ExtremaFuncExtSS): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkgeombase.}
proc value*(this: var ExtremaFuncExtSS; uv: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
proc derivatives*(this: var ExtremaFuncExtSS; uv: MathVector; df: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkgeombase.}
proc values*(this: var ExtremaFuncExtSS; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkgeombase.}
proc getStateNumber*(this: var ExtremaFuncExtSS): cint {.cdecl,
    importcpp: "GetStateNumber", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaFuncExtSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaFuncExtSS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc pointOnS1*(this: ExtremaFuncExtSS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS1", dynlib: tkgeombase.}
proc pointOnS2*(this: ExtremaFuncExtSS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS2", dynlib: tkgeombase.}