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
discard "forward decl of Expr_UnaryExpression"
discard "forward decl of Expr_UnaryExpression"
type
  HandleC1C1* = Handle[ExprUnaryExpression]
  ExprUnaryExpression* {.importcpp: "Expr_UnaryExpression",
                        header: "Expr_UnaryExpression.hxx", bycopy.} = object of ExprGeneralExpression ##
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


proc operand*(this: ExprUnaryExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Operand", header: "Expr_UnaryExpression.hxx".}
proc setOperand*(this: var ExprUnaryExpression; exp: Handle[ExprGeneralExpression]) {.
    importcpp: "SetOperand", header: "Expr_UnaryExpression.hxx".}
proc nbSubExpressions*(this: ExprUnaryExpression): cint {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_UnaryExpression.hxx".}
proc subExpression*(this: ExprUnaryExpression; i: cint): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "SubExpression", header: "Expr_UnaryExpression.hxx".}
proc containsUnknowns*(this: ExprUnaryExpression): bool {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_UnaryExpression.hxx".}
proc contains*(this: ExprUnaryExpression; exp: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "Contains", header: "Expr_UnaryExpression.hxx".}
proc replace*(this: var ExprUnaryExpression; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_UnaryExpression.hxx".}
proc simplified*(this: ExprUnaryExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_UnaryExpression.hxx".}
type
  ExprUnaryExpressionbaseType* = ExprGeneralExpression

proc getTypeName*(): cstring {.importcpp: "Expr_UnaryExpression::get_type_name(@)",
                            header: "Expr_UnaryExpression.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_UnaryExpression::get_type_descriptor(@)",
    header: "Expr_UnaryExpression.hxx".}
proc dynamicType*(this: ExprUnaryExpression): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_UnaryExpression.hxx".}

























