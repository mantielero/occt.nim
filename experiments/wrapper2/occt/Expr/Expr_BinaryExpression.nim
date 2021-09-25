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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_BinaryExpression"
discard "forward decl of Expr_BinaryExpression"
type
  HandleExprBinaryExpression* = Handle[ExprBinaryExpression]

## ! Defines all binary expressions. The order of the two
## ! operands is significant.

type
  ExprBinaryExpression* {.importcpp: "Expr_BinaryExpression",
                         header: "Expr_BinaryExpression.hxx", bycopy.} = object of ExprGeneralExpression ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## first
                                                                                                  ## operand
                                                                                                  ## of
                                                                                                  ## <me>


proc firstOperand*(this: ExprBinaryExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "FirstOperand", header: "Expr_BinaryExpression.hxx".}
proc secondOperand*(this: ExprBinaryExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "SecondOperand", header: "Expr_BinaryExpression.hxx".}
proc setFirstOperand*(this: var ExprBinaryExpression;
                     exp: Handle[ExprGeneralExpression]) {.
    importcpp: "SetFirstOperand", header: "Expr_BinaryExpression.hxx".}
proc setSecondOperand*(this: var ExprBinaryExpression;
                      exp: Handle[ExprGeneralExpression]) {.
    importcpp: "SetSecondOperand", header: "Expr_BinaryExpression.hxx".}
proc nbSubExpressions*(this: ExprBinaryExpression): int {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_BinaryExpression.hxx".}
proc subExpression*(this: ExprBinaryExpression; i: int): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "SubExpression", header: "Expr_BinaryExpression.hxx".}
proc containsUnknowns*(this: ExprBinaryExpression): bool {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_BinaryExpression.hxx".}
proc contains*(this: ExprBinaryExpression; exp: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "Contains", header: "Expr_BinaryExpression.hxx".}
proc replace*(this: var ExprBinaryExpression; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_BinaryExpression.hxx".}
proc simplified*(this: ExprBinaryExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_BinaryExpression.hxx".}
type
  ExprBinaryExpressionbaseType* = ExprGeneralExpression

proc getTypeName*(): cstring {.importcpp: "Expr_BinaryExpression::get_type_name(@)",
                            header: "Expr_BinaryExpression.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_BinaryExpression::get_type_descriptor(@)",
    header: "Expr_BinaryExpression.hxx".}
proc dynamicType*(this: ExprBinaryExpression): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_BinaryExpression.hxx".}
