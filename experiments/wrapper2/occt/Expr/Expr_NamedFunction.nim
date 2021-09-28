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

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_NamedFunction"
discard "forward decl of Expr_NamedFunction"
type
  HandleC1C1* = Handle[ExprNamedFunction]
  ExprNamedFunction* {.importcpp: "Expr_NamedFunction",
                      header: "Expr_NamedFunction.hxx", bycopy.} = object of ExprGeneralFunction ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## function
                                                                                          ## of
                                                                                          ## given
                                                                                          ## variables
                                                                                          ## <vars>
                                                                                          ## with
                                                                                          ## name
                                                                                          ##
                                                                                          ## !
                                                                                          ## <name>
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## the
                                                                                          ## expression
                                                                                          ## <exp>.


proc constructExprNamedFunction*(name: TCollectionAsciiString;
                                exp: Handle[ExprGeneralExpression];
                                vars: ExprArray1OfNamedUnknown): ExprNamedFunction {.
    constructor, importcpp: "Expr_NamedFunction(@)",
    header: "Expr_NamedFunction.hxx".}
proc setName*(this: var ExprNamedFunction; newname: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Expr_NamedFunction.hxx".}
proc getName*(this: ExprNamedFunction): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetName", header: "Expr_NamedFunction.hxx".}
proc nbOfVariables*(this: ExprNamedFunction): cint {.noSideEffect,
    importcpp: "NbOfVariables", header: "Expr_NamedFunction.hxx".}
proc variable*(this: ExprNamedFunction; index: cint): Handle[ExprNamedUnknown] {.
    noSideEffect, importcpp: "Variable", header: "Expr_NamedFunction.hxx".}
proc evaluate*(this: ExprNamedFunction; vars: ExprArray1OfNamedUnknown;
              values: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NamedFunction.hxx".}
proc copy*(this: ExprNamedFunction): Handle[ExprGeneralFunction] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NamedFunction.hxx".}
proc derivative*(this: ExprNamedFunction; `var`: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralFunction] {.noSideEffect, importcpp: "Derivative",
                          header: "Expr_NamedFunction.hxx".}
proc derivative*(this: ExprNamedFunction; `var`: Handle[ExprNamedUnknown]; deg: cint): Handle[
    ExprGeneralFunction] {.noSideEffect, importcpp: "Derivative",
                          header: "Expr_NamedFunction.hxx".}
proc isIdentical*(this: ExprNamedFunction; `func`: Handle[ExprGeneralFunction]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_NamedFunction.hxx".}
proc isLinearOnVariable*(this: ExprNamedFunction; index: cint): bool {.noSideEffect,
    importcpp: "IsLinearOnVariable", header: "Expr_NamedFunction.hxx".}
proc getStringName*(this: ExprNamedFunction): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetStringName", header: "Expr_NamedFunction.hxx".}
proc expression*(this: ExprNamedFunction): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Expression", header: "Expr_NamedFunction.hxx".}
proc setExpression*(this: var ExprNamedFunction; exp: Handle[ExprGeneralExpression]) {.
    importcpp: "SetExpression", header: "Expr_NamedFunction.hxx".}
type
  ExprNamedFunctionbaseType* = ExprGeneralFunction

proc getTypeName*(): cstring {.importcpp: "Expr_NamedFunction::get_type_name(@)",
                            header: "Expr_NamedFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_NamedFunction::get_type_descriptor(@)",
    header: "Expr_NamedFunction.hxx".}
proc dynamicType*(this: ExprNamedFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedFunction.hxx".}

























