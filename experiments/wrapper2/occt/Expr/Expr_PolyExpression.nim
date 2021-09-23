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
  ../Standard/Standard, ../Standard/Standard_Type,
  Expr_SequenceOfGeneralExpression, Expr_GeneralExpression,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_PolyExpression"
discard "forward decl of Expr_PolyExpression"
type
  Handle_Expr_PolyExpression* = handle[Expr_PolyExpression]
  Expr_PolyExpression* {.importcpp: "Expr_PolyExpression",
                        header: "Expr_PolyExpression.hxx", bycopy.} = object of Expr_GeneralExpression ##
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


proc NbOperands*(this: Expr_PolyExpression): Standard_Integer {.noSideEffect,
    importcpp: "NbOperands", header: "Expr_PolyExpression.hxx".}
proc Operand*(this: Expr_PolyExpression; index: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Operand",
                             header: "Expr_PolyExpression.hxx".}
proc SetOperand*(this: var Expr_PolyExpression; exp: handle[Expr_GeneralExpression];
                index: Standard_Integer) {.importcpp: "SetOperand",
    header: "Expr_PolyExpression.hxx".}
proc NbSubExpressions*(this: Expr_PolyExpression): Standard_Integer {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_PolyExpression.hxx".}
proc SubExpression*(this: Expr_PolyExpression; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_PolyExpression.hxx".}
proc ContainsUnknowns*(this: Expr_PolyExpression): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_PolyExpression.hxx".}
proc Contains*(this: Expr_PolyExpression; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_PolyExpression.hxx".}
proc Replace*(this: var Expr_PolyExpression; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_PolyExpression.hxx".}
proc Simplified*(this: Expr_PolyExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_PolyExpression.hxx".}
type
  Expr_PolyExpressionbase_type* = Expr_GeneralExpression

proc get_type_name*(): cstring {.importcpp: "Expr_PolyExpression::get_type_name(@)",
                              header: "Expr_PolyExpression.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_PolyExpression::get_type_descriptor(@)",
    header: "Expr_PolyExpression.hxx".}
proc DynamicType*(this: Expr_PolyExpression): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_PolyExpression.hxx".}