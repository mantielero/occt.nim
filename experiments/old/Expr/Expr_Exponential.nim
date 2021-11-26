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

discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Exponential"
discard "forward decl of Expr_Exponential"
type
  HandleC1C1* = Handle[ExprExponential]
  ExprExponential* {.importcpp: "Expr_Exponential", header: "Expr_Exponential.hxx",
                    bycopy.} = object of ExprUnaryExpression ## ! Creates the exponential of <exp>


proc constructExprExponential*(exp: Handle[ExprGeneralExpression]): ExprExponential {.
    constructor, importcpp: "Expr_Exponential(@)", header: "Expr_Exponential.hxx".}
proc shallowSimplified*(this: ExprExponential): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Exponential.hxx".}
proc copy*(this: ExprExponential): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Exponential.hxx".}
proc isIdentical*(this: ExprExponential; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Exponential.hxx".}
proc isLinear*(this: ExprExponential): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_Exponential.hxx".}
proc derivative*(this: ExprExponential; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Exponential.hxx".}
proc evaluate*(this: ExprExponential; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Exponential.hxx".}
proc string*(this: ExprExponential): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Exponential.hxx".}
type
  ExprExponentialbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Exponential::get_type_name(@)",
                            header: "Expr_Exponential.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Exponential::get_type_descriptor(@)",
    header: "Expr_Exponential.hxx".}
proc dynamicType*(this: ExprExponential): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Exponential.hxx".}

























