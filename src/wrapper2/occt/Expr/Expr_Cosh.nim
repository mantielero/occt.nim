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
discard "forward decl of Expr_Cosh"
discard "forward decl of Expr_Cosh"
type
  HandleExprCosh* = Handle[ExprCosh]
  ExprCosh* {.importcpp: "Expr_Cosh", header: "Expr_Cosh.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## the
                                                                                              ## Cosh
                                                                                              ## of
                                                                                              ## <exp>


proc constructExprCosh*(exp: Handle[ExprGeneralExpression]): ExprCosh {.constructor,
    importcpp: "Expr_Cosh(@)", header: "Expr_Cosh.hxx".}
proc shallowSimplified*(this: ExprCosh): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Cosh.hxx".}
proc copy*(this: ExprCosh): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Cosh.hxx".}
proc isIdentical*(this: ExprCosh; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Cosh.hxx".}
proc isLinear*(this: ExprCosh): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Cosh.hxx".}
proc derivative*(this: ExprCosh; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Cosh.hxx".}
proc evaluate*(this: ExprCosh; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Cosh.hxx".}
proc string*(this: ExprCosh): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Cosh.hxx".}
type
  ExprCoshbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Cosh::get_type_name(@)",
                            header: "Expr_Cosh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Cosh::get_type_descriptor(@)", header: "Expr_Cosh.hxx".}
proc dynamicType*(this: ExprCosh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Cosh.hxx".}

