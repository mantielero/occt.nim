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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedExpression"
discard "forward decl of Expr_NamedExpression"
type
  HandleExprNamedExpression* = Handle[ExprNamedExpression]

## ! Describe an expression used  by its name (as constants
## ! or variables). A single reference is made to a
## ! NamedExpression in every Expression (i.e. a
## ! NamedExpression is shared).

type
  ExprNamedExpression* {.importcpp: "Expr_NamedExpression",
                        header: "Expr_NamedExpression.hxx", bycopy.} = object of ExprGeneralExpression


proc getName*(this: ExprNamedExpression): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetName", header: "Expr_NamedExpression.hxx".}
proc setName*(this: var ExprNamedExpression; name: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Expr_NamedExpression.hxx".}
proc isShareable*(this: ExprNamedExpression): bool {.noSideEffect,
    importcpp: "IsShareable", header: "Expr_NamedExpression.hxx".}
proc isIdentical*(this: ExprNamedExpression; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_NamedExpression.hxx".}
proc string*(this: ExprNamedExpression): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_NamedExpression.hxx".}
type
  ExprNamedExpressionbaseType* = ExprGeneralExpression

proc getTypeName*(): cstring {.importcpp: "Expr_NamedExpression::get_type_name(@)",
                            header: "Expr_NamedExpression.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_NamedExpression::get_type_descriptor(@)",
    header: "Expr_NamedExpression.hxx".}
proc dynamicType*(this: ExprNamedExpression): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedExpression.hxx".}
