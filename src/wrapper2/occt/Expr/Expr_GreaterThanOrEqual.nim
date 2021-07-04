##  Created on: 1991-01-30
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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_SingleRelation,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GreaterThanOrEqual"
discard "forward decl of Expr_GreaterThanOrEqual"
type
  Handle_Expr_GreaterThanOrEqual* = handle[Expr_GreaterThanOrEqual]
  Expr_GreaterThanOrEqual* {.importcpp: "Expr_GreaterThanOrEqual",
                            header: "Expr_GreaterThanOrEqual.hxx", bycopy.} = object of Expr_SingleRelation ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## the
                                                                                                     ## relation
                                                                                                     ## <exp1>
                                                                                                     ## >=
                                                                                                     ## <exp2>.


proc constructExpr_GreaterThanOrEqual*(exp1: handle[Expr_GeneralExpression];
                                      exp2: handle[Expr_GeneralExpression]): Expr_GreaterThanOrEqual {.
    constructor, importcpp: "Expr_GreaterThanOrEqual(@)",
    header: "Expr_GreaterThanOrEqual.hxx".}
proc IsSatisfied*(this: Expr_GreaterThanOrEqual): Standard_Boolean {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_GreaterThanOrEqual.hxx".}
proc Simplified*(this: Expr_GreaterThanOrEqual): handle[Expr_GeneralRelation] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_GreaterThanOrEqual.hxx".}
proc Simplify*(this: var Expr_GreaterThanOrEqual) {.importcpp: "Simplify",
    header: "Expr_GreaterThanOrEqual.hxx".}
proc Copy*(this: Expr_GreaterThanOrEqual): handle[Expr_GeneralRelation] {.
    noSideEffect, importcpp: "Copy", header: "Expr_GreaterThanOrEqual.hxx".}
proc String*(this: Expr_GreaterThanOrEqual): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_GreaterThanOrEqual.hxx".}
type
  Expr_GreaterThanOrEqualbase_type* = Expr_SingleRelation

proc get_type_name*(): cstring {.importcpp: "Expr_GreaterThanOrEqual::get_type_name(@)",
                              header: "Expr_GreaterThanOrEqual.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_GreaterThanOrEqual::get_type_descriptor(@)",
    header: "Expr_GreaterThanOrEqual.hxx".}
proc DynamicType*(this: Expr_GreaterThanOrEqual): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Expr_GreaterThanOrEqual.hxx".}