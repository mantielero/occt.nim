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
discard "forward decl of Expr_Division"
discard "forward decl of Expr_Division"
type
  HandleC1C1* = Handle[ExprDivision]
  ExprDivision* {.importcpp: "Expr_Division", header: "Expr_Division.hxx", bycopy.} = object of ExprBinaryExpression ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## the
                                                                                                           ## division
                                                                                                           ## <exp1>/<exp2>


proc constructExprDivision*(exp1: Handle[ExprGeneralExpression];
                           exp2: Handle[ExprGeneralExpression]): ExprDivision {.
    constructor, importcpp: "Expr_Division(@)", header: "Expr_Division.hxx".}
proc shallowSimplified*(this: ExprDivision): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Division.hxx".}
proc copy*(this: ExprDivision): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Division.hxx".}
proc isIdentical*(this: ExprDivision; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Division.hxx".}
proc isLinear*(this: ExprDivision): bool {.noSideEffect, importcpp: "IsLinear",
                                       header: "Expr_Division.hxx".}
proc derivative*(this: ExprDivision; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Division.hxx".}
proc evaluate*(this: ExprDivision; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Division.hxx".}
proc string*(this: ExprDivision): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Division.hxx".}
type
  ExprDivisionbaseType* = ExprBinaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Division::get_type_name(@)",
                            header: "Expr_Division.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Division::get_type_descriptor(@)",
    header: "Expr_Division.hxx".}
proc dynamicType*(this: ExprDivision): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Division.hxx".}

























