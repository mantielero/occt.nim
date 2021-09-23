##  Created on: 1992-07-20
##  Created by: Arnaud BOUZY
##  Copyright (c) 1992-1999 Matra Datavision
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
  ExprIntrp_SequenceOfNamedFunction, ExprIntrp_SequenceOfNamedExpression,
  ../Standard/Standard_Transient

discard "forward decl of Expr_NamedFunction"
discard "forward decl of Expr_NamedExpression"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_Generator"
discard "forward decl of ExprIntrp_Generator"
type
  Handle_ExprIntrp_Generator* = handle[ExprIntrp_Generator]

## ! Implements general services for interpretation of
## ! expressions.

type
  ExprIntrp_Generator* {.importcpp: "ExprIntrp_Generator",
                        header: "ExprIntrp_Generator.hxx", bycopy.} = object of Standard_Transient


proc Use*(this: var ExprIntrp_Generator; `func`: handle[Expr_NamedFunction]) {.
    importcpp: "Use", header: "ExprIntrp_Generator.hxx".}
proc Use*(this: var ExprIntrp_Generator; named: handle[Expr_NamedExpression]) {.
    importcpp: "Use", header: "ExprIntrp_Generator.hxx".}
proc GetNamed*(this: ExprIntrp_Generator): ExprIntrp_SequenceOfNamedExpression {.
    noSideEffect, importcpp: "GetNamed", header: "ExprIntrp_Generator.hxx".}
proc GetFunctions*(this: ExprIntrp_Generator): ExprIntrp_SequenceOfNamedFunction {.
    noSideEffect, importcpp: "GetFunctions", header: "ExprIntrp_Generator.hxx".}
proc GetNamed*(this: ExprIntrp_Generator; name: TCollection_AsciiString): handle[
    Expr_NamedExpression] {.noSideEffect, importcpp: "GetNamed",
                           header: "ExprIntrp_Generator.hxx".}
proc GetFunction*(this: ExprIntrp_Generator; name: TCollection_AsciiString): handle[
    Expr_NamedFunction] {.noSideEffect, importcpp: "GetFunction",
                         header: "ExprIntrp_Generator.hxx".}
type
  ExprIntrp_Generatorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ExprIntrp_Generator::get_type_name(@)",
                              header: "ExprIntrp_Generator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ExprIntrp_Generator::get_type_descriptor(@)",
    header: "ExprIntrp_Generator.hxx".}
proc DynamicType*(this: ExprIntrp_Generator): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_Generator.hxx".}