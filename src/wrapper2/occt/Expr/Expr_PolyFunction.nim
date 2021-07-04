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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_PolyExpression,
  Expr_Array1OfGeneralExpression, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

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
  Handle_Expr_PolyFunction* = handle[Expr_PolyFunction]

## ! Defines the use of an n-ary function in an expression
## ! with given arguments.

type
  Expr_PolyFunction* {.importcpp: "Expr_PolyFunction",
                      header: "Expr_PolyFunction.hxx", bycopy.} = object of Expr_PolyExpression ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## <me>
                                                                                         ## as
                                                                                         ## <func>(<exps_1>,<exps_2>,...,<exps_n>)


proc constructExpr_PolyFunction*(`func`: handle[Expr_GeneralFunction];
                                exps: Expr_Array1OfGeneralExpression): Expr_PolyFunction {.
    constructor, importcpp: "Expr_PolyFunction(@)", header: "Expr_PolyFunction.hxx".}
proc Function*(this: Expr_PolyFunction): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Function", header: "Expr_PolyFunction.hxx".}
proc ShallowSimplified*(this: Expr_PolyFunction): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_PolyFunction.hxx".}
proc Copy*(this: Expr_PolyFunction): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_PolyFunction.hxx".}
proc IsIdentical*(this: Expr_PolyFunction; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_PolyFunction.hxx".}
proc IsLinear*(this: Expr_PolyFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_PolyFunction.hxx".}
proc Derivative*(this: Expr_PolyFunction; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_PolyFunction.hxx".}
proc Evaluate*(this: Expr_PolyFunction; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_PolyFunction.hxx".}
proc String*(this: Expr_PolyFunction): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_PolyFunction.hxx".}
type
  Expr_PolyFunctionbase_type* = Expr_PolyExpression

proc get_type_name*(): cstring {.importcpp: "Expr_PolyFunction::get_type_name(@)",
                              header: "Expr_PolyFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_PolyFunction::get_type_descriptor(@)",
    header: "Expr_PolyFunction.hxx".}
proc DynamicType*(this: Expr_PolyFunction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_PolyFunction.hxx".}