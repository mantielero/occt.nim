##  Created on: 1991-01-10
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_NamedExpression,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NotAssigned"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_InvalidAssignment"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_NamedUnknown"
type
  Handle_Expr_NamedUnknown* = handle[Expr_NamedUnknown]

## ! This class describes any variable of an expression.
## ! Assignment is treated directly in this class.

type
  Expr_NamedUnknown* {.importcpp: "Expr_NamedUnknown",
                      header: "Expr_NamedUnknown.hxx", bycopy.} = object of Expr_NamedExpression


proc constructExpr_NamedUnknown*(name: TCollection_AsciiString): Expr_NamedUnknown {.
    constructor, importcpp: "Expr_NamedUnknown(@)", header: "Expr_NamedUnknown.hxx".}
proc IsAssigned*(this: Expr_NamedUnknown): Standard_Boolean {.noSideEffect,
    importcpp: "IsAssigned", header: "Expr_NamedUnknown.hxx".}
proc AssignedExpression*(this: Expr_NamedUnknown): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "AssignedExpression", header: "Expr_NamedUnknown.hxx".}
proc Assign*(this: var Expr_NamedUnknown; exp: handle[Expr_GeneralExpression]) {.
    importcpp: "Assign", header: "Expr_NamedUnknown.hxx".}
proc Deassign*(this: var Expr_NamedUnknown) {.importcpp: "Deassign",
    header: "Expr_NamedUnknown.hxx".}
proc NbSubExpressions*(this: Expr_NamedUnknown): Standard_Integer {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_NamedUnknown.hxx".}
proc SubExpression*(this: Expr_NamedUnknown; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_NamedUnknown.hxx".}
proc Simplified*(this: Expr_NamedUnknown): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_NamedUnknown.hxx".}
proc ShallowSimplified*(this: Expr_NamedUnknown): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_NamedUnknown.hxx".}
proc Copy*(this: Expr_NamedUnknown): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NamedUnknown.hxx".}
proc ContainsUnknowns*(this: Expr_NamedUnknown): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_NamedUnknown.hxx".}
proc Contains*(this: Expr_NamedUnknown; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_NamedUnknown.hxx".}
proc IsLinear*(this: Expr_NamedUnknown): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_NamedUnknown.hxx".}
proc Derivative*(this: Expr_NamedUnknown; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_NamedUnknown.hxx".}
proc Replace*(this: var Expr_NamedUnknown; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_NamedUnknown.hxx".}
proc Evaluate*(this: Expr_NamedUnknown; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NamedUnknown.hxx".}
type
  Expr_NamedUnknownbase_type* = Expr_NamedExpression

proc get_type_name*(): cstring {.importcpp: "Expr_NamedUnknown::get_type_name(@)",
                              header: "Expr_NamedUnknown.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_NamedUnknown::get_type_descriptor(@)",
    header: "Expr_NamedUnknown.hxx".}
proc DynamicType*(this: Expr_NamedUnknown): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedUnknown.hxx".}