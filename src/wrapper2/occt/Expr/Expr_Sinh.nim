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
discard "forward decl of Expr_Sinh"
discard "forward decl of Expr_Sinh"
type
  HandleExprSinh* = Handle[ExprSinh]
  ExprSinh* {.importcpp: "Expr_Sinh", header: "Expr_Sinh.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## the
                                                                                              ## sinh
                                                                                              ## of
                                                                                              ## <exp>.


proc constructExprSinh*(exp: Handle[ExprGeneralExpression]): ExprSinh {.constructor,
    importcpp: "Expr_Sinh(@)", header: "Expr_Sinh.hxx".}
proc shallowSimplified*(this: ExprSinh): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Sinh.hxx".}
proc copy*(this: ExprSinh): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Sinh.hxx".}
proc isIdentical*(this: ExprSinh; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Sinh.hxx".}
proc isLinear*(this: ExprSinh): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Sinh.hxx".}
proc derivative*(this: ExprSinh; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Sinh.hxx".}
proc evaluate*(this: ExprSinh; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Sinh.hxx".}
proc string*(this: ExprSinh): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Sinh.hxx".}
type
  ExprSinhbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Sinh::get_type_name(@)",
                            header: "Expr_Sinh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Sinh::get_type_descriptor(@)", header: "Expr_Sinh.hxx".}
proc dynamicType*(this: ExprSinh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Sinh.hxx".}

