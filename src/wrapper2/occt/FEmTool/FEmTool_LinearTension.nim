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
discard "forward decl of FEmTool_LinearTension"
discard "forward decl of FEmTool_LinearTension"
type
  HandleFEmToolLinearTension* = Handle[FEmToolLinearTension]

## ! Criterium of LinearTension To Hermit-Jacobi  elements

type
  FEmToolLinearTension* {.importcpp: "FEmTool_LinearTension",
                         header: "FEmTool_LinearTension.hxx", bycopy.} = object of FEmToolElementaryCriterion


proc constructFEmToolLinearTension*(workDegree: StandardInteger;
                                   constraintOrder: GeomAbsShape): FEmToolLinearTension {.
    constructor, importcpp: "FEmTool_LinearTension(@)",
    header: "FEmTool_LinearTension.hxx".}
proc dependenceTable*(this: FEmToolLinearTension): Handle[TColStdHArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable", header: "FEmTool_LinearTension.hxx".}
proc value*(this: var FEmToolLinearTension): StandardReal {.importcpp: "Value",
    header: "FEmTool_LinearTension.hxx".}
proc hessian*(this: var FEmToolLinearTension; dimension1: StandardInteger;
             dimension2: StandardInteger; h: var MathMatrix) {.importcpp: "Hessian",
    header: "FEmTool_LinearTension.hxx".}
proc gradient*(this: var FEmToolLinearTension; dimension: StandardInteger;
              g: var MathVector) {.importcpp: "Gradient",
                                header: "FEmTool_LinearTension.hxx".}
type
  FEmToolLinearTensionbaseType* = FEmToolElementaryCriterion

proc getTypeName*(): cstring {.importcpp: "FEmTool_LinearTension::get_type_name(@)",
                            header: "FEmTool_LinearTension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_LinearTension::get_type_descriptor(@)",
    header: "FEmTool_LinearTension.hxx".}
proc dynamicType*(this: FEmToolLinearTension): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_LinearTension.hxx".}

