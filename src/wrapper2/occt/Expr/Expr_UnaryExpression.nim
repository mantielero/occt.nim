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
discard "forward decl of Expr_UnaryExpression"
discard "forward decl of Expr_UnaryExpression"
type
  Handle_Expr_UnaryExpression* = handle[Expr_UnaryExpression]
  Expr_UnaryExpression* {.importcpp: "Expr_UnaryExpression",
                         header: "Expr_UnaryExpression.hxx", bycopy.} = object of Expr_GeneralExpression ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## operand
                                                                                                  ## used
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## operand
                                                                                                  ## used
                                                                                                  ## during
                                                                                                  ## creation


proc Operand*(this: Expr_UnaryExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Operand", header: "Expr_UnaryExpression.hxx".}
proc SetOperand*(this: var Expr_UnaryExpression; exp: handle[Expr_GeneralExpression]) {.
    importcpp: "SetOperand", header: "Expr_UnaryExpression.hxx".}
proc NbSubExpressions*(this: Expr_UnaryExpression): Standard_Integer {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_UnaryExpression.hxx".}
proc SubExpression*(this: Expr_UnaryExpression; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_UnaryExpression.hxx".}
proc ContainsUnknowns*(this: Expr_UnaryExpression): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_UnaryExpression.hxx".}
proc Contains*(this: Expr_UnaryExpression; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_UnaryExpression.hxx".}
proc Replace*(this: var Expr_UnaryExpression; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_UnaryExpression.hxx".}
proc Simplified*(this: Expr_UnaryExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_UnaryExpression.hxx".}
type
  Expr_UnaryExpressionbase_type* = Expr_GeneralExpression

proc get_type_name*(): cstring {.importcpp: "Expr_UnaryExpression::get_type_name(@)",
                              header: "Expr_UnaryExpression.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_UnaryExpression::get_type_descriptor(@)",
    header: "Expr_UnaryExpression.hxx".}
proc DynamicType*(this: Expr_UnaryExpression): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_UnaryExpression.hxx".}