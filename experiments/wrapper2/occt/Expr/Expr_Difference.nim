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
discard "forward decl of Expr_Difference"
discard "forward decl of Expr_Difference"
type
  HandleC1C1* = Handle[ExprDifference]
  ExprDifference* {.importcpp: "Expr_Difference", header: "Expr_Difference.hxx",
                   bycopy.} = object of ExprBinaryExpression ## ! Creates the difference <exp1> - <exp2>.


proc constructExprDifference*(exp1: Handle[ExprGeneralExpression];
                             exp2: Handle[ExprGeneralExpression]): ExprDifference {.
    constructor, importcpp: "Expr_Difference(@)", header: "Expr_Difference.hxx".}
proc shallowSimplified*(this: ExprDifference): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Difference.hxx".}
proc copy*(this: ExprDifference): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Difference.hxx".}
proc isIdentical*(this: ExprDifference; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Difference.hxx".}
proc isLinear*(this: ExprDifference): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_Difference.hxx".}
proc derivative*(this: ExprDifference; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Difference.hxx".}
proc nDerivative*(this: ExprDifference; x: Handle[ExprNamedUnknown]; n: cint): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "NDerivative",
                            header: "Expr_Difference.hxx".}
proc evaluate*(this: ExprDifference; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Difference.hxx".}
proc string*(this: ExprDifference): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Difference.hxx".}
type
  ExprDifferencebaseType* = ExprBinaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Difference::get_type_name(@)",
                            header: "Expr_Difference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Difference::get_type_descriptor(@)",
    header: "Expr_Difference.hxx".}
proc dynamicType*(this: ExprDifference): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Difference.hxx".}

























