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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_GeneralExpression,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_BinaryExpression"
discard "forward decl of Expr_BinaryExpression"
type
  Handle_Expr_BinaryExpression* = handle[Expr_BinaryExpression]

## ! Defines all binary expressions. The order of the two
## ! operands is significant.

type
  Expr_BinaryExpression* {.importcpp: "Expr_BinaryExpression",
                          header: "Expr_BinaryExpression.hxx", bycopy.} = object of Expr_GeneralExpression ##
                                                                                                    ## !
                                                                                                    ## Sets
                                                                                                    ## first
                                                                                                    ## operand
                                                                                                    ## of
                                                                                                    ## <me>


proc FirstOperand*(this: Expr_BinaryExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "FirstOperand", header: "Expr_BinaryExpression.hxx".}
proc SecondOperand*(this: Expr_BinaryExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "SecondOperand", header: "Expr_BinaryExpression.hxx".}
proc SetFirstOperand*(this: var Expr_BinaryExpression;
                     exp: handle[Expr_GeneralExpression]) {.
    importcpp: "SetFirstOperand", header: "Expr_BinaryExpression.hxx".}
proc SetSecondOperand*(this: var Expr_BinaryExpression;
                      exp: handle[Expr_GeneralExpression]) {.
    importcpp: "SetSecondOperand", header: "Expr_BinaryExpression.hxx".}
proc NbSubExpressions*(this: Expr_BinaryExpression): Standard_Integer {.
    noSideEffect, importcpp: "NbSubExpressions",
    header: "Expr_BinaryExpression.hxx".}
proc SubExpression*(this: Expr_BinaryExpression; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_BinaryExpression.hxx".}
proc ContainsUnknowns*(this: Expr_BinaryExpression): Standard_Boolean {.
    noSideEffect, importcpp: "ContainsUnknowns",
    header: "Expr_BinaryExpression.hxx".}
proc Contains*(this: Expr_BinaryExpression; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_BinaryExpression.hxx".}
proc Replace*(this: var Expr_BinaryExpression; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_BinaryExpression.hxx".}
proc Simplified*(this: Expr_BinaryExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_BinaryExpression.hxx".}
type
  Expr_BinaryExpressionbase_type* = Expr_GeneralExpression

proc get_type_name*(): cstring {.importcpp: "Expr_BinaryExpression::get_type_name(@)",
                              header: "Expr_BinaryExpression.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_BinaryExpression::get_type_descriptor(@)",
    header: "Expr_BinaryExpression.hxx".}
proc DynamicType*(this: Expr_BinaryExpression): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Expr_BinaryExpression.hxx".}