##  Created on: 1997-09-11
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Real,
  ../FEmTool/FEmTool_HAssemblyTable, ../TColStd/TColStd_HArray2OfInteger,
  ../Standard/Standard_Integer, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of FEmTool_Curve"
discard "forward decl of math_Matrix"
discard "forward decl of AppDef_SmoothCriterion"
discard "forward decl of AppDef_SmoothCriterion"
type
  Handle_AppDef_SmoothCriterion* = handle[AppDef_SmoothCriterion]

## ! defined criterion to smooth  points in  curve

type
  AppDef_SmoothCriterion* {.importcpp: "AppDef_SmoothCriterion",
                           header: "AppDef_SmoothCriterion.hxx", bycopy.} = object of Standard_Transient


proc SetParameters*(this: var AppDef_SmoothCriterion;
                   Parameters: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetParameters", header: "AppDef_SmoothCriterion.hxx".}
proc SetCurve*(this: var AppDef_SmoothCriterion; C: handle[FEmTool_Curve]) {.
    importcpp: "SetCurve", header: "AppDef_SmoothCriterion.hxx".}
proc GetCurve*(this: AppDef_SmoothCriterion; C: var handle[FEmTool_Curve]) {.
    noSideEffect, importcpp: "GetCurve", header: "AppDef_SmoothCriterion.hxx".}
proc SetEstimation*(this: var AppDef_SmoothCriterion; E1: Standard_Real;
                   E2: Standard_Real; E3: Standard_Real) {.
    importcpp: "SetEstimation", header: "AppDef_SmoothCriterion.hxx".}
proc EstLength*(this: var AppDef_SmoothCriterion): var Standard_Real {.
    importcpp: "EstLength", header: "AppDef_SmoothCriterion.hxx".}
proc GetEstimation*(this: AppDef_SmoothCriterion; E1: var Standard_Real;
                   E2: var Standard_Real; E3: var Standard_Real) {.noSideEffect,
    importcpp: "GetEstimation", header: "AppDef_SmoothCriterion.hxx".}
proc AssemblyTable*(this: AppDef_SmoothCriterion): handle[FEmTool_HAssemblyTable] {.
    noSideEffect, importcpp: "AssemblyTable", header: "AppDef_SmoothCriterion.hxx".}
proc DependenceTable*(this: AppDef_SmoothCriterion): handle[
    TColStd_HArray2OfInteger] {.noSideEffect, importcpp: "DependenceTable",
                               header: "AppDef_SmoothCriterion.hxx".}
proc QualityValues*(this: var AppDef_SmoothCriterion; J1min: Standard_Real;
                   J2min: Standard_Real; J3min: Standard_Real;
                   J1: var Standard_Real; J2: var Standard_Real; J3: var Standard_Real): Standard_Integer {.
    importcpp: "QualityValues", header: "AppDef_SmoothCriterion.hxx".}
proc ErrorValues*(this: var AppDef_SmoothCriterion; MaxError: var Standard_Real;
                 QuadraticError: var Standard_Real; AverageError: var Standard_Real) {.
    importcpp: "ErrorValues", header: "AppDef_SmoothCriterion.hxx".}
proc Hessian*(this: var AppDef_SmoothCriterion; Element: Standard_Integer;
             Dimension1: Standard_Integer; Dimension2: Standard_Integer;
             H: var math_Matrix) {.importcpp: "Hessian",
                                header: "AppDef_SmoothCriterion.hxx".}
proc Gradient*(this: var AppDef_SmoothCriterion; Element: Standard_Integer;
              Dimension: Standard_Integer; G: var math_Vector) {.
    importcpp: "Gradient", header: "AppDef_SmoothCriterion.hxx".}
proc InputVector*(this: var AppDef_SmoothCriterion; X: math_Vector;
                 AssTable: handle[FEmTool_HAssemblyTable]) {.
    importcpp: "InputVector", header: "AppDef_SmoothCriterion.hxx".}
proc SetWeight*(this: var AppDef_SmoothCriterion; QuadraticWeight: Standard_Real;
               QualityWeight: Standard_Real; percentJ1: Standard_Real;
               percentJ2: Standard_Real; percentJ3: Standard_Real) {.
    importcpp: "SetWeight", header: "AppDef_SmoothCriterion.hxx".}
proc GetWeight*(this: AppDef_SmoothCriterion; QuadraticWeight: var Standard_Real;
               QualityWeight: var Standard_Real) {.noSideEffect,
    importcpp: "GetWeight", header: "AppDef_SmoothCriterion.hxx".}
proc SetWeight*(this: var AppDef_SmoothCriterion; Weight: TColStd_Array1OfReal) {.
    importcpp: "SetWeight", header: "AppDef_SmoothCriterion.hxx".}
type
  AppDef_SmoothCriterionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AppDef_SmoothCriterion::get_type_name(@)",
                              header: "AppDef_SmoothCriterion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AppDef_SmoothCriterion::get_type_descriptor(@)",
    header: "AppDef_SmoothCriterion.hxx".}
proc DynamicType*(this: AppDef_SmoothCriterion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "AppDef_SmoothCriterion.hxx".}