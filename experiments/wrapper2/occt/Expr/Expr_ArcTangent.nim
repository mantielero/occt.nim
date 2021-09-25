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
discard "forward decl of Expr_ArcTangent"
discard "forward decl of Expr_ArcTangent"
type
  HandleExprArcTangent* = Handle[ExprArcTangent]
  ExprArcTangent* {.importcpp: "Expr_ArcTangent", header: "Expr_ArcTangent.hxx",
                   bycopy.} = object of ExprUnaryExpression ## ! Creates the Arctan of <exp>.


proc constructExprArcTangent*(exp: Handle[ExprGeneralExpression]): ExprArcTangent {.
    constructor, importcpp: "Expr_ArcTangent(@)", header: "Expr_ArcTangent.hxx".}
proc shallowSimplified*(this: ExprArcTangent): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArcTangent.hxx".}
proc copy*(this: ExprArcTangent): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArcTangent.hxx".}
proc isIdentical*(this: ExprArcTangent; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArcTangent.hxx".}
proc isLinear*(this: ExprArcTangent): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_ArcTangent.hxx".}
proc derivative*(this: ExprArcTangent; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_ArcTangent.hxx".}
proc evaluate*(this: ExprArcTangent; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArcTangent.hxx".}
proc string*(this: ExprArcTangent): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArcTangent.hxx".}
type
  ExprArcTangentbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_ArcTangent::get_type_name(@)",
                            header: "Expr_ArcTangent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_ArcTangent::get_type_descriptor(@)",
    header: "Expr_ArcTangent.hxx".}
proc dynamicType*(this: ExprArcTangent): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArcTangent.hxx".}
