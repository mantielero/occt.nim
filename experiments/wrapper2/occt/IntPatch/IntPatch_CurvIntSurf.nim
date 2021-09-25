##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of IntPatch_HCurve2dTool"
discard "forward decl of IntPatch_CSFunction"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of gp_Pnt"
type
  IntPatchCurvIntSurf* {.importcpp: "IntPatch_CurvIntSurf",
                        header: "IntPatch_CurvIntSurf.hxx", bycopy.} = object ## ! compute the
                                                                         ## solution point with the close point
                                                                         ## !
                                                                         ## MarginCoef is the
                                                                         ## coefficient for
                                                                         ## extension of UV bounds.
                                                                         ## ! Ex., UFirst -=
                                                                         ## MarginCoef*(ULast-UFirst)


proc constructIntPatchCurvIntSurf*(u: float; v: float; w: float; f: IntPatchCSFunction;
                                  tolTangency: float; marginCoef: float = 0.0): IntPatchCurvIntSurf {.
    constructor, importcpp: "IntPatch_CurvIntSurf(@)",
    header: "IntPatch_CurvIntSurf.hxx".}
proc constructIntPatchCurvIntSurf*(f: IntPatchCSFunction; tolTangency: float): IntPatchCurvIntSurf {.
    constructor, importcpp: "IntPatch_CurvIntSurf(@)",
    header: "IntPatch_CurvIntSurf.hxx".}
proc perform*(this: var IntPatchCurvIntSurf; u: float; v: float; w: float;
             rsnld: var MathFunctionSetRoot; u0: float; v0: float; u1: float; v1: float;
             w0: float; w1: float) {.importcpp: "Perform",
                                 header: "IntPatch_CurvIntSurf.hxx".}
proc isDone*(this: IntPatchCurvIntSurf): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntPatch_CurvIntSurf.hxx".}
proc isEmpty*(this: IntPatchCurvIntSurf): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "IntPatch_CurvIntSurf.hxx".}
proc point*(this: IntPatchCurvIntSurf): Pnt {.noSideEffect, importcpp: "Point",
    header: "IntPatch_CurvIntSurf.hxx".}
proc parameterOnCurve*(this: IntPatchCurvIntSurf): float {.noSideEffect,
    importcpp: "ParameterOnCurve", header: "IntPatch_CurvIntSurf.hxx".}
proc parameterOnSurface*(this: IntPatchCurvIntSurf; u: var float; v: var float) {.
    noSideEffect, importcpp: "ParameterOnSurface",
    header: "IntPatch_CurvIntSurf.hxx".}
proc function*(this: var IntPatchCurvIntSurf): var IntPatchCSFunction {.
    importcpp: "Function", header: "IntPatch_CurvIntSurf.hxx".}
