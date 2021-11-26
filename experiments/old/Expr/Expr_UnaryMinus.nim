##  Created on: 1991-01-15
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

discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_UnaryMinus"
discard "forward decl of Expr_UnaryMinus"
type
  HandleC1C1* = Handle[ExprUnaryMinus]
  ExprUnaryMinus* {.importcpp: "Expr_UnaryMinus", header: "Expr_UnaryMinus.hxx",
                   bycopy.} = object of ExprUnaryExpression ## ! Create the unary minus of <exp>.


proc constructExprUnaryMinus*(exp: Handle[ExprGeneralExpression]): ExprUnaryMinus {.
    constructor, importcpp: "Expr_UnaryMinus(@)", header: "Expr_UnaryMinus.hxx".}
proc shallowSimplified*(this: ExprUnaryMinus): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_UnaryMinus.hxx".}
proc copy*(this: ExprUnaryMinus): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_UnaryMinus.hxx".}
proc isIdentical*(this: ExprUnaryMinus; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_UnaryMinus.hxx".}
proc isLinear*(this: ExprUnaryMinus): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_UnaryMinus.hxx".}
proc derivative*(this: ExprUnaryMinus; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_UnaryMinus.hxx".}
proc nDerivative*(this: ExprUnaryMinus; x: Handle[ExprNamedUnknown]; n: cint): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "NDerivative",
                            header: "Expr_UnaryMinus.hxx".}
proc evaluate*(this: ExprUnaryMinus; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_UnaryMinus.hxx".}
proc string*(this: ExprUnaryMinus): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_UnaryMinus.hxx".}
type
  ExprUnaryMinusbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_UnaryMinus::get_type_name(@)",
                            header: "Expr_UnaryMinus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_UnaryMinus::get_type_descriptor(@)",
    header: "Expr_UnaryMinus.hxx".}
proc dynamicType*(this: ExprUnaryMinus): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_UnaryMinus.hxx".}

























