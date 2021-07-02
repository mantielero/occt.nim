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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_PolyExpression"
discard "forward decl of Expr_PolyExpression"
type
  HandleExprPolyExpression* = Handle[ExprPolyExpression]
  ExprPolyExpression* {.importcpp: "Expr_PolyExpression",
                       header: "Expr_PolyExpression.hxx", bycopy.} = object of ExprGeneralExpression ##
                                                                                              ## !
                                                                                              ## returns
                                                                                              ## the
                                                                                              ## number
                                                                                              ## of
                                                                                              ## operands
                                                                                              ## contained
                                                                                              ## in
                                                                                              ## <me>
                                                                                              ##
                                                                                              ## !
                                                                                              ## initialize
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## list
                                                                                              ## of
                                                                                              ## operands.


proc nbOperands*(this: ExprPolyExpression): StandardInteger {.noSideEffect,
    importcpp: "NbOperands", header: "Expr_PolyExpression.hxx".}
proc operand*(this: ExprPolyExpression; index: StandardInteger): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Operand",
                            header: "Expr_PolyExpression.hxx".}
proc setOperand*(this: var ExprPolyExpression; exp: Handle[ExprGeneralExpression];
                index: StandardInteger) {.importcpp: "SetOperand",
                                        header: "Expr_PolyExpression.hxx".}
proc nbSubExpressions*(this: ExprPolyExpression): StandardInteger {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_PolyExpression.hxx".}
proc subExpression*(this: ExprPolyExpression; i: StandardInteger): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                            header: "Expr_PolyExpression.hxx".}
proc containsUnknowns*(this: ExprPolyExpression): StandardBoolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_PolyExpression.hxx".}
proc contains*(this: ExprPolyExpression; exp: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_PolyExpression.hxx".}
proc replace*(this: var ExprPolyExpression; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_PolyExpression.hxx".}
proc simplified*(this: ExprPolyExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_PolyExpression.hxx".}
type
  ExprPolyExpressionbaseType* = ExprGeneralExpression

proc getTypeName*(): cstring {.importcpp: "Expr_PolyExpression::get_type_name(@)",
                            header: "Expr_PolyExpression.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_PolyExpression::get_type_descriptor(@)",
    header: "Expr_PolyExpression.hxx".}
proc dynamicType*(this: ExprPolyExpression): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_PolyExpression.hxx".}

