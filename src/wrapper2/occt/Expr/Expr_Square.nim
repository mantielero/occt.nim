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
discard "forward decl of Expr_Square"
discard "forward decl of Expr_Square"
type
  HandleExprSquare* = Handle[ExprSquare]
  ExprSquare* {.importcpp: "Expr_Square", header: "Expr_Square.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## the
                                                                                                    ## square
                                                                                                    ## of
                                                                                                    ## <exp>.


proc constructExprSquare*(exp: Handle[ExprGeneralExpression]): ExprSquare {.
    constructor, importcpp: "Expr_Square(@)", header: "Expr_Square.hxx".}
proc shallowSimplified*(this: ExprSquare): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Square.hxx".}
proc copy*(this: ExprSquare): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Square.hxx".}
proc isIdentical*(this: ExprSquare; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Square.hxx".}
proc isLinear*(this: ExprSquare): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Square.hxx".}
proc derivative*(this: ExprSquare; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Square.hxx".}
proc evaluate*(this: ExprSquare; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Square.hxx".}
proc string*(this: ExprSquare): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Square.hxx".}
type
  ExprSquarebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Square::get_type_name(@)",
                            header: "Expr_Square.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Square::get_type_descriptor(@)", header: "Expr_Square.hxx".}
proc dynamicType*(this: ExprSquare): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Square.hxx".}

