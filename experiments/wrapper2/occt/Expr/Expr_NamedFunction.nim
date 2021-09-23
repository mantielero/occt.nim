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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, Expr_Array1OfNamedUnknown,
  Expr_GeneralFunction, ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean

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
  Handle_Expr_NamedFunction* = handle[Expr_NamedFunction]
  Expr_NamedFunction* {.importcpp: "Expr_NamedFunction",
                       header: "Expr_NamedFunction.hxx", bycopy.} = object of Expr_GeneralFunction ##
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


proc constructExpr_NamedFunction*(name: TCollection_AsciiString;
                                 exp: handle[Expr_GeneralExpression];
                                 vars: Expr_Array1OfNamedUnknown): Expr_NamedFunction {.
    constructor, importcpp: "Expr_NamedFunction(@)",
    header: "Expr_NamedFunction.hxx".}
proc SetName*(this: var Expr_NamedFunction; newname: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Expr_NamedFunction.hxx".}
proc GetName*(this: Expr_NamedFunction): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetName", header: "Expr_NamedFunction.hxx".}
proc NbOfVariables*(this: Expr_NamedFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbOfVariables", header: "Expr_NamedFunction.hxx".}
proc Variable*(this: Expr_NamedFunction; index: Standard_Integer): handle[
    Expr_NamedUnknown] {.noSideEffect, importcpp: "Variable",
                        header: "Expr_NamedFunction.hxx".}
proc Evaluate*(this: Expr_NamedFunction; vars: Expr_Array1OfNamedUnknown;
              values: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NamedFunction.hxx".}
proc Copy*(this: Expr_NamedFunction): handle[Expr_GeneralFunction] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NamedFunction.hxx".}
proc Derivative*(this: Expr_NamedFunction; `var`: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralFunction] {.noSideEffect, importcpp: "Derivative",
                           header: "Expr_NamedFunction.hxx".}
proc Derivative*(this: Expr_NamedFunction; `var`: handle[Expr_NamedUnknown];
                deg: Standard_Integer): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Derivative", header: "Expr_NamedFunction.hxx".}
proc IsIdentical*(this: Expr_NamedFunction; `func`: handle[Expr_GeneralFunction]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_NamedFunction.hxx".}
proc IsLinearOnVariable*(this: Expr_NamedFunction; index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsLinearOnVariable", header: "Expr_NamedFunction.hxx".}
proc GetStringName*(this: Expr_NamedFunction): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetStringName", header: "Expr_NamedFunction.hxx".}
proc Expression*(this: Expr_NamedFunction): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Expression", header: "Expr_NamedFunction.hxx".}
proc SetExpression*(this: var Expr_NamedFunction;
                   exp: handle[Expr_GeneralExpression]) {.
    importcpp: "SetExpression", header: "Expr_NamedFunction.hxx".}
type
  Expr_NamedFunctionbase_type* = Expr_GeneralFunction

proc get_type_name*(): cstring {.importcpp: "Expr_NamedFunction::get_type_name(@)",
                              header: "Expr_NamedFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_NamedFunction::get_type_descriptor(@)",
    header: "Expr_NamedFunction.hxx".}
proc DynamicType*(this: Expr_NamedFunction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedFunction.hxx".}