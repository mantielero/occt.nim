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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, IntPatch_CSFunction,
  ../Standard/Standard_Real

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
  IntPatch_CurvIntSurf* {.importcpp: "IntPatch_CurvIntSurf",
                         header: "IntPatch_CurvIntSurf.hxx", bycopy.} = object ## !
                                                                          ## compute the
                                                                          ## solution point with the close point
                                                                          ## !
                                                                          ## MarginCoef is the
                                                                          ## coefficient for
                                                                          ## extension of UV
                                                                          ## bounds.
                                                                          ## ! Ex., UFirst -=
                                                                          ## MarginCoef*(ULast-UFirst)


proc constructIntPatch_CurvIntSurf*(U: Standard_Real; V: Standard_Real;
                                   W: Standard_Real; F: IntPatch_CSFunction;
                                   TolTangency: Standard_Real;
                                   MarginCoef: Standard_Real = 0.0): IntPatch_CurvIntSurf {.
    constructor, importcpp: "IntPatch_CurvIntSurf(@)",
    header: "IntPatch_CurvIntSurf.hxx".}
proc constructIntPatch_CurvIntSurf*(F: IntPatch_CSFunction;
                                   TolTangency: Standard_Real): IntPatch_CurvIntSurf {.
    constructor, importcpp: "IntPatch_CurvIntSurf(@)",
    header: "IntPatch_CurvIntSurf.hxx".}
proc Perform*(this: var IntPatch_CurvIntSurf; U: Standard_Real; V: Standard_Real;
             W: Standard_Real; Rsnld: var math_FunctionSetRoot; u0: Standard_Real;
             v0: Standard_Real; u1: Standard_Real; v1: Standard_Real;
             w0: Standard_Real; w1: Standard_Real) {.importcpp: "Perform",
    header: "IntPatch_CurvIntSurf.hxx".}
proc IsDone*(this: IntPatch_CurvIntSurf): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_CurvIntSurf.hxx".}
proc IsEmpty*(this: IntPatch_CurvIntSurf): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_CurvIntSurf.hxx".}
proc Point*(this: IntPatch_CurvIntSurf): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "IntPatch_CurvIntSurf.hxx".}
proc ParameterOnCurve*(this: IntPatch_CurvIntSurf): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnCurve", header: "IntPatch_CurvIntSurf.hxx".}
proc ParameterOnSurface*(this: IntPatch_CurvIntSurf; U: var Standard_Real;
                        V: var Standard_Real) {.noSideEffect,
    importcpp: "ParameterOnSurface", header: "IntPatch_CurvIntSurf.hxx".}
proc Function*(this: var IntPatch_CurvIntSurf): var IntPatch_CSFunction {.
    importcpp: "Function", header: "IntPatch_CurvIntSurf.hxx".}