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

discard "forward decl of Expr_NamedFunction"
discard "forward decl of Expr_NamedExpression"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_Generator"
discard "forward decl of ExprIntrp_Generator"
type
  HandleExprIntrpGenerator* = Handle[ExprIntrpGenerator]

## ! Implements general services for interpretation of
## ! expressions.

type
  ExprIntrpGenerator* {.importcpp: "ExprIntrp_Generator",
                       header: "ExprIntrp_Generator.hxx", bycopy.} = object of StandardTransient


proc use*(this: var ExprIntrpGenerator; `func`: Handle[ExprNamedFunction]) {.
    importcpp: "Use", header: "ExprIntrp_Generator.hxx".}
proc use*(this: var ExprIntrpGenerator; named: Handle[ExprNamedExpression]) {.
    importcpp: "Use", header: "ExprIntrp_Generator.hxx".}
proc getNamed*(this: ExprIntrpGenerator): ExprIntrpSequenceOfNamedExpression {.
    noSideEffect, importcpp: "GetNamed", header: "ExprIntrp_Generator.hxx".}
proc getFunctions*(this: ExprIntrpGenerator): ExprIntrpSequenceOfNamedFunction {.
    noSideEffect, importcpp: "GetFunctions", header: "ExprIntrp_Generator.hxx".}
proc getNamed*(this: ExprIntrpGenerator; name: TCollectionAsciiString): Handle[
    ExprNamedExpression] {.noSideEffect, importcpp: "GetNamed",
                          header: "ExprIntrp_Generator.hxx".}
proc getFunction*(this: ExprIntrpGenerator; name: TCollectionAsciiString): Handle[
    ExprNamedFunction] {.noSideEffect, importcpp: "GetFunction",
                        header: "ExprIntrp_Generator.hxx".}
type
  ExprIntrpGeneratorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ExprIntrp_Generator::get_type_name(@)",
                            header: "ExprIntrp_Generator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ExprIntrp_Generator::get_type_descriptor(@)",
    header: "ExprIntrp_Generator.hxx".}
proc dynamicType*(this: ExprIntrpGenerator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_Generator.hxx".}
