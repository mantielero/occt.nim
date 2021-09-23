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
discard "forward decl of Expr_LogOf10"
discard "forward decl of Expr_LogOf10"
type
  Handle_Expr_LogOf10* = handle[Expr_LogOf10]
  Expr_LogOf10* {.importcpp: "Expr_LogOf10", header: "Expr_LogOf10.hxx", bycopy.} = object of Expr_UnaryExpression ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## the
                                                                                                         ## base
                                                                                                         ## 10
                                                                                                         ## logarithm
                                                                                                         ## of
                                                                                                         ## <exp>


proc constructExpr_LogOf10*(exp: handle[Expr_GeneralExpression]): Expr_LogOf10 {.
    constructor, importcpp: "Expr_LogOf10(@)", header: "Expr_LogOf10.hxx".}
proc ShallowSimplified*(this: Expr_LogOf10): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_LogOf10.hxx".}
proc Copy*(this: Expr_LogOf10): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_LogOf10.hxx".}
proc IsIdentical*(this: Expr_LogOf10; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_LogOf10.hxx".}
proc IsLinear*(this: Expr_LogOf10): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_LogOf10.hxx".}
proc Derivative*(this: Expr_LogOf10; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_LogOf10.hxx".}
proc Evaluate*(this: Expr_LogOf10; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_LogOf10.hxx".}
proc String*(this: Expr_LogOf10): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_LogOf10.hxx".}
type
  Expr_LogOf10base_type* = Expr_UnaryExpression

proc get_type_name*(): cstring {.importcpp: "Expr_LogOf10::get_type_name(@)",
                              header: "Expr_LogOf10.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_LogOf10::get_type_descriptor(@)", header: "Expr_LogOf10.hxx".}
proc DynamicType*(this: Expr_LogOf10): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_LogOf10.hxx".}