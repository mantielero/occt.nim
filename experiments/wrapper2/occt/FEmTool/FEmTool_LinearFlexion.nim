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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../math/math_Matrix,
  ../Standard/Standard_Integer, FEmTool_ElementaryCriterion,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_HArray2OfInteger,
  ../Standard/Standard_Real, ../math/math_Vector

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of FEmTool_LinearFlexion"
discard "forward decl of FEmTool_LinearFlexion"
type
  Handle_FEmTool_LinearFlexion* = handle[FEmTool_LinearFlexion]

## ! Criterium of LinearFlexion To Hermit-Jacobi  elements

type
  FEmTool_LinearFlexion* {.importcpp: "FEmTool_LinearFlexion",
                          header: "FEmTool_LinearFlexion.hxx", bycopy.} = object of FEmTool_ElementaryCriterion


proc constructFEmTool_LinearFlexion*(WorkDegree: Standard_Integer;
                                    ConstraintOrder: GeomAbs_Shape): FEmTool_LinearFlexion {.
    constructor, importcpp: "FEmTool_LinearFlexion(@)",
    header: "FEmTool_LinearFlexion.hxx".}
proc DependenceTable*(this: FEmTool_LinearFlexion): handle[TColStd_HArray2OfInteger] {.
    noSideEffect, importcpp: "DependenceTable", header: "FEmTool_LinearFlexion.hxx".}
proc Value*(this: var FEmTool_LinearFlexion): Standard_Real {.importcpp: "Value",
    header: "FEmTool_LinearFlexion.hxx".}
proc Hessian*(this: var FEmTool_LinearFlexion; Dimension1: Standard_Integer;
             Dimension2: Standard_Integer; H: var math_Matrix) {.
    importcpp: "Hessian", header: "FEmTool_LinearFlexion.hxx".}
proc Gradient*(this: var FEmTool_LinearFlexion; Dimension: Standard_Integer;
              G: var math_Vector) {.importcpp: "Gradient",
                                 header: "FEmTool_LinearFlexion.hxx".}
type
  FEmTool_LinearFlexionbase_type* = FEmTool_ElementaryCriterion

proc get_type_name*(): cstring {.importcpp: "FEmTool_LinearFlexion::get_type_name(@)",
                              header: "FEmTool_LinearFlexion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FEmTool_LinearFlexion::get_type_descriptor(@)",
    header: "FEmTool_LinearFlexion.hxx".}
proc DynamicType*(this: FEmTool_LinearFlexion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "FEmTool_LinearFlexion.hxx".}