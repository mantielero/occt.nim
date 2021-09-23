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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Expr_NamedExpression, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_NamedConstant"
discard "forward decl of Expr_NamedConstant"
type
  Handle_Expr_NamedConstant* = handle[Expr_NamedConstant]

## ! Describes any numeric constant known by a special name
## ! (as PI, e,...).

type
  Expr_NamedConstant* {.importcpp: "Expr_NamedConstant",
                       header: "Expr_NamedConstant.hxx", bycopy.} = object of Expr_NamedExpression ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## constant
                                                                                            ## value
                                                                                            ## of
                                                                                            ## name
                                                                                            ## <name>
                                                                                            ## and
                                                                                            ## value
                                                                                            ## <value>.


proc constructExpr_NamedConstant*(name: TCollection_AsciiString;
                                 value: Standard_Real): Expr_NamedConstant {.
    constructor, importcpp: "Expr_NamedConstant(@)",
    header: "Expr_NamedConstant.hxx".}
proc GetValue*(this: Expr_NamedConstant): Standard_Real {.noSideEffect,
    importcpp: "GetValue", header: "Expr_NamedConstant.hxx".}
proc NbSubExpressions*(this: Expr_NamedConstant): Standard_Integer {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_NamedConstant.hxx".}
proc SubExpression*(this: Expr_NamedConstant; I: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                             header: "Expr_NamedConstant.hxx".}
proc Simplified*(this: Expr_NamedConstant): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_NamedConstant.hxx".}
proc ShallowSimplified*(this: Expr_NamedConstant): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_NamedConstant.hxx".}
proc Copy*(this: Expr_NamedConstant): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NamedConstant.hxx".}
proc ContainsUnknowns*(this: Expr_NamedConstant): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_NamedConstant.hxx".}
proc Contains*(this: Expr_NamedConstant; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_NamedConstant.hxx".}
proc IsLinear*(this: Expr_NamedConstant): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_NamedConstant.hxx".}
proc Derivative*(this: Expr_NamedConstant; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_NamedConstant.hxx".}
proc NDerivative*(this: Expr_NamedConstant; X: handle[Expr_NamedUnknown];
                 N: Standard_Integer): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "NDerivative", header: "Expr_NamedConstant.hxx".}
proc Replace*(this: var Expr_NamedConstant; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_NamedConstant.hxx".}
proc Evaluate*(this: Expr_NamedConstant; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NamedConstant.hxx".}
type
  Expr_NamedConstantbase_type* = Expr_NamedExpression

proc get_type_name*(): cstring {.importcpp: "Expr_NamedConstant::get_type_name(@)",
                              header: "Expr_NamedConstant.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_NamedConstant::get_type_descriptor(@)",
    header: "Expr_NamedConstant.hxx".}
proc DynamicType*(this: Expr_NamedConstant): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedConstant.hxx".}