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
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_NumericValue"
discard "forward decl of Expr_NumericValue"
type
  HandleExprNumericValue* = Handle[ExprNumericValue]

## ! This class describes any reel value defined in an
## ! expression.

type
  ExprNumericValue* {.importcpp: "Expr_NumericValue",
                     header: "Expr_NumericValue.hxx", bycopy.} = object of ExprGeneralExpression


proc constructExprNumericValue*(val: float): ExprNumericValue {.constructor,
    importcpp: "Expr_NumericValue(@)", header: "Expr_NumericValue.hxx".}
proc getValue*(this: ExprNumericValue): float {.noSideEffect, importcpp: "GetValue",
    header: "Expr_NumericValue.hxx".}
proc setValue*(this: var ExprNumericValue; val: float) {.importcpp: "SetValue",
    header: "Expr_NumericValue.hxx".}
proc nbSubExpressions*(this: ExprNumericValue): int {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_NumericValue.hxx".}
proc subExpression*(this: ExprNumericValue; i: int): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "SubExpression", header: "Expr_NumericValue.hxx".}
proc simplified*(this: ExprNumericValue): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_NumericValue.hxx".}
proc shallowSimplified*(this: ExprNumericValue): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_NumericValue.hxx".}
proc copy*(this: ExprNumericValue): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NumericValue.hxx".}
proc containsUnknowns*(this: ExprNumericValue): bool {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_NumericValue.hxx".}
proc contains*(this: ExprNumericValue; exp: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "Contains", header: "Expr_NumericValue.hxx".}
proc isIdentical*(this: ExprNumericValue; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_NumericValue.hxx".}
proc isLinear*(this: ExprNumericValue): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_NumericValue.hxx".}
proc derivative*(this: ExprNumericValue; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_NumericValue.hxx".}
proc nDerivative*(this: ExprNumericValue; x: Handle[ExprNamedUnknown]; n: int): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "NDerivative",
                            header: "Expr_NumericValue.hxx".}
proc replace*(this: var ExprNumericValue; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_NumericValue.hxx".}
proc evaluate*(this: ExprNumericValue; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NumericValue.hxx".}
proc string*(this: ExprNumericValue): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_NumericValue.hxx".}
type
  ExprNumericValuebaseType* = ExprGeneralExpression

proc getTypeName*(): cstring {.importcpp: "Expr_NumericValue::get_type_name(@)",
                            header: "Expr_NumericValue.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_NumericValue::get_type_descriptor(@)",
    header: "Expr_NumericValue.hxx".}
proc dynamicType*(this: ExprNumericValue): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NumericValue.hxx".}
