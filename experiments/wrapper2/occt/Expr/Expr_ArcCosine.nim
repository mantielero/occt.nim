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
discard "forward decl of Expr_ArcCosine"
discard "forward decl of Expr_ArcCosine"
type
  HandleExprArcCosine* = Handle[ExprArcCosine]
  ExprArcCosine* {.importcpp: "Expr_ArcCosine", header: "Expr_ArcCosine.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## the
                                                                                                             ## Arccos
                                                                                                             ## of
                                                                                                             ## <exp>


proc constructExprArcCosine*(exp: Handle[ExprGeneralExpression]): ExprArcCosine {.
    constructor, importcpp: "Expr_ArcCosine(@)", header: "Expr_ArcCosine.hxx".}
proc shallowSimplified*(this: ExprArcCosine): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArcCosine.hxx".}
proc copy*(this: ExprArcCosine): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArcCosine.hxx".}
proc isIdentical*(this: ExprArcCosine; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArcCosine.hxx".}
proc isLinear*(this: ExprArcCosine): bool {.noSideEffect, importcpp: "IsLinear",
                                        header: "Expr_ArcCosine.hxx".}
proc derivative*(this: ExprArcCosine; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_ArcCosine.hxx".}
proc evaluate*(this: ExprArcCosine; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArcCosine.hxx".}
proc string*(this: ExprArcCosine): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArcCosine.hxx".}
type
  ExprArcCosinebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_ArcCosine::get_type_name(@)",
                            header: "Expr_ArcCosine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_ArcCosine::get_type_descriptor(@)",
    header: "Expr_ArcCosine.hxx".}
proc dynamicType*(this: ExprArcCosine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArcCosine.hxx".}
