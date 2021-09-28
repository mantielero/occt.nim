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
discard "forward decl of Expr_ArgTanh"
discard "forward decl of Expr_ArgTanh"
type
  HandleC1C1* = Handle[ExprArgTanh]
  ExprArgTanh* {.importcpp: "Expr_ArgTanh", header: "Expr_ArgTanh.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## Argtanh
                                                                                                       ## of
                                                                                                       ## <exp>.


proc constructExprArgTanh*(exp: Handle[ExprGeneralExpression]): ExprArgTanh {.
    constructor, importcpp: "Expr_ArgTanh(@)", header: "Expr_ArgTanh.hxx".}
proc shallowSimplified*(this: ExprArgTanh): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArgTanh.hxx".}
proc copy*(this: ExprArgTanh): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArgTanh.hxx".}
proc isIdentical*(this: ExprArgTanh; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArgTanh.hxx".}
proc isLinear*(this: ExprArgTanh): bool {.noSideEffect, importcpp: "IsLinear",
                                      header: "Expr_ArgTanh.hxx".}
proc derivative*(this: ExprArgTanh; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_ArgTanh.hxx".}
proc evaluate*(this: ExprArgTanh; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArgTanh.hxx".}
proc string*(this: ExprArgTanh): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArgTanh.hxx".}
type
  ExprArgTanhbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_ArgTanh::get_type_name(@)",
                            header: "Expr_ArgTanh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_ArgTanh::get_type_descriptor(@)", header: "Expr_ArgTanh.hxx".}
proc dynamicType*(this: ExprArgTanh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArgTanh.hxx".}

























