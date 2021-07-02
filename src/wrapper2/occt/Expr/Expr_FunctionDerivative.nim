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
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_NamedFunction"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_FunctionDerivative"
discard "forward decl of Expr_FunctionDerivative"
type
  HandleExprFunctionDerivative* = Handle[ExprFunctionDerivative]
  ExprFunctionDerivative* {.importcpp: "Expr_FunctionDerivative",
                           header: "Expr_FunctionDerivative.hxx", bycopy.} = object of ExprGeneralFunction ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## FunctionDerivative
                                                                                                    ## of
                                                                                                    ## degree
                                                                                                    ## <deg>
                                                                                                    ## relative
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## <withX>
                                                                                                    ## variable.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Raises
                                                                                                    ## OutOfRange
                                                                                                    ## if
                                                                                                    ## <deg>
                                                                                                    ## lower
                                                                                                    ## or
                                                                                                    ## equal
                                                                                                    ## to
                                                                                                    ## zero.


proc constructExprFunctionDerivative*(`func`: Handle[ExprGeneralFunction];
                                     withX: Handle[ExprNamedUnknown];
                                     deg: StandardInteger): ExprFunctionDerivative {.
    constructor, importcpp: "Expr_FunctionDerivative(@)",
    header: "Expr_FunctionDerivative.hxx".}
proc nbOfVariables*(this: ExprFunctionDerivative): StandardInteger {.noSideEffect,
    importcpp: "NbOfVariables", header: "Expr_FunctionDerivative.hxx".}
proc variable*(this: ExprFunctionDerivative; index: StandardInteger): Handle[
    ExprNamedUnknown] {.noSideEffect, importcpp: "Variable",
                       header: "Expr_FunctionDerivative.hxx".}
proc evaluate*(this: ExprFunctionDerivative; vars: ExprArray1OfNamedUnknown;
              values: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_FunctionDerivative.hxx".}
proc copy*(this: ExprFunctionDerivative): Handle[ExprGeneralFunction] {.
    noSideEffect, importcpp: "Copy", header: "Expr_FunctionDerivative.hxx".}
proc derivative*(this: ExprFunctionDerivative; `var`: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralFunction] {.noSideEffect, importcpp: "Derivative",
                          header: "Expr_FunctionDerivative.hxx".}
proc derivative*(this: ExprFunctionDerivative; `var`: Handle[ExprNamedUnknown];
                deg: StandardInteger): Handle[ExprGeneralFunction] {.noSideEffect,
    importcpp: "Derivative", header: "Expr_FunctionDerivative.hxx".}
proc isIdentical*(this: ExprFunctionDerivative; `func`: Handle[ExprGeneralFunction]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_FunctionDerivative.hxx".}
proc isLinearOnVariable*(this: ExprFunctionDerivative; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsLinearOnVariable",
    header: "Expr_FunctionDerivative.hxx".}
proc function*(this: ExprFunctionDerivative): Handle[ExprGeneralFunction] {.
    noSideEffect, importcpp: "Function", header: "Expr_FunctionDerivative.hxx".}
proc degree*(this: ExprFunctionDerivative): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "Expr_FunctionDerivative.hxx".}
proc derivVariable*(this: ExprFunctionDerivative): Handle[ExprNamedUnknown] {.
    noSideEffect, importcpp: "DerivVariable", header: "Expr_FunctionDerivative.hxx".}
proc getStringName*(this: ExprFunctionDerivative): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetStringName", header: "Expr_FunctionDerivative.hxx".}
proc expression*(this: ExprFunctionDerivative): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Expression", header: "Expr_FunctionDerivative.hxx".}
proc updateExpression*(this: var ExprFunctionDerivative) {.
    importcpp: "UpdateExpression", header: "Expr_FunctionDerivative.hxx".}
type
  ExprFunctionDerivativebaseType* = ExprGeneralFunction

proc getTypeName*(): cstring {.importcpp: "Expr_FunctionDerivative::get_type_name(@)",
                            header: "Expr_FunctionDerivative.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_FunctionDerivative::get_type_descriptor(@)",
    header: "Expr_FunctionDerivative.hxx".}
proc dynamicType*(this: ExprFunctionDerivative): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Expr_FunctionDerivative.hxx".}

