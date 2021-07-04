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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  Expr_GeneralFunction, ../Standard/Standard_Real, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean

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
  Handle_Expr_FunctionDerivative* = handle[Expr_FunctionDerivative]
  Expr_FunctionDerivative* {.importcpp: "Expr_FunctionDerivative",
                            header: "Expr_FunctionDerivative.hxx", bycopy.} = object of Expr_GeneralFunction ##
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


proc constructExpr_FunctionDerivative*(`func`: handle[Expr_GeneralFunction];
                                      withX: handle[Expr_NamedUnknown];
                                      deg: Standard_Integer): Expr_FunctionDerivative {.
    constructor, importcpp: "Expr_FunctionDerivative(@)",
    header: "Expr_FunctionDerivative.hxx".}
proc NbOfVariables*(this: Expr_FunctionDerivative): Standard_Integer {.noSideEffect,
    importcpp: "NbOfVariables", header: "Expr_FunctionDerivative.hxx".}
proc Variable*(this: Expr_FunctionDerivative; index: Standard_Integer): handle[
    Expr_NamedUnknown] {.noSideEffect, importcpp: "Variable",
                        header: "Expr_FunctionDerivative.hxx".}
proc Evaluate*(this: Expr_FunctionDerivative; vars: Expr_Array1OfNamedUnknown;
              values: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_FunctionDerivative.hxx".}
proc Copy*(this: Expr_FunctionDerivative): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Copy", header: "Expr_FunctionDerivative.hxx".}
proc Derivative*(this: Expr_FunctionDerivative; `var`: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralFunction] {.noSideEffect, importcpp: "Derivative",
                           header: "Expr_FunctionDerivative.hxx".}
proc Derivative*(this: Expr_FunctionDerivative; `var`: handle[Expr_NamedUnknown];
                deg: Standard_Integer): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Derivative", header: "Expr_FunctionDerivative.hxx".}
proc IsIdentical*(this: Expr_FunctionDerivative;
                 `func`: handle[Expr_GeneralFunction]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_FunctionDerivative.hxx".}
proc IsLinearOnVariable*(this: Expr_FunctionDerivative; index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsLinearOnVariable",
    header: "Expr_FunctionDerivative.hxx".}
proc Function*(this: Expr_FunctionDerivative): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Function", header: "Expr_FunctionDerivative.hxx".}
proc Degree*(this: Expr_FunctionDerivative): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Expr_FunctionDerivative.hxx".}
proc DerivVariable*(this: Expr_FunctionDerivative): handle[Expr_NamedUnknown] {.
    noSideEffect, importcpp: "DerivVariable", header: "Expr_FunctionDerivative.hxx".}
proc GetStringName*(this: Expr_FunctionDerivative): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetStringName", header: "Expr_FunctionDerivative.hxx".}
proc Expression*(this: Expr_FunctionDerivative): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Expression", header: "Expr_FunctionDerivative.hxx".}
proc UpdateExpression*(this: var Expr_FunctionDerivative) {.
    importcpp: "UpdateExpression", header: "Expr_FunctionDerivative.hxx".}
type
  Expr_FunctionDerivativebase_type* = Expr_GeneralFunction

proc get_type_name*(): cstring {.importcpp: "Expr_FunctionDerivative::get_type_name(@)",
                              header: "Expr_FunctionDerivative.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_FunctionDerivative::get_type_descriptor(@)",
    header: "Expr_FunctionDerivative.hxx".}
proc DynamicType*(this: Expr_FunctionDerivative): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Expr_FunctionDerivative.hxx".}