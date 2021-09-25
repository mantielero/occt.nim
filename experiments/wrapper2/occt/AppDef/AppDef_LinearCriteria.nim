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

discard "forward decl of FEmTool_ElementaryCriterion"
discard "forward decl of FEmTool_Curve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of math_Matrix"
discard "forward decl of AppDef_LinearCriteria"
discard "forward decl of AppDef_LinearCriteria"
type
  HandleAppDefLinearCriteria* = Handle[AppDefLinearCriteria]

## ! defined an Linear Criteria to used in variational
## ! Smoothing of points.

type
  AppDefLinearCriteria* {.importcpp: "AppDef_LinearCriteria",
                         header: "AppDef_LinearCriteria.hxx", bycopy.} = object of AppDefSmoothCriterion


proc constructAppDefLinearCriteria*(ssp: AppDefMultiLine; firstPoint: int;
                                   lastPoint: int): AppDefLinearCriteria {.
    constructor, importcpp: "AppDef_LinearCriteria(@)",
    header: "AppDef_LinearCriteria.hxx".}
proc setParameters*(this: var AppDefLinearCriteria;
                   parameters: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetParameters", header: "AppDef_LinearCriteria.hxx".}
proc setCurve*(this: var AppDefLinearCriteria; c: Handle[FEmToolCurve]) {.
    importcpp: "SetCurve", header: "AppDef_LinearCriteria.hxx".}
proc getCurve*(this: AppDefLinearCriteria; c: var Handle[FEmToolCurve]) {.
    noSideEffect, importcpp: "GetCurve", header: "AppDef_LinearCriteria.hxx".}
proc setEstimation*(this: var AppDefLinearCriteria; e1: float; e2: float; e3: float) {.
    importcpp: "SetEstimation", header: "AppDef_LinearCriteria.hxx".}
proc estLength*(this: var AppDefLinearCriteria): var float {.importcpp: "EstLength",
    header: "AppDef_LinearCriteria.hxx".}
proc getEstimation*(this: AppDefLinearCriteria; e1: var float; e2: var float;
                   e3: var float) {.noSideEffect, importcpp: "GetEstimation",
                                 header: "AppDef_LinearCriteria.hxx".}
proc assemblyTable*(this: AppDefLinearCriteria): Handle[FEmToolHAssemblyTable] {.
    noSideEffect, importcpp: "AssemblyTable", header: "AppDef_LinearCriteria.hxx".}
proc dependenceTable*(this: AppDefLinearCriteria): Handle[TColStdHArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable", header: "AppDef_LinearCriteria.hxx".}
proc qualityValues*(this: var AppDefLinearCriteria; j1min: float; j2min: float;
                   j3min: float; j1: var float; j2: var float; j3: var float): int {.
    importcpp: "QualityValues", header: "AppDef_LinearCriteria.hxx".}
proc errorValues*(this: var AppDefLinearCriteria; maxError: var float;
                 quadraticError: var float; averageError: var float) {.
    importcpp: "ErrorValues", header: "AppDef_LinearCriteria.hxx".}
proc hessian*(this: var AppDefLinearCriteria; element: int; dimension1: int;
             dimension2: int; h: var MathMatrix) {.importcpp: "Hessian",
    header: "AppDef_LinearCriteria.hxx".}
proc gradient*(this: var AppDefLinearCriteria; element: int; dimension: int;
              g: var MathVector) {.importcpp: "Gradient",
                                header: "AppDef_LinearCriteria.hxx".}
proc inputVector*(this: var AppDefLinearCriteria; x: MathVector;
                 assTable: Handle[FEmToolHAssemblyTable]) {.
    importcpp: "InputVector", header: "AppDef_LinearCriteria.hxx".}
proc setWeight*(this: var AppDefLinearCriteria; quadraticWeight: float;
               qualityWeight: float; percentJ1: float; percentJ2: float;
               percentJ3: float) {.importcpp: "SetWeight",
                                 header: "AppDef_LinearCriteria.hxx".}
proc getWeight*(this: AppDefLinearCriteria; quadraticWeight: var float;
               qualityWeight: var float) {.noSideEffect, importcpp: "GetWeight",
                                        header: "AppDef_LinearCriteria.hxx".}
proc setWeight*(this: var AppDefLinearCriteria; weight: TColStdArray1OfReal) {.
    importcpp: "SetWeight", header: "AppDef_LinearCriteria.hxx".}
type
  AppDefLinearCriteriabaseType* = AppDefSmoothCriterion

proc getTypeName*(): cstring {.importcpp: "AppDef_LinearCriteria::get_type_name(@)",
                            header: "AppDef_LinearCriteria.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppDef_LinearCriteria::get_type_descriptor(@)",
    header: "AppDef_LinearCriteria.hxx".}
proc dynamicType*(this: AppDefLinearCriteria): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AppDef_LinearCriteria.hxx".}
