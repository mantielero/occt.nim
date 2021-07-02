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
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_InvalidOperand"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralExpression"
type
  HandleExprGeneralExpression* = Handle[ExprGeneralExpression]

## ! Defines the general purposes of any expression.

type
  ExprGeneralExpression* {.importcpp: "Expr_GeneralExpression",
                          header: "Expr_GeneralExpression.hxx", bycopy.} = object of StandardTransient ##
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


proc nbSubExpressions*(this: ExprGeneralExpression): StandardInteger {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_GeneralExpression.hxx".}
proc subExpression*(this: ExprGeneralExpression; i: StandardInteger): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                            header: "Expr_GeneralExpression.hxx".}
proc simplified*(this: ExprGeneralExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_GeneralExpression.hxx".}
proc shallowSimplified*(this: ExprGeneralExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified",
    header: "Expr_GeneralExpression.hxx".}
proc copy*(this: ExprGeneralExpression): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Copy", header: "Expr_GeneralExpression.hxx".}
proc containsUnknowns*(this: ExprGeneralExpression): StandardBoolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_GeneralExpression.hxx".}
proc contains*(this: ExprGeneralExpression; exp: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_GeneralExpression.hxx".}
proc isLinear*(this: ExprGeneralExpression): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_GeneralExpression.hxx".}
proc isShareable*(this: ExprGeneralExpression): StandardBoolean {.noSideEffect,
    importcpp: "IsShareable", header: "Expr_GeneralExpression.hxx".}
proc isIdentical*(this: ExprGeneralExpression; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_GeneralExpression.hxx".}
proc derivative*(this: ExprGeneralExpression; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_GeneralExpression.hxx".}
proc nDerivative*(this: ExprGeneralExpression; x: Handle[ExprNamedUnknown];
                 n: StandardInteger): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "NDerivative", header: "Expr_GeneralExpression.hxx".}
proc replace*(this: var ExprGeneralExpression; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_GeneralExpression.hxx".}
proc evaluate*(this: ExprGeneralExpression; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_GeneralExpression.hxx".}
proc evaluateNumeric*(this: ExprGeneralExpression): StandardReal {.noSideEffect,
    importcpp: "EvaluateNumeric", header: "Expr_GeneralExpression.hxx".}
proc string*(this: ExprGeneralExpression): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_GeneralExpression.hxx".}
type
  ExprGeneralExpressionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Expr_GeneralExpression::get_type_name(@)",
                            header: "Expr_GeneralExpression.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_GeneralExpression::get_type_descriptor(@)",
    header: "Expr_GeneralExpression.hxx".}
proc dynamicType*(this: ExprGeneralExpression): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_GeneralExpression.hxx".}

