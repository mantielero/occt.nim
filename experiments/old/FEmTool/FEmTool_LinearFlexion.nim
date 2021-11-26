##  Created on: 1997-09-18
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
discard "forward decl of math_Matrix"
discard "forward decl of FEmTool_LinearFlexion"
discard "forward decl of FEmTool_LinearFlexion"
type
  HandleC1C1* = Handle[FEmToolLinearFlexion]

## ! Criterium of LinearFlexion To Hermit-Jacobi  elements

type
  FEmToolLinearFlexion* {.importcpp: "FEmTool_LinearFlexion",
                         header: "FEmTool_LinearFlexion.hxx", bycopy.} = object of FEmToolElementaryCriterion


proc constructFEmToolLinearFlexion*(workDegree: cint; constraintOrder: GeomAbsShape): FEmToolLinearFlexion {.
    constructor, importcpp: "FEmTool_LinearFlexion(@)",
    header: "FEmTool_LinearFlexion.hxx".}
proc dependenceTable*(this: FEmToolLinearFlexion): Handle[TColStdHArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable", header: "FEmTool_LinearFlexion.hxx".}
proc value*(this: var FEmToolLinearFlexion): cfloat {.importcpp: "Value",
    header: "FEmTool_LinearFlexion.hxx".}
proc hessian*(this: var FEmToolLinearFlexion; dimension1: cint; dimension2: cint;
             h: var MathMatrix) {.importcpp: "Hessian",
                               header: "FEmTool_LinearFlexion.hxx".}
proc gradient*(this: var FEmToolLinearFlexion; dimension: cint; g: var MathVector) {.
    importcpp: "Gradient", header: "FEmTool_LinearFlexion.hxx".}
type
  FEmToolLinearFlexionbaseType* = FEmToolElementaryCriterion

proc getTypeName*(): cstring {.importcpp: "FEmTool_LinearFlexion::get_type_name(@)",
                            header: "FEmTool_LinearFlexion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_LinearFlexion::get_type_descriptor(@)",
    header: "FEmTool_LinearFlexion.hxx".}
proc dynamicType*(this: FEmToolLinearFlexion): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_LinearFlexion.hxx".}

























