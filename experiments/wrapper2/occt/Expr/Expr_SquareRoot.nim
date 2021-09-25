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
discard "forward decl of Expr_SquareRoot"
discard "forward decl of Expr_SquareRoot"
type
  HandleExprSquareRoot* = Handle[ExprSquareRoot]
  ExprSquareRoot* {.importcpp: "Expr_SquareRoot", header: "Expr_SquareRoot.hxx",
                   bycopy.} = object of ExprUnaryExpression ## ! Creates the square root of <exp>


proc constructExprSquareRoot*(exp: Handle[ExprGeneralExpression]): ExprSquareRoot {.
    constructor, importcpp: "Expr_SquareRoot(@)", header: "Expr_SquareRoot.hxx".}
proc shallowSimplified*(this: ExprSquareRoot): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_SquareRoot.hxx".}
proc copy*(this: ExprSquareRoot): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_SquareRoot.hxx".}
proc isIdentical*(this: ExprSquareRoot; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_SquareRoot.hxx".}
proc isLinear*(this: ExprSquareRoot): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_SquareRoot.hxx".}
proc derivative*(this: ExprSquareRoot; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_SquareRoot.hxx".}
proc evaluate*(this: ExprSquareRoot; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_SquareRoot.hxx".}
proc string*(this: ExprSquareRoot): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_SquareRoot.hxx".}
type
  ExprSquareRootbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_SquareRoot::get_type_name(@)",
                            header: "Expr_SquareRoot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_SquareRoot::get_type_descriptor(@)",
    header: "Expr_SquareRoot.hxx".}
proc dynamicType*(this: ExprSquareRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_SquareRoot.hxx".}
