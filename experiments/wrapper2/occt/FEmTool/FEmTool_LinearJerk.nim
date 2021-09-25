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
discard "forward decl of FEmTool_LinearJerk"
discard "forward decl of FEmTool_LinearJerk"
type
  HandleFEmToolLinearJerk* = Handle[FEmToolLinearJerk]

## ! Criterion of LinearJerk To Hermit-Jacobi  elements

type
  FEmToolLinearJerk* {.importcpp: "FEmTool_LinearJerk",
                      header: "FEmTool_LinearJerk.hxx", bycopy.} = object of FEmToolElementaryCriterion


proc constructFEmToolLinearJerk*(workDegree: int; constraintOrder: GeomAbsShape): FEmToolLinearJerk {.
    constructor, importcpp: "FEmTool_LinearJerk(@)",
    header: "FEmTool_LinearJerk.hxx".}
proc dependenceTable*(this: FEmToolLinearJerk): Handle[TColStdHArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable", header: "FEmTool_LinearJerk.hxx".}
proc value*(this: var FEmToolLinearJerk): float {.importcpp: "Value",
    header: "FEmTool_LinearJerk.hxx".}
proc hessian*(this: var FEmToolLinearJerk; dimension1: int; dimension2: int;
             h: var MathMatrix) {.importcpp: "Hessian",
                               header: "FEmTool_LinearJerk.hxx".}
proc gradient*(this: var FEmToolLinearJerk; dimension: int; g: var MathVector) {.
    importcpp: "Gradient", header: "FEmTool_LinearJerk.hxx".}
type
  FEmToolLinearJerkbaseType* = FEmToolElementaryCriterion

proc getTypeName*(): cstring {.importcpp: "FEmTool_LinearJerk::get_type_name(@)",
                            header: "FEmTool_LinearJerk.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_LinearJerk::get_type_descriptor(@)",
    header: "FEmTool_LinearJerk.hxx".}
proc dynamicType*(this: FEmToolLinearJerk): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_LinearJerk.hxx".}
