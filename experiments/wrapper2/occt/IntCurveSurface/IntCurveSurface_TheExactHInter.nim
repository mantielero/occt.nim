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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  IntCurveSurface_TheCSFunctionOfHInter, ../Standard/Standard_Real

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
  IntCurveSurface_TheExactHInter* {.importcpp: "IntCurveSurface_TheExactHInter", header: "IntCurveSurface_TheExactHInter.hxx",
                                   bycopy.} = object ## ! compute the solution point with the close point
                                                  ## ! MarginCoef is the coefficient for extension of UV bounds.
                                                  ## ! Ex., UFirst -= MarginCoef*(ULast-UFirst)


proc constructIntCurveSurface_TheExactHInter*(U: Standard_Real; V: Standard_Real;
    W: Standard_Real; F: IntCurveSurface_TheCSFunctionOfHInter;
    TolTangency: Standard_Real; MarginCoef: Standard_Real = 0.0): IntCurveSurface_TheExactHInter {.
    constructor, importcpp: "IntCurveSurface_TheExactHInter(@)",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc constructIntCurveSurface_TheExactHInter*(
    F: IntCurveSurface_TheCSFunctionOfHInter; TolTangency: Standard_Real): IntCurveSurface_TheExactHInter {.
    constructor, importcpp: "IntCurveSurface_TheExactHInter(@)",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheExactHInter; U: Standard_Real;
             V: Standard_Real; W: Standard_Real; Rsnld: var math_FunctionSetRoot;
             u0: Standard_Real; v0: Standard_Real; u1: Standard_Real;
             v1: Standard_Real; w0: Standard_Real; w1: Standard_Real) {.
    importcpp: "Perform", header: "IntCurveSurface_TheExactHInter.hxx".}
proc IsDone*(this: IntCurveSurface_TheExactHInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntCurveSurface_TheExactHInter.hxx".}
proc IsEmpty*(this: IntCurveSurface_TheExactHInter): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc Point*(this: IntCurveSurface_TheExactHInter): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntCurveSurface_TheExactHInter.hxx".}
proc ParameterOnCurve*(this: IntCurveSurface_TheExactHInter): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnCurve",
    header: "IntCurveSurface_TheExactHInter.hxx".}
proc ParameterOnSurface*(this: IntCurveSurface_TheExactHInter;
                        U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "ParameterOnSurface", header: "IntCurveSurface_TheExactHInter.hxx".}
proc Function*(this: var IntCurveSurface_TheExactHInter): var IntCurveSurface_TheCSFunctionOfHInter {.
    importcpp: "Function", header: "IntCurveSurface_TheExactHInter.hxx".}