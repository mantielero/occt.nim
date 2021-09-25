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
  HandleExprNamedUnknown* = Handle[ExprNamedUnknown]

## ! This class describes any variable of an expression.
## ! Assignment is treated directly in this class.

type
  ExprNamedUnknown* {.importcpp: "Expr_NamedUnknown",
                     header: "Expr_NamedUnknown.hxx", bycopy.} = object of ExprNamedExpression


proc constructExprNamedUnknown*(name: TCollectionAsciiString): ExprNamedUnknown {.
    constructor, importcpp: "Expr_NamedUnknown(@)", header: "Expr_NamedUnknown.hxx".}
proc isAssigned*(this: ExprNamedUnknown): bool {.noSideEffect,
    importcpp: "IsAssigned", header: "Expr_NamedUnknown.hxx".}
proc assignedExpression*(this: ExprNamedUnknown): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "AssignedExpression", header: "Expr_NamedUnknown.hxx".}
proc assign*(this: var ExprNamedUnknown; exp: Handle[ExprGeneralExpression]) {.
    importcpp: "Assign", header: "Expr_NamedUnknown.hxx".}
proc deassign*(this: var ExprNamedUnknown) {.importcpp: "Deassign",
    header: "Expr_NamedUnknown.hxx".}
proc nbSubExpressions*(this: ExprNamedUnknown): int {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_NamedUnknown.hxx".}
proc subExpression*(this: ExprNamedUnknown; i: int): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "SubExpression", header: "Expr_NamedUnknown.hxx".}
proc simplified*(this: ExprNamedUnknown): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_NamedUnknown.hxx".}
proc shallowSimplified*(this: ExprNamedUnknown): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_NamedUnknown.hxx".}
proc copy*(this: ExprNamedUnknown): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NamedUnknown.hxx".}
proc containsUnknowns*(this: ExprNamedUnknown): bool {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_NamedUnknown.hxx".}
proc contains*(this: ExprNamedUnknown; exp: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "Contains", header: "Expr_NamedUnknown.hxx".}
proc isLinear*(this: ExprNamedUnknown): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_NamedUnknown.hxx".}
proc derivative*(this: ExprNamedUnknown; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_NamedUnknown.hxx".}
proc replace*(this: var ExprNamedUnknown; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_NamedUnknown.hxx".}
proc evaluate*(this: ExprNamedUnknown; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NamedUnknown.hxx".}
type
  ExprNamedUnknownbaseType* = ExprNamedExpression

proc getTypeName*(): cstring {.importcpp: "Expr_NamedUnknown::get_type_name(@)",
                            header: "Expr_NamedUnknown.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_NamedUnknown::get_type_descriptor(@)",
    header: "Expr_NamedUnknown.hxx".}
proc dynamicType*(this: ExprNamedUnknown): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedUnknown.hxx".}
