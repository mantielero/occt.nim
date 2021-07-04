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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../math/math_FunctionSetWithDerivatives, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  IntCurveSurface_TheCSFunctionOfHInter* {.
      importcpp: "IntCurveSurface_TheCSFunctionOfHInter",
      header: "IntCurveSurface_TheCSFunctionOfHInter.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructIntCurveSurface_TheCSFunctionOfHInter*(
    S: handle[Adaptor3d_HSurface]; C: handle[Adaptor3d_HCurve]): IntCurveSurface_TheCSFunctionOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheCSFunctionOfHInter(@)",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc NbVariables*(this: IntCurveSurface_TheCSFunctionOfHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc NbEquations*(this: IntCurveSurface_TheCSFunctionOfHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc Value*(this: var IntCurveSurface_TheCSFunctionOfHInter; X: math_Vector;
           F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc Derivatives*(this: var IntCurveSurface_TheCSFunctionOfHInter; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc Values*(this: var IntCurveSurface_TheCSFunctionOfHInter; X: math_Vector;
            F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc Point*(this: IntCurveSurface_TheCSFunctionOfHInter): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc Root*(this: IntCurveSurface_TheCSFunctionOfHInter): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc AuxillarSurface*(this: IntCurveSurface_TheCSFunctionOfHInter): handle[
    Adaptor3d_HSurface] {.noSideEffect, importcpp: "AuxillarSurface",
                         header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc AuxillarCurve*(this: IntCurveSurface_TheCSFunctionOfHInter): handle[
    Adaptor3d_HCurve] {.noSideEffect, importcpp: "AuxillarCurve",
                       header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}