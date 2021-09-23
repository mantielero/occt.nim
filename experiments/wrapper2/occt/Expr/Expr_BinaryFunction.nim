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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_BinaryExpression,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  Expr_Array1OfNamedUnknown, ../TColStd/TColStd_Array1OfReal

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
  Handle_Expr_BinaryFunction* = handle[Expr_BinaryFunction]

## ! Defines the use of a binary function in an expression
## ! with given arguments.

type
  Expr_BinaryFunction* {.importcpp: "Expr_BinaryFunction",
                        header: "Expr_BinaryFunction.hxx", bycopy.} = object of Expr_BinaryExpression ##
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


proc constructExpr_BinaryFunction*(`func`: handle[Expr_GeneralFunction];
                                  exp1: handle[Expr_GeneralExpression];
                                  exp2: handle[Expr_GeneralExpression]): Expr_BinaryFunction {.
    constructor, importcpp: "Expr_BinaryFunction(@)",
    header: "Expr_BinaryFunction.hxx".}
proc Function*(this: Expr_BinaryFunction): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Function", header: "Expr_BinaryFunction.hxx".}
proc ShallowSimplified*(this: Expr_BinaryFunction): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_BinaryFunction.hxx".}
proc Copy*(this: Expr_BinaryFunction): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Copy", header: "Expr_BinaryFunction.hxx".}
proc IsIdentical*(this: Expr_BinaryFunction; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_BinaryFunction.hxx".}
proc IsLinear*(this: Expr_BinaryFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_BinaryFunction.hxx".}
proc Derivative*(this: Expr_BinaryFunction; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_BinaryFunction.hxx".}
proc Evaluate*(this: Expr_BinaryFunction; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_BinaryFunction.hxx".}
proc String*(this: Expr_BinaryFunction): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_BinaryFunction.hxx".}
type
  Expr_BinaryFunctionbase_type* = Expr_BinaryExpression

proc get_type_name*(): cstring {.importcpp: "Expr_BinaryFunction::get_type_name(@)",
                              header: "Expr_BinaryFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_BinaryFunction::get_type_descriptor(@)",
    header: "Expr_BinaryFunction.hxx".}
proc DynamicType*(this: Expr_BinaryFunction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_BinaryFunction.hxx".}