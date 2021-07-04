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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_UnaryExpression,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  Expr_Array1OfNamedUnknown, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Tanh"
discard "forward decl of Expr_Tanh"
type
  Handle_Expr_Tanh* = handle[Expr_Tanh]
  Expr_Tanh* {.importcpp: "Expr_Tanh", header: "Expr_Tanh.hxx", bycopy.} = object of Expr_UnaryExpression ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## the
                                                                                                ## hyperbolic
                                                                                                ## tangent
                                                                                                ## of
                                                                                                ## <exp>.


proc constructExpr_Tanh*(exp: handle[Expr_GeneralExpression]): Expr_Tanh {.
    constructor, importcpp: "Expr_Tanh(@)", header: "Expr_Tanh.hxx".}
proc ShallowSimplified*(this: Expr_Tanh): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Tanh.hxx".}
proc Copy*(this: Expr_Tanh): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Tanh.hxx".}
proc IsIdentical*(this: Expr_Tanh; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Tanh.hxx".}
proc IsLinear*(this: Expr_Tanh): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Tanh.hxx".}
proc Derivative*(this: Expr_Tanh; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_Tanh.hxx".}
proc Evaluate*(this: Expr_Tanh; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Tanh.hxx".}
proc String*(this: Expr_Tanh): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Tanh.hxx".}
type
  Expr_Tanhbase_type* = Expr_UnaryExpression

proc get_type_name*(): cstring {.importcpp: "Expr_Tanh::get_type_name(@)",
                              header: "Expr_Tanh.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_Tanh::get_type_descriptor(@)", header: "Expr_Tanh.hxx".}
proc DynamicType*(this: Expr_Tanh): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Tanh.hxx".}