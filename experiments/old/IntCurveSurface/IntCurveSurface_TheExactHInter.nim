##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of IntCurveSurface_TheCSFunctionOfHInter"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of gp_Pnt"
type
  IntCurveSurfaceTheExactHInter* {.importcpp: "IntCurveSurface_TheExactHInter",
                                  header: "IntCurveSurface_TheExactHInter.hxx",
                                  bycopy.} = object ## ! compute the solution point with the close point
                                                 ## ! MarginCoef is the coefficient for extension of UV bounds.
                                                 ## ! Ex., UFirst -= MarginCoef*(ULast-UFirst)


proc constructIntCurveSurfaceTheExactHInter*(u: cfloat; v: cfloat; w: cfloat;
    f: IntCurveSurfaceTheCSFunctionOfHInter; tolTangency: cfloat;
    marginCoef: cfloat = 0.0): IntCurveSurfaceTheExactHInter {.constructor,
    importcpp: "IntCurveSurface_TheExactHInter(@)",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc constructIntCurveSurfaceTheExactHInter*(
    f: IntCurveSurfaceTheCSFunctionOfHInter; tolTangency: cfloat): IntCurveSurfaceTheExactHInter {.
    constructor, importcpp: "IntCurveSurface_TheExactHInter(@)",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheExactHInter; u: cfloat; v: cfloat; w: cfloat;
             rsnld: var MathFunctionSetRoot; u0: cfloat; v0: cfloat; u1: cfloat;
             v1: cfloat; w0: cfloat; w1: cfloat) {.importcpp: "Perform",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc isDone*(this: IntCurveSurfaceTheExactHInter): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntCurveSurface_TheExactHInter.hxx".}
proc isEmpty*(this: IntCurveSurfaceTheExactHInter): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "IntCurveSurface_TheExactHInter.hxx".}
proc point*(this: IntCurveSurfaceTheExactHInter): Pnt {.noSideEffect,
    importcpp: "Point", header: "IntCurveSurface_TheExactHInter.hxx".}
proc parameterOnCurve*(this: IntCurveSurfaceTheExactHInter): cfloat {.noSideEffect,
    importcpp: "ParameterOnCurve", header: "IntCurveSurface_TheExactHInter.hxx".}
proc parameterOnSurface*(this: IntCurveSurfaceTheExactHInter; u: var cfloat;
                        v: var cfloat) {.noSideEffect,
                                      importcpp: "ParameterOnSurface", header: "IntCurveSurface_TheExactHInter.hxx".}
proc function*(this: var IntCurveSurfaceTheExactHInter): var IntCurveSurfaceTheCSFunctionOfHInter {.
    importcpp: "Function", header: "IntCurveSurface_TheExactHInter.hxx".}

























