##  Created on: 1991-01-10
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
  ../TCollection/TCollection_AsciiString, Expr_GeneralExpression,
  ../Standard/Standard_Boolean

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedExpression"
discard "forward decl of Expr_NamedExpression"
type
  Handle_Expr_NamedExpression* = handle[Expr_NamedExpression]

## ! Describe an expression used  by its name (as constants
## ! or variables). A single reference is made to a
## ! NamedExpression in every Expression (i.e. a
## ! NamedExpression is shared).

type
  Expr_NamedExpression* {.importcpp: "Expr_NamedExpression",
                         header: "Expr_NamedExpression.hxx", bycopy.} = object of Expr_GeneralExpression


proc GetName*(this: Expr_NamedExpression): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetName", header: "Expr_NamedExpression.hxx".}
proc SetName*(this: var Expr_NamedExpression; name: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Expr_NamedExpression.hxx".}
proc IsShareable*(this: Expr_NamedExpression): Standard_Boolean {.noSideEffect,
    importcpp: "IsShareable", header: "Expr_NamedExpression.hxx".}
proc IsIdentical*(this: Expr_NamedExpression; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_NamedExpression.hxx".}
proc String*(this: Expr_NamedExpression): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_NamedExpression.hxx".}
type
  Expr_NamedExpressionbase_type* = Expr_GeneralExpression

proc get_type_name*(): cstring {.importcpp: "Expr_NamedExpression::get_type_name(@)",
                              header: "Expr_NamedExpression.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_NamedExpression::get_type_descriptor(@)",
    header: "Expr_NamedExpression.hxx".}
proc DynamicType*(this: Expr_NamedExpression): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedExpression.hxx".}