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
discard "forward decl of Expr_Absolute"
discard "forward decl of Expr_Absolute"
type
  HandleExprAbsolute* = Handle[ExprAbsolute]
  ExprAbsolute* {.importcpp: "Expr_Absolute", header: "Expr_Absolute.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## the
                                                                                                          ## Abs
                                                                                                          ## of
                                                                                                          ## <exp>


proc constructExprAbsolute*(exp: Handle[ExprGeneralExpression]): ExprAbsolute {.
    constructor, importcpp: "Expr_Absolute(@)", header: "Expr_Absolute.hxx".}
proc shallowSimplified*(this: ExprAbsolute): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Absolute.hxx".}
proc copy*(this: ExprAbsolute): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Absolute.hxx".}
proc isIdentical*(this: ExprAbsolute; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Absolute.hxx".}
proc isLinear*(this: ExprAbsolute): bool {.noSideEffect, importcpp: "IsLinear",
                                       header: "Expr_Absolute.hxx".}
proc derivative*(this: ExprAbsolute; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Absolute.hxx".}
proc evaluate*(this: ExprAbsolute; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Absolute.hxx".}
proc string*(this: ExprAbsolute): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Absolute.hxx".}
type
  ExprAbsolutebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Absolute::get_type_name(@)",
                            header: "Expr_Absolute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Absolute::get_type_descriptor(@)",
    header: "Expr_Absolute.hxx".}
proc dynamicType*(this: ExprAbsolute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Absolute.hxx".}
