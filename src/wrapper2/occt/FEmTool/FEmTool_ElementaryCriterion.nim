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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray2OfReal, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../TColStd/TColStd_HArray2OfInteger,
  ../Standard/Standard_Integer, ../math/math_Vector

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of FEmTool_ElementaryCriterion"
discard "forward decl of FEmTool_ElementaryCriterion"
type
  Handle_FEmTool_ElementaryCriterion* = handle[FEmTool_ElementaryCriterion]

## ! defined J Criteria to used in minimisation

type
  FEmTool_ElementaryCriterion* {.importcpp: "FEmTool_ElementaryCriterion",
                                header: "FEmTool_ElementaryCriterion.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructFEmTool_ElementaryCriterion*(): FEmTool_ElementaryCriterion {.
    constructor, importcpp: "FEmTool_ElementaryCriterion(@)",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc Set*(this: var FEmTool_ElementaryCriterion;
         Coeff: handle[TColStd_HArray2OfReal]) {.importcpp: "Set",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc Set*(this: var FEmTool_ElementaryCriterion; FirstKnot: Standard_Real;
         LastKnot: Standard_Real) {.importcpp: "Set",
                                  header: "FEmTool_ElementaryCriterion.hxx".}
proc DependenceTable*(this: FEmTool_ElementaryCriterion): handle[
    TColStd_HArray2OfInteger] {.noSideEffect, importcpp: "DependenceTable",
                               header: "FEmTool_ElementaryCriterion.hxx".}
proc Value*(this: var FEmTool_ElementaryCriterion): Standard_Real {.
    importcpp: "Value", header: "FEmTool_ElementaryCriterion.hxx".}
proc Hessian*(this: var FEmTool_ElementaryCriterion; Dim1: Standard_Integer;
             Dim2: Standard_Integer; H: var math_Matrix) {.importcpp: "Hessian",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc Gradient*(this: var FEmTool_ElementaryCriterion; Dim: Standard_Integer;
              G: var math_Vector) {.importcpp: "Gradient",
                                 header: "FEmTool_ElementaryCriterion.hxx".}
type
  FEmTool_ElementaryCriterionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "FEmTool_ElementaryCriterion::get_type_name(@)",
                              header: "FEmTool_ElementaryCriterion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FEmTool_ElementaryCriterion::get_type_descriptor(@)",
    header: "FEmTool_ElementaryCriterion.hxx".}
proc DynamicType*(this: FEmTool_ElementaryCriterion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "FEmTool_ElementaryCriterion.hxx".}