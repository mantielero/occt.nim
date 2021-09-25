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
discard "forward decl of Expr_Sign"
discard "forward decl of Expr_Sign"
type
  HandleExprSign* = Handle[ExprSign]
  ExprSign* {.importcpp: "Expr_Sign", header: "Expr_Sign.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## the
                                                                                              ## sign
                                                                                              ## of
                                                                                              ## <exp>.


proc constructExprSign*(exp: Handle[ExprGeneralExpression]): ExprSign {.constructor,
    importcpp: "Expr_Sign(@)", header: "Expr_Sign.hxx".}
proc shallowSimplified*(this: ExprSign): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Sign.hxx".}
proc copy*(this: ExprSign): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Sign.hxx".}
proc isIdentical*(this: ExprSign; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Sign.hxx".}
proc isLinear*(this: ExprSign): bool {.noSideEffect, importcpp: "IsLinear",
                                   header: "Expr_Sign.hxx".}
proc derivative*(this: ExprSign; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Sign.hxx".}
proc evaluate*(this: ExprSign; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Sign.hxx".}
proc string*(this: ExprSign): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Sign.hxx".}
type
  ExprSignbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Sign::get_type_name(@)",
                            header: "Expr_Sign.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Sign::get_type_descriptor(@)", header: "Expr_Sign.hxx".}
proc dynamicType*(this: ExprSign): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Sign.hxx".}
