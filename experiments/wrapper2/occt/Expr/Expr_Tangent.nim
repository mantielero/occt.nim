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
discard "forward decl of Expr_Tangent"
discard "forward decl of Expr_Tangent"
type
  HandleExprTangent* = Handle[ExprTangent]
  ExprTangent* {.importcpp: "Expr_Tangent", header: "Expr_Tangent.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## tangent
                                                                                                       ## of
                                                                                                       ## <exp>.


proc constructExprTangent*(exp: Handle[ExprGeneralExpression]): ExprTangent {.
    constructor, importcpp: "Expr_Tangent(@)", header: "Expr_Tangent.hxx".}
proc shallowSimplified*(this: ExprTangent): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Tangent.hxx".}
proc copy*(this: ExprTangent): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Tangent.hxx".}
proc isIdentical*(this: ExprTangent; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Tangent.hxx".}
proc isLinear*(this: ExprTangent): bool {.noSideEffect, importcpp: "IsLinear",
                                      header: "Expr_Tangent.hxx".}
proc derivative*(this: ExprTangent; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Tangent.hxx".}
proc evaluate*(this: ExprTangent; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Tangent.hxx".}
proc string*(this: ExprTangent): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Tangent.hxx".}
type
  ExprTangentbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Tangent::get_type_name(@)",
                            header: "Expr_Tangent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Tangent::get_type_descriptor(@)", header: "Expr_Tangent.hxx".}
proc dynamicType*(this: ExprTangent): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Tangent.hxx".}
