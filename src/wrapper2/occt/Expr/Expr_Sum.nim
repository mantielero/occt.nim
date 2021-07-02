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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Sum"
discard "forward decl of Expr_Sum"
type
  HandleExprSum* = Handle[ExprSum]
  ExprSum* {.importcpp: "Expr_Sum", header: "Expr_Sum.hxx", bycopy.} = object of ExprPolyExpression ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## the
                                                                                          ## sum
                                                                                          ## of
                                                                                          ## all
                                                                                          ## the
                                                                                          ## members
                                                                                          ## of
                                                                                          ## sequence
                                                                                          ## <exps>.


proc constructExprSum*(exps: ExprSequenceOfGeneralExpression): ExprSum {.
    constructor, importcpp: "Expr_Sum(@)", header: "Expr_Sum.hxx".}
proc constructExprSum*(exp1: Handle[ExprGeneralExpression];
                      exp2: Handle[ExprGeneralExpression]): ExprSum {.constructor,
    importcpp: "Expr_Sum(@)", header: "Expr_Sum.hxx".}
proc shallowSimplified*(this: ExprSum): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Sum.hxx".}
proc copy*(this: ExprSum): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Sum.hxx".}
proc isIdentical*(this: ExprSum; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Sum.hxx".}
proc isLinear*(this: ExprSum): StandardBoolean {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_Sum.hxx".}
proc derivative*(this: ExprSum; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Sum.hxx".}
proc nDerivative*(this: ExprSum; x: Handle[ExprNamedUnknown]; n: StandardInteger): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "NDerivative",
                            header: "Expr_Sum.hxx".}
proc evaluate*(this: ExprSum; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Sum.hxx".}
proc string*(this: ExprSum): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Sum.hxx".}
type
  ExprSumbaseType* = ExprPolyExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Sum::get_type_name(@)",
                            header: "Expr_Sum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Sum::get_type_descriptor(@)", header: "Expr_Sum.hxx".}
proc dynamicType*(this: ExprSum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Sum.hxx".}

