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
discard "forward decl of Expr_ArcSine"
discard "forward decl of Expr_ArcSine"
type
  HandleExprArcSine* = Handle[ExprArcSine]
  ExprArcSine* {.importcpp: "Expr_ArcSine", header: "Expr_ArcSine.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## Arcsin
                                                                                                       ## of
                                                                                                       ## <exp>


proc constructExprArcSine*(exp: Handle[ExprGeneralExpression]): ExprArcSine {.
    constructor, importcpp: "Expr_ArcSine(@)", header: "Expr_ArcSine.hxx".}
proc shallowSimplified*(this: ExprArcSine): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArcSine.hxx".}
proc copy*(this: ExprArcSine): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArcSine.hxx".}
proc isIdentical*(this: ExprArcSine; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArcSine.hxx".}
proc isLinear*(this: ExprArcSine): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_ArcSine.hxx".}
proc derivative*(this: ExprArcSine; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_ArcSine.hxx".}
proc evaluate*(this: ExprArcSine; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArcSine.hxx".}
proc string*(this: ExprArcSine): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArcSine.hxx".}
type
  ExprArcSinebaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_ArcSine::get_type_name(@)",
                            header: "Expr_ArcSine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_ArcSine::get_type_descriptor(@)", header: "Expr_ArcSine.hxx".}
proc dynamicType*(this: ExprArcSine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArcSine.hxx".}

