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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Expr_GeneralExpression, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_NumericValue"
discard "forward decl of Expr_NumericValue"
type
  Handle_Expr_NumericValue* = handle[Expr_NumericValue]

## ! This class describes any reel value defined in an
## ! expression.

type
  Expr_NumericValue* {.importcpp: "Expr_NumericValue",
                      header: "Expr_NumericValue.hxx", bycopy.} = object of Expr_GeneralExpression


proc constructExpr_NumericValue*(val: Standard_Real): Expr_NumericValue {.
    constructor, importcpp: "Expr_NumericValue(@)", header: "Expr_NumericValue.hxx".}
proc GetValue*(this: Expr_NumericValue): Standard_Real {.noSideEffect,
    importcpp: "GetValue", header: "Expr_NumericValue.hxx".}
proc SetValue*(this: var Expr_NumericValue; val: Standard_Real) {.
    importcpp: "SetValue", header: "Expr_NumericValue.hxx".}
proc NbSubExpressions*(this: Expr_NumericValue): Standard_Integer {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_NumericValue.hxx".}
proc SubExpression*(this: Expr_NumericValue; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_NumericValue.hxx".}
proc Simplified*(this: Expr_NumericValue): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_NumericValue.hxx".}
proc ShallowSimplified*(this: Expr_NumericValue): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_NumericValue.hxx".}
proc Copy*(this: Expr_NumericValue): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NumericValue.hxx".}
proc ContainsUnknowns*(this: Expr_NumericValue): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_NumericValue.hxx".}
proc Contains*(this: Expr_NumericValue; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_NumericValue.hxx".}
proc IsIdentical*(this: Expr_NumericValue; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_NumericValue.hxx".}
proc IsLinear*(this: Expr_NumericValue): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_NumericValue.hxx".}
proc Derivative*(this: Expr_NumericValue; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_NumericValue.hxx".}
proc NDerivative*(this: Expr_NumericValue; X: handle[Expr_NamedUnknown];
                 N: Standard_Integer): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "NDerivative", header: "Expr_NumericValue.hxx".}
proc Replace*(this: var Expr_NumericValue; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_NumericValue.hxx".}
proc Evaluate*(this: Expr_NumericValue; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NumericValue.hxx".}
proc String*(this: Expr_NumericValue): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_NumericValue.hxx".}
type
  Expr_NumericValuebase_type* = Expr_GeneralExpression

proc get_type_name*(): cstring {.importcpp: "Expr_NumericValue::get_type_name(@)",
                              header: "Expr_NumericValue.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_NumericValue::get_type_descriptor(@)",
    header: "Expr_NumericValue.hxx".}
proc DynamicType*(this: Expr_NumericValue): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NumericValue.hxx".}