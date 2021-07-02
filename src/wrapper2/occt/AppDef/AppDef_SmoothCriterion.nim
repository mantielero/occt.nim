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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of FEmTool_Curve"
discard "forward decl of math_Matrix"
discard "forward decl of AppDef_SmoothCriterion"
discard "forward decl of AppDef_SmoothCriterion"
type
  HandleAppDefSmoothCriterion* = Handle[AppDefSmoothCriterion]

## ! defined criterion to smooth  points in  curve

type
  AppDefSmoothCriterion* {.importcpp: "AppDef_SmoothCriterion",
                          header: "AppDef_SmoothCriterion.hxx", bycopy.} = object of StandardTransient


proc setParameters*(this: var AppDefSmoothCriterion;
                   parameters: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetParameters", header: "AppDef_SmoothCriterion.hxx".}
proc setCurve*(this: var AppDefSmoothCriterion; c: Handle[FEmToolCurve]) {.
    importcpp: "SetCurve", header: "AppDef_SmoothCriterion.hxx".}
proc getCurve*(this: AppDefSmoothCriterion; c: var Handle[FEmToolCurve]) {.
    noSideEffect, importcpp: "GetCurve", header: "AppDef_SmoothCriterion.hxx".}
proc setEstimation*(this: var AppDefSmoothCriterion; e1: StandardReal;
                   e2: StandardReal; e3: StandardReal) {.importcpp: "SetEstimation",
    header: "AppDef_SmoothCriterion.hxx".}
proc estLength*(this: var AppDefSmoothCriterion): var StandardReal {.
    importcpp: "EstLength", header: "AppDef_SmoothCriterion.hxx".}
proc getEstimation*(this: AppDefSmoothCriterion; e1: var StandardReal;
                   e2: var StandardReal; e3: var StandardReal) {.noSideEffect,
    importcpp: "GetEstimation", header: "AppDef_SmoothCriterion.hxx".}
proc assemblyTable*(this: AppDefSmoothCriterion): Handle[FEmToolHAssemblyTable] {.
    noSideEffect, importcpp: "AssemblyTable", header: "AppDef_SmoothCriterion.hxx".}
proc dependenceTable*(this: AppDefSmoothCriterion): Handle[TColStdHArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable",
    header: "AppDef_SmoothCriterion.hxx".}
proc qualityValues*(this: var AppDefSmoothCriterion; j1min: StandardReal;
                   j2min: StandardReal; j3min: StandardReal; j1: var StandardReal;
                   j2: var StandardReal; j3: var StandardReal): StandardInteger {.
    importcpp: "QualityValues", header: "AppDef_SmoothCriterion.hxx".}
proc errorValues*(this: var AppDefSmoothCriterion; maxError: var StandardReal;
                 quadraticError: var StandardReal; averageError: var StandardReal) {.
    importcpp: "ErrorValues", header: "AppDef_SmoothCriterion.hxx".}
proc hessian*(this: var AppDefSmoothCriterion; element: StandardInteger;
             dimension1: StandardInteger; dimension2: StandardInteger;
             h: var MathMatrix) {.importcpp: "Hessian",
                               header: "AppDef_SmoothCriterion.hxx".}
proc gradient*(this: var AppDefSmoothCriterion; element: StandardInteger;
              dimension: StandardInteger; g: var MathVector) {.importcpp: "Gradient",
    header: "AppDef_SmoothCriterion.hxx".}
proc inputVector*(this: var AppDefSmoothCriterion; x: MathVector;
                 assTable: Handle[FEmToolHAssemblyTable]) {.
    importcpp: "InputVector", header: "AppDef_SmoothCriterion.hxx".}
proc setWeight*(this: var AppDefSmoothCriterion; quadraticWeight: StandardReal;
               qualityWeight: StandardReal; percentJ1: StandardReal;
               percentJ2: StandardReal; percentJ3: StandardReal) {.
    importcpp: "SetWeight", header: "AppDef_SmoothCriterion.hxx".}
proc getWeight*(this: AppDefSmoothCriterion; quadraticWeight: var StandardReal;
               qualityWeight: var StandardReal) {.noSideEffect,
    importcpp: "GetWeight", header: "AppDef_SmoothCriterion.hxx".}
proc setWeight*(this: var AppDefSmoothCriterion; weight: TColStdArray1OfReal) {.
    importcpp: "SetWeight", header: "AppDef_SmoothCriterion.hxx".}
type
  AppDefSmoothCriterionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AppDef_SmoothCriterion::get_type_name(@)",
                            header: "AppDef_SmoothCriterion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppDef_SmoothCriterion::get_type_descriptor(@)",
    header: "AppDef_SmoothCriterion.hxx".}
proc dynamicType*(this: AppDefSmoothCriterion): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AppDef_SmoothCriterion.hxx".}

