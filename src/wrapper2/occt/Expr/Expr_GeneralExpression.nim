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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralExpression"
type
  Handle_Expr_GeneralExpression* = handle[Expr_GeneralExpression]

## ! Defines the general purposes of any expression.

type
  Expr_GeneralExpression* {.importcpp: "Expr_GeneralExpression",
                           header: "Expr_GeneralExpression.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## number
                                                                                                  ## of
                                                                                                  ## sub-expressions
                                                                                                  ## contained
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## in
                                                                                                  ## <me>
                                                                                                  ## (
                                                                                                  ## >=
                                                                                                  ## 0)


proc NbSubExpressions*(this: Expr_GeneralExpression): Standard_Integer {.
    noSideEffect, importcpp: "NbSubExpressions",
    header: "Expr_GeneralExpression.hxx".}
proc SubExpression*(this: Expr_GeneralExpression; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_GeneralExpression.hxx".}
proc Simplified*(this: Expr_GeneralExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_GeneralExpression.hxx".}
proc ShallowSimplified*(this: Expr_GeneralExpression): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "ShallowSimplified",
                             header: "Expr_GeneralExpression.hxx".}
proc Copy*(this: Expr_GeneralExpression): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Copy", header: "Expr_GeneralExpression.hxx".}
proc ContainsUnknowns*(this: Expr_GeneralExpression): Standard_Boolean {.
    noSideEffect, importcpp: "ContainsUnknowns",
    header: "Expr_GeneralExpression.hxx".}
proc Contains*(this: Expr_GeneralExpression; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_GeneralExpression.hxx".}
proc IsLinear*(this: Expr_GeneralExpression): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_GeneralExpression.hxx".}
proc IsShareable*(this: Expr_GeneralExpression): Standard_Boolean {.noSideEffect,
    importcpp: "IsShareable", header: "Expr_GeneralExpression.hxx".}
proc IsIdentical*(this: Expr_GeneralExpression;
                 Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_GeneralExpression.hxx".}
proc Derivative*(this: Expr_GeneralExpression; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_GeneralExpression.hxx".}
proc NDerivative*(this: Expr_GeneralExpression; X: handle[Expr_NamedUnknown];
                 N: Standard_Integer): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "NDerivative", header: "Expr_GeneralExpression.hxx".}
proc Replace*(this: var Expr_GeneralExpression; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_GeneralExpression.hxx".}
proc Evaluate*(this: Expr_GeneralExpression; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_GeneralExpression.hxx".}
proc EvaluateNumeric*(this: Expr_GeneralExpression): Standard_Real {.noSideEffect,
    importcpp: "EvaluateNumeric", header: "Expr_GeneralExpression.hxx".}
proc String*(this: Expr_GeneralExpression): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_GeneralExpression.hxx".}
type
  Expr_GeneralExpressionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Expr_GeneralExpression::get_type_name(@)",
                              header: "Expr_GeneralExpression.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_GeneralExpression::get_type_descriptor(@)",
    header: "Expr_GeneralExpression.hxx".}
proc DynamicType*(this: Expr_GeneralExpression): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Expr_GeneralExpression.hxx".}