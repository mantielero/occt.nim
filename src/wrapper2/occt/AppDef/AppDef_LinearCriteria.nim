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
  ../Standard/Standard, ../Standard/Standard_Type, AppDef_MultiLine,
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Integer,
  AppDef_SmoothCriterion, ../FEmTool/FEmTool_HAssemblyTable,
  ../TColStd/TColStd_HArray2OfInteger, ../math/math_Vector

discard "forward decl of FEmTool_ElementaryCriterion"
discard "forward decl of FEmTool_Curve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of math_Matrix"
discard "forward decl of AppDef_LinearCriteria"
discard "forward decl of AppDef_LinearCriteria"
type
  Handle_AppDef_LinearCriteria* = handle[AppDef_LinearCriteria]

## ! defined an Linear Criteria to used in variational
## ! Smoothing of points.

type
  AppDef_LinearCriteria* {.importcpp: "AppDef_LinearCriteria",
                          header: "AppDef_LinearCriteria.hxx", bycopy.} = object of AppDef_SmoothCriterion


proc constructAppDef_LinearCriteria*(SSP: AppDef_MultiLine;
                                    FirstPoint: Standard_Integer;
                                    LastPoint: Standard_Integer): AppDef_LinearCriteria {.
    constructor, importcpp: "AppDef_LinearCriteria(@)",
    header: "AppDef_LinearCriteria.hxx".}
proc SetParameters*(this: var AppDef_LinearCriteria;
                   Parameters: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetParameters", header: "AppDef_LinearCriteria.hxx".}
proc SetCurve*(this: var AppDef_LinearCriteria; C: handle[FEmTool_Curve]) {.
    importcpp: "SetCurve", header: "AppDef_LinearCriteria.hxx".}
proc GetCurve*(this: AppDef_LinearCriteria; C: var handle[FEmTool_Curve]) {.
    noSideEffect, importcpp: "GetCurve", header: "AppDef_LinearCriteria.hxx".}
proc SetEstimation*(this: var AppDef_LinearCriteria; E1: Standard_Real;
                   E2: Standard_Real; E3: Standard_Real) {.
    importcpp: "SetEstimation", header: "AppDef_LinearCriteria.hxx".}
proc EstLength*(this: var AppDef_LinearCriteria): var Standard_Real {.
    importcpp: "EstLength", header: "AppDef_LinearCriteria.hxx".}
proc GetEstimation*(this: AppDef_LinearCriteria; E1: var Standard_Real;
                   E2: var Standard_Real; E3: var Standard_Real) {.noSideEffect,
    importcpp: "GetEstimation", header: "AppDef_LinearCriteria.hxx".}
proc AssemblyTable*(this: AppDef_LinearCriteria): handle[FEmTool_HAssemblyTable] {.
    noSideEffect, importcpp: "AssemblyTable", header: "AppDef_LinearCriteria.hxx".}
proc DependenceTable*(this: AppDef_LinearCriteria): handle[TColStd_HArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable", header: "AppDef_LinearCriteria.hxx".}
proc QualityValues*(this: var AppDef_LinearCriteria; J1min: Standard_Real;
                   J2min: Standard_Real; J3min: Standard_Real;
                   J1: var Standard_Real; J2: var Standard_Real; J3: var Standard_Real): Standard_Integer {.
    importcpp: "QualityValues", header: "AppDef_LinearCriteria.hxx".}
proc ErrorValues*(this: var AppDef_LinearCriteria; MaxError: var Standard_Real;
                 QuadraticError: var Standard_Real; AverageError: var Standard_Real) {.
    importcpp: "ErrorValues", header: "AppDef_LinearCriteria.hxx".}
proc Hessian*(this: var AppDef_LinearCriteria; Element: Standard_Integer;
             Dimension1: Standard_Integer; Dimension2: Standard_Integer;
             H: var math_Matrix) {.importcpp: "Hessian",
                                header: "AppDef_LinearCriteria.hxx".}
proc Gradient*(this: var AppDef_LinearCriteria; Element: Standard_Integer;
              Dimension: Standard_Integer; G: var math_Vector) {.
    importcpp: "Gradient", header: "AppDef_LinearCriteria.hxx".}
proc InputVector*(this: var AppDef_LinearCriteria; X: math_Vector;
                 AssTable: handle[FEmTool_HAssemblyTable]) {.
    importcpp: "InputVector", header: "AppDef_LinearCriteria.hxx".}
proc SetWeight*(this: var AppDef_LinearCriteria; QuadraticWeight: Standard_Real;
               QualityWeight: Standard_Real; percentJ1: Standard_Real;
               percentJ2: Standard_Real; percentJ3: Standard_Real) {.
    importcpp: "SetWeight", header: "AppDef_LinearCriteria.hxx".}
proc GetWeight*(this: AppDef_LinearCriteria; QuadraticWeight: var Standard_Real;
               QualityWeight: var Standard_Real) {.noSideEffect,
    importcpp: "GetWeight", header: "AppDef_LinearCriteria.hxx".}
proc SetWeight*(this: var AppDef_LinearCriteria; Weight: TColStd_Array1OfReal) {.
    importcpp: "SetWeight", header: "AppDef_LinearCriteria.hxx".}
type
  AppDef_LinearCriteriabase_type* = AppDef_SmoothCriterion

proc get_type_name*(): cstring {.importcpp: "AppDef_LinearCriteria::get_type_name(@)",
                              header: "AppDef_LinearCriteria.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AppDef_LinearCriteria::get_type_descriptor(@)",
    header: "AppDef_LinearCriteria.hxx".}
proc DynamicType*(this: AppDef_LinearCriteria): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "AppDef_LinearCriteria.hxx".}