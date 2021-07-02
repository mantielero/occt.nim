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
discard "forward decl of Expr_Cosine"
discard "forward decl of Expr_Cosine"
type
  HandleExprCosine* = Handle[ExprCosine]
  ExprCosine* {.importcpp: "Expr_Cosine", header: "Expr_Cosine.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## the
                                                                                                    ## cosine
                                                                                                    ## of
                                                                                                    ## Exp


proc constructExprCosine*(exp: Handle[ExprGeneralExpression]): ExprCosine {.
    constructor, importcpp: "Expr_Cosine(@)", header: "Expr_Cosine.hxx".}
proc shallowSimplified*(this: ExprCosine): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Cosine.hxx".}
proc copy*(this: ExprCosine): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Cosine.hxx".}
proc isIdentical*(this: ExprCosine; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Cosine.hxx".}
proc isLinear*(this: ExprCosine): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Cosine.hxx".}
proc derivative*(this: ExprCosine; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Cosine.hxx".}
proc evaluate*(this: ExprCosine; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Cosine.hxx".}
proc string*(this: ExprCosine): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Cosine.hxx".}
type
  ExprCosinebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Cosine::get_type_name(@)",
                            header: "Expr_Cosine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Cosine::get_type_descriptor(@)", header: "Expr_Cosine.hxx".}
proc dynamicType*(this: ExprCosine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Cosine.hxx".}

