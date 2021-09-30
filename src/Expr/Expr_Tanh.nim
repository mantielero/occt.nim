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
discard "forward decl of Expr_Tanh"
discard "forward decl of Expr_Tanh"
type
  HandleC1C1* = Handle[ExprTanh]
  ExprTanh* {.importcpp: "Expr_Tanh", header: "Expr_Tanh.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## the
                                                                                              ## hyperbolic
                                                                                              ## tangent
                                                                                              ## of
                                                                                              ## <exp>.


proc constructExprTanh*(exp: Handle[ExprGeneralExpression]): ExprTanh {.constructor,
    importcpp: "Expr_Tanh(@)", header: "Expr_Tanh.hxx".}
proc shallowSimplified*(this: ExprTanh): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Tanh.hxx".}
proc copy*(this: ExprTanh): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Tanh.hxx".}
proc isIdentical*(this: ExprTanh; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Tanh.hxx".}
proc isLinear*(this: ExprTanh): bool {.noSideEffect, importcpp: "IsLinear",
                                   header: "Expr_Tanh.hxx".}
proc derivative*(this: ExprTanh; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Tanh.hxx".}
proc evaluate*(this: ExprTanh; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Tanh.hxx".}
proc string*(this: ExprTanh): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Tanh.hxx".}
type
  ExprTanhbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Tanh::get_type_name(@)",
                            header: "Expr_Tanh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Tanh::get_type_descriptor(@)", header: "Expr_Tanh.hxx".}
proc dynamicType*(this: ExprTanh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Tanh.hxx".}

























