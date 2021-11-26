##  Created on: 1996-01-22
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
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of math_Matrix"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaFuncExtCS* {.importcpp: "Extrema_FuncExtCS",
                     header: "Extrema_FuncExtCS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc newExtremaFuncExtCS*(): ExtremaFuncExtCS {.cdecl, constructor,
    importcpp: "Extrema_FuncExtCS(@)", dynlib: tkgeombase.}
proc newExtremaFuncExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface): ExtremaFuncExtCS {.
    cdecl, constructor, importcpp: "Extrema_FuncExtCS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaFuncExtCS; c: Adaptor3dCurve; s: Adaptor3dSurface) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc nbVariables*(this: ExtremaFuncExtCS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkgeombase.}
proc nbEquations*(this: ExtremaFuncExtCS): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkgeombase.}
proc value*(this: var ExtremaFuncExtCS; uv: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
proc derivatives*(this: var ExtremaFuncExtCS; uv: MathVector; df: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkgeombase.}
proc values*(this: var ExtremaFuncExtCS; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkgeombase.}
proc getStateNumber*(this: var ExtremaFuncExtCS): cint {.cdecl,
    importcpp: "GetStateNumber", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaFuncExtCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaFuncExtCS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc pointOnCurve*(this: ExtremaFuncExtCS; n: cint): ExtremaPOnCurv {.noSideEffect,
    cdecl, importcpp: "PointOnCurve", dynlib: tkgeombase.}
proc pointOnSurface*(this: ExtremaFuncExtCS; n: cint): ExtremaPOnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnSurface", dynlib: tkgeombase.}
proc squareDistances*(this: var ExtremaFuncExtCS): var TColStdSequenceOfReal {.cdecl,
    importcpp: "SquareDistances", dynlib: tkgeombase.}
proc pointsOnCurve*(this: var ExtremaFuncExtCS): var ExtremaSequenceOfPOnCurv {.cdecl,
    importcpp: "PointsOnCurve", dynlib: tkgeombase.}
proc pointsOnSurf*(this: var ExtremaFuncExtCS): var ExtremaSequenceOfPOnSurf {.cdecl,
    importcpp: "PointsOnSurf", dynlib: tkgeombase.}