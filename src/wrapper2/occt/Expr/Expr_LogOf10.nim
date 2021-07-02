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

discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_LogOf10"
discard "forward decl of Expr_LogOf10"
type
  HandleExprLogOf10* = Handle[ExprLogOf10]
  ExprLogOf10* {.importcpp: "Expr_LogOf10", header: "Expr_LogOf10.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## base
                                                                                                       ## 10
                                                                                                       ## logarithm
                                                                                                       ## of
                                                                                                       ## <exp>


proc constructExprLogOf10*(exp: Handle[ExprGeneralExpression]): ExprLogOf10 {.
    constructor, importcpp: "Expr_LogOf10(@)", header: "Expr_LogOf10.hxx".}
proc shallowSimplified*(this: ExprLogOf10): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_LogOf10.hxx".}
proc copy*(this: ExprLogOf10): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_LogOf10.hxx".}
proc isIdentical*(this: ExprLogOf10; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_LogOf10.hxx".}
proc isLinear*(this: ExprLogOf10): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_LogOf10.hxx".}
proc derivative*(this: ExprLogOf10; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_LogOf10.hxx".}
proc evaluate*(this: ExprLogOf10; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_LogOf10.hxx".}
proc string*(this: ExprLogOf10): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_LogOf10.hxx".}
type
  ExprLogOf10baseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_LogOf10::get_type_name(@)",
                            header: "Expr_LogOf10.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_LogOf10::get_type_descriptor(@)", header: "Expr_LogOf10.hxx".}
proc dynamicType*(this: ExprLogOf10): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_LogOf10.hxx".}

