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
discard "forward decl of Expr_LogOfe"
discard "forward decl of Expr_LogOfe"
type
  HandleExprLogOfe* = Handle[ExprLogOfe]
  ExprLogOfe* {.importcpp: "Expr_LogOfe", header: "Expr_LogOfe.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## the
                                                                                                    ## natural
                                                                                                    ## logarithm
                                                                                                    ## of
                                                                                                    ## <exp>


proc constructExprLogOfe*(exp: Handle[ExprGeneralExpression]): ExprLogOfe {.
    constructor, importcpp: "Expr_LogOfe(@)", header: "Expr_LogOfe.hxx".}
proc shallowSimplified*(this: ExprLogOfe): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_LogOfe.hxx".}
proc copy*(this: ExprLogOfe): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_LogOfe.hxx".}
proc isIdentical*(this: ExprLogOfe; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_LogOfe.hxx".}
proc isLinear*(this: ExprLogOfe): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_LogOfe.hxx".}
proc derivative*(this: ExprLogOfe; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_LogOfe.hxx".}
proc evaluate*(this: ExprLogOfe; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_LogOfe.hxx".}
proc string*(this: ExprLogOfe): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_LogOfe.hxx".}
type
  ExprLogOfebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_LogOfe::get_type_name(@)",
                            header: "Expr_LogOfe.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_LogOfe::get_type_descriptor(@)", header: "Expr_LogOfe.hxx".}
proc dynamicType*(this: ExprLogOfe): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_LogOfe.hxx".}

