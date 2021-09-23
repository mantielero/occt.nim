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
discard "forward decl of Expr_ArgCosh"
discard "forward decl of Expr_ArgCosh"
type
  Handle_Expr_ArgCosh* = handle[Expr_ArgCosh]
  Expr_ArgCosh* {.importcpp: "Expr_ArgCosh", header: "Expr_ArgCosh.hxx", bycopy.} = object of Expr_UnaryExpression ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## the
                                                                                                         ## ArgCosh
                                                                                                         ## of
                                                                                                         ## <exp>


proc constructExpr_ArgCosh*(exp: handle[Expr_GeneralExpression]): Expr_ArgCosh {.
    constructor, importcpp: "Expr_ArgCosh(@)", header: "Expr_ArgCosh.hxx".}
proc ShallowSimplified*(this: Expr_ArgCosh): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArgCosh.hxx".}
proc Copy*(this: Expr_ArgCosh): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArgCosh.hxx".}
proc IsIdentical*(this: Expr_ArgCosh; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArgCosh.hxx".}
proc IsLinear*(this: Expr_ArgCosh): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_ArgCosh.hxx".}
proc Derivative*(this: Expr_ArgCosh; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_ArgCosh.hxx".}
proc Evaluate*(this: Expr_ArgCosh; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArgCosh.hxx".}
proc String*(this: Expr_ArgCosh): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArgCosh.hxx".}
type
  Expr_ArgCoshbase_type* = Expr_UnaryExpression

proc get_type_name*(): cstring {.importcpp: "Expr_ArgCosh::get_type_name(@)",
                              header: "Expr_ArgCosh.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_ArgCosh::get_type_descriptor(@)", header: "Expr_ArgCosh.hxx".}
proc DynamicType*(this: Expr_ArgCosh): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArgCosh.hxx".}