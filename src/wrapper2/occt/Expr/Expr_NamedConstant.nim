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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_NamedConstant"
discard "forward decl of Expr_NamedConstant"
type
  HandleExprNamedConstant* = Handle[ExprNamedConstant]

## ! Describes any numeric constant known by a special name
## ! (as PI, e,...).

type
  ExprNamedConstant* {.importcpp: "Expr_NamedConstant",
                      header: "Expr_NamedConstant.hxx", bycopy.} = object of ExprNamedExpression ##
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


proc constructExprNamedConstant*(name: TCollectionAsciiString; value: StandardReal): ExprNamedConstant {.
    constructor, importcpp: "Expr_NamedConstant(@)",
    header: "Expr_NamedConstant.hxx".}
proc getValue*(this: ExprNamedConstant): StandardReal {.noSideEffect,
    importcpp: "GetValue", header: "Expr_NamedConstant.hxx".}
proc nbSubExpressions*(this: ExprNamedConstant): StandardInteger {.noSideEffect,
    importcpp: "NbSubExpressions", header: "Expr_NamedConstant.hxx".}
proc subExpression*(this: ExprNamedConstant; i: StandardInteger): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "SubExpression",
                            header: "Expr_NamedConstant.hxx".}
proc simplified*(this: ExprNamedConstant): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_NamedConstant.hxx".}
proc shallowSimplified*(this: ExprNamedConstant): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_NamedConstant.hxx".}
proc copy*(this: ExprNamedConstant): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_NamedConstant.hxx".}
proc containsUnknowns*(this: ExprNamedConstant): StandardBoolean {.noSideEffect,
    importcpp: "ContainsUnknowns", header: "Expr_NamedConstant.hxx".}
proc contains*(this: ExprNamedConstant; exp: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_NamedConstant.hxx".}
proc isLinear*(this: ExprNamedConstant): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_NamedConstant.hxx".}
proc derivative*(this: ExprNamedConstant; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_NamedConstant.hxx".}
proc nDerivative*(this: ExprNamedConstant; x: Handle[ExprNamedUnknown];
                 n: StandardInteger): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "NDerivative", header: "Expr_NamedConstant.hxx".}
proc replace*(this: var ExprNamedConstant; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_NamedConstant.hxx".}
proc evaluate*(this: ExprNamedConstant; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_NamedConstant.hxx".}
type
  ExprNamedConstantbaseType* = ExprNamedExpression

proc getTypeName*(): cstring {.importcpp: "Expr_NamedConstant::get_type_name(@)",
                            header: "Expr_NamedConstant.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_NamedConstant::get_type_descriptor(@)",
    header: "Expr_NamedConstant.hxx".}
proc dynamicType*(this: ExprNamedConstant): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_NamedConstant.hxx".}

