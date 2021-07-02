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
discard "forward decl of Expr_Sine"
discard "forward decl of Expr_Sine"
type
  HandleExprSine* = Handle[ExprSine]
  ExprSine* {.importcpp: "Expr_Sine", header: "Expr_Sine.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## the
                                                                                              ## sine
                                                                                              ## of
                                                                                              ## <exp>.


proc constructExprSine*(exp: Handle[ExprGeneralExpression]): ExprSine {.constructor,
    importcpp: "Expr_Sine(@)", header: "Expr_Sine.hxx".}
proc shallowSimplified*(this: ExprSine): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Sine.hxx".}
proc copy*(this: ExprSine): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Sine.hxx".}
proc isIdentical*(this: ExprSine; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Sine.hxx".}
proc isLinear*(this: ExprSine): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Sine.hxx".}
proc derivative*(this: ExprSine; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Sine.hxx".}
proc evaluate*(this: ExprSine; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Sine.hxx".}
proc string*(this: ExprSine): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Sine.hxx".}
type
  ExprSinebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Sine::get_type_name(@)",
                            header: "Expr_Sine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Sine::get_type_descriptor(@)", header: "Expr_Sine.hxx".}
proc dynamicType*(this: ExprSine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Sine.hxx".}

