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
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_PolyFunction"
discard "forward decl of Expr_PolyFunction"
type
  HandleExprPolyFunction* = Handle[ExprPolyFunction]

## ! Defines the use of an n-ary function in an expression
## ! with given arguments.

type
  ExprPolyFunction* {.importcpp: "Expr_PolyFunction",
                     header: "Expr_PolyFunction.hxx", bycopy.} = object of ExprPolyExpression ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## <me>
                                                                                       ## as
                                                                                       ## <func>(<exps_1>,<exps_2>,...,<exps_n>)


proc constructExprPolyFunction*(`func`: Handle[ExprGeneralFunction];
                               exps: ExprArray1OfGeneralExpression): ExprPolyFunction {.
    constructor, importcpp: "Expr_PolyFunction(@)", header: "Expr_PolyFunction.hxx".}
proc function*(this: ExprPolyFunction): Handle[ExprGeneralFunction] {.noSideEffect,
    importcpp: "Function", header: "Expr_PolyFunction.hxx".}
proc shallowSimplified*(this: ExprPolyFunction): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_PolyFunction.hxx".}
proc copy*(this: ExprPolyFunction): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_PolyFunction.hxx".}
proc isIdentical*(this: ExprPolyFunction; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_PolyFunction.hxx".}
proc isLinear*(this: ExprPolyFunction): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_PolyFunction.hxx".}
proc derivative*(this: ExprPolyFunction; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_PolyFunction.hxx".}
proc evaluate*(this: ExprPolyFunction; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_PolyFunction.hxx".}
proc string*(this: ExprPolyFunction): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_PolyFunction.hxx".}
type
  ExprPolyFunctionbaseType* = ExprPolyExpression

proc getTypeName*(): cstring {.importcpp: "Expr_PolyFunction::get_type_name(@)",
                            header: "Expr_PolyFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_PolyFunction::get_type_descriptor(@)",
    header: "Expr_PolyFunction.hxx".}
proc dynamicType*(this: ExprPolyFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_PolyFunction.hxx".}
