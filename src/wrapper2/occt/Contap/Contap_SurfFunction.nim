##  Created on: 1993-06-03
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, Contap_TFunction,
  ../gp/gp_Dir, ../gp/gp_Pnt, ../gp/gp_Dir2d, ../gp/gp_Vec,
  ../Standard/Standard_Boolean, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../math/math_Vector

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  Contap_SurfFunction* {.importcpp: "Contap_SurfFunction",
                        header: "Contap_SurfFunction.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructContap_SurfFunction*(): Contap_SurfFunction {.constructor,
    importcpp: "Contap_SurfFunction(@)", header: "Contap_SurfFunction.hxx".}
proc Set*(this: var Contap_SurfFunction; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Set", header: "Contap_SurfFunction.hxx".}
proc Set*(this: var Contap_SurfFunction; Eye: gp_Pnt) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc Set*(this: var Contap_SurfFunction; Dir: gp_Dir) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc Set*(this: var Contap_SurfFunction; Dir: gp_Dir; Angle: Standard_Real) {.
    importcpp: "Set", header: "Contap_SurfFunction.hxx".}
proc Set*(this: var Contap_SurfFunction; Eye: gp_Pnt; Angle: Standard_Real) {.
    importcpp: "Set", header: "Contap_SurfFunction.hxx".}
proc Set*(this: var Contap_SurfFunction; Tolerance: Standard_Real) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc NbVariables*(this: Contap_SurfFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Contap_SurfFunction.hxx".}
proc NbEquations*(this: Contap_SurfFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Contap_SurfFunction.hxx".}
proc Value*(this: var Contap_SurfFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Contap_SurfFunction.hxx".}
proc Derivatives*(this: var Contap_SurfFunction; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Contap_SurfFunction.hxx".}
proc Values*(this: var Contap_SurfFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Contap_SurfFunction.hxx".}
proc Root*(this: Contap_SurfFunction): Standard_Real {.noSideEffect,
    importcpp: "Root", header: "Contap_SurfFunction.hxx".}
proc Tolerance*(this: Contap_SurfFunction): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Contap_SurfFunction.hxx".}
proc Point*(this: Contap_SurfFunction): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "Contap_SurfFunction.hxx".}
proc IsTangent*(this: var Contap_SurfFunction): Standard_Boolean {.
    importcpp: "IsTangent", header: "Contap_SurfFunction.hxx".}
proc Direction3d*(this: var Contap_SurfFunction): gp_Vec {.importcpp: "Direction3d",
    header: "Contap_SurfFunction.hxx".}
proc Direction2d*(this: var Contap_SurfFunction): gp_Dir2d {.
    importcpp: "Direction2d", header: "Contap_SurfFunction.hxx".}
proc FunctionType*(this: Contap_SurfFunction): Contap_TFunction {.noSideEffect,
    importcpp: "FunctionType", header: "Contap_SurfFunction.hxx".}
proc Eye*(this: Contap_SurfFunction): gp_Pnt {.noSideEffect, importcpp: "Eye",
    header: "Contap_SurfFunction.hxx".}
proc Direction*(this: Contap_SurfFunction): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Contap_SurfFunction.hxx".}
proc Angle*(this: Contap_SurfFunction): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "Contap_SurfFunction.hxx".}
proc Surface*(this: Contap_SurfFunction): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "Surface", header: "Contap_SurfFunction.hxx".}
proc PSurface*(this: Contap_SurfFunction): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "PSurface", header: "Contap_SurfFunction.hxx".}