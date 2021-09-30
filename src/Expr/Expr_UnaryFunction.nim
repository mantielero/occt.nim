##  Created on: 1991-01-14
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

discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_InvalidFunction"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_UnaryFunction"
discard "forward decl of Expr_UnaryFunction"
type
  HandleC1C1* = Handle[ExprUnaryFunction]

## ! Defines the use of an unary function in an expression
## ! with a given argument.

type
  ExprUnaryFunction* {.importcpp: "Expr_UnaryFunction",
                      header: "Expr_UnaryFunction.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## me
                                                                                          ## as
                                                                                          ## <func>(<exp>).
                                                                                          ##
                                                                                          ## !
                                                                                          ## Raises
                                                                                          ## exception
                                                                                          ## if
                                                                                          ## <func>
                                                                                          ## is
                                                                                          ## not
                                                                                          ## unary.


proc constructExprUnaryFunction*(`func`: Handle[ExprGeneralFunction];
                                exp: Handle[ExprGeneralExpression]): ExprUnaryFunction {.
    constructor, importcpp: "Expr_UnaryFunction(@)",
    header: "Expr_UnaryFunction.hxx".}
proc function*(this: ExprUnaryFunction): Handle[ExprGeneralFunction] {.noSideEffect,
    importcpp: "Function", header: "Expr_UnaryFunction.hxx".}
proc shallowSimplified*(this: ExprUnaryFunction): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_UnaryFunction.hxx".}
proc copy*(this: ExprUnaryFunction): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_UnaryFunction.hxx".}
proc isIdentical*(this: ExprUnaryFunction; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_UnaryFunction.hxx".}
proc isLinear*(this: ExprUnaryFunction): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_UnaryFunction.hxx".}
proc derivative*(this: ExprUnaryFunction; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_UnaryFunction.hxx".}
proc evaluate*(this: ExprUnaryFunction; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_UnaryFunction.hxx".}
proc string*(this: ExprUnaryFunction): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_UnaryFunction.hxx".}
type
  ExprUnaryFunctionbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_UnaryFunction::get_type_name(@)",
                            header: "Expr_UnaryFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_UnaryFunction::get_type_descriptor(@)",
    header: "Expr_UnaryFunction.hxx".}
proc dynamicType*(this: ExprUnaryFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_UnaryFunction.hxx".}

























