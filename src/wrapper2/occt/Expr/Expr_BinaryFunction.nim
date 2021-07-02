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
discard "forward decl of Expr_BinaryFunction"
discard "forward decl of Expr_BinaryFunction"
type
  HandleExprBinaryFunction* = Handle[ExprBinaryFunction]

## ! Defines the use of a binary function in an expression
## ! with given arguments.

type
  ExprBinaryFunction* {.importcpp: "Expr_BinaryFunction",
                       header: "Expr_BinaryFunction.hxx", bycopy.} = object of ExprBinaryExpression ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## <me>
                                                                                             ## as
                                                                                             ## <func>
                                                                                             ## (<exp1>,<exp2>).
                                                                                             ##
                                                                                             ## !
                                                                                             ## Raises
                                                                                             ## exception
                                                                                             ## if
                                                                                             ## <func>
                                                                                             ## is
                                                                                             ## not
                                                                                             ## binary.


proc constructExprBinaryFunction*(`func`: Handle[ExprGeneralFunction];
                                 exp1: Handle[ExprGeneralExpression];
                                 exp2: Handle[ExprGeneralExpression]): ExprBinaryFunction {.
    constructor, importcpp: "Expr_BinaryFunction(@)",
    header: "Expr_BinaryFunction.hxx".}
proc function*(this: ExprBinaryFunction): Handle[ExprGeneralFunction] {.
    noSideEffect, importcpp: "Function", header: "Expr_BinaryFunction.hxx".}
proc shallowSimplified*(this: ExprBinaryFunction): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_BinaryFunction.hxx".}
proc copy*(this: ExprBinaryFunction): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_BinaryFunction.hxx".}
proc isIdentical*(this: ExprBinaryFunction; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_BinaryFunction.hxx".}
proc isLinear*(this: ExprBinaryFunction): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_BinaryFunction.hxx".}
proc derivative*(this: ExprBinaryFunction; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_BinaryFunction.hxx".}
proc evaluate*(this: ExprBinaryFunction; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_BinaryFunction.hxx".}
proc string*(this: ExprBinaryFunction): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_BinaryFunction.hxx".}
type
  ExprBinaryFunctionbaseType* = ExprBinaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_BinaryFunction::get_type_name(@)",
                            header: "Expr_BinaryFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_BinaryFunction::get_type_descriptor(@)",
    header: "Expr_BinaryFunction.hxx".}
proc dynamicType*(this: ExprBinaryFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_BinaryFunction.hxx".}

