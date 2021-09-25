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
discard "forward decl of math_Matrix"
discard "forward decl of FEmTool_ElementaryCriterion"
discard "forward decl of FEmTool_ElementaryCriterion"
type
  HandleFEmToolElementaryCriterion* = Handle[FEmToolElementaryCriterion]

## ! defined J Criteria to used in minimisation

type
  FEmToolElementaryCriterion* {.importcpp: "FEmTool_ElementaryCriterion",
                               header: "FEmTool_ElementaryCriterion.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructFEmToolElementaryCriterion*(): FEmToolElementaryCriterion {.
    constructor, importcpp: "FEmTool_ElementaryCriterion(@)",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc set*(this: var FEmToolElementaryCriterion; coeff: Handle[TColStdHArray2OfReal]) {.
    importcpp: "Set", header: "FEmTool_ElementaryCriterion.hxx".}
proc set*(this: var FEmToolElementaryCriterion; firstKnot: float; lastKnot: float) {.
    importcpp: "Set", header: "FEmTool_ElementaryCriterion.hxx".}
proc dependenceTable*(this: FEmToolElementaryCriterion): Handle[
    TColStdHArray2OfInteger] {.noSideEffect, importcpp: "DependenceTable",
                              header: "FEmTool_ElementaryCriterion.hxx".}
proc value*(this: var FEmToolElementaryCriterion): float {.importcpp: "Value",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc hessian*(this: var FEmToolElementaryCriterion; dim1: int; dim2: int;
             h: var MathMatrix) {.importcpp: "Hessian",
                               header: "FEmTool_ElementaryCriterion.hxx".}
proc gradient*(this: var FEmToolElementaryCriterion; dim: int; g: var MathVector) {.
    importcpp: "Gradient", header: "FEmTool_ElementaryCriterion.hxx".}
type
  FEmToolElementaryCriterionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "FEmTool_ElementaryCriterion::get_type_name(@)",
                            header: "FEmTool_ElementaryCriterion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_ElementaryCriterion::get_type_descriptor(@)",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc dynamicType*(this: FEmToolElementaryCriterion): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "FEmTool_ElementaryCriterion.hxx".}
