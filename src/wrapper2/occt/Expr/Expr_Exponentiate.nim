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
discard "forward decl of Expr_Exponentiate"
discard "forward decl of Expr_Exponentiate"
type
  HandleExprExponentiate* = Handle[ExprExponentiate]
  ExprExponentiate* {.importcpp: "Expr_Exponentiate",
                     header: "Expr_Exponentiate.hxx", bycopy.} = object of ExprBinaryExpression ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## the
                                                                                         ## exponential
                                                                                         ## <exp1>
                                                                                         ## ^
                                                                                         ## <exp2>


proc constructExprExponentiate*(exp1: Handle[ExprGeneralExpression];
                               exp2: Handle[ExprGeneralExpression]): ExprExponentiate {.
    constructor, importcpp: "Expr_Exponentiate(@)", header: "Expr_Exponentiate.hxx".}
proc shallowSimplified*(this: ExprExponentiate): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Exponentiate.hxx".}
proc copy*(this: ExprExponentiate): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Exponentiate.hxx".}
proc isIdentical*(this: ExprExponentiate; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Exponentiate.hxx".}
proc isLinear*(this: ExprExponentiate): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Exponentiate.hxx".}
proc derivative*(this: ExprExponentiate; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Exponentiate.hxx".}
proc evaluate*(this: ExprExponentiate; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Exponentiate.hxx".}
proc string*(this: ExprExponentiate): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Exponentiate.hxx".}
type
  ExprExponentiatebaseType* = ExprBinaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Exponentiate::get_type_name(@)",
                            header: "Expr_Exponentiate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Exponentiate::get_type_descriptor(@)",
    header: "Expr_Exponentiate.hxx".}
proc dynamicType*(this: ExprExponentiate): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Exponentiate.hxx".}

