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
discard "forward decl of Expr_Product"
discard "forward decl of Expr_Product"
type
  HandleC1C1* = Handle[ExprProduct]
  ExprProduct* {.importcpp: "Expr_Product", header: "Expr_Product.hxx", bycopy.} = object of ExprPolyExpression ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## the
                                                                                                      ## product
                                                                                                      ## of
                                                                                                      ## all
                                                                                                      ## members
                                                                                                      ## of
                                                                                                      ## sequence
                                                                                                      ## <exps>


proc constructExprProduct*(exps: ExprSequenceOfGeneralExpression): ExprProduct {.
    constructor, importcpp: "Expr_Product(@)", header: "Expr_Product.hxx".}
proc constructExprProduct*(exp1: Handle[ExprGeneralExpression];
                          exp2: Handle[ExprGeneralExpression]): ExprProduct {.
    constructor, importcpp: "Expr_Product(@)", header: "Expr_Product.hxx".}
proc shallowSimplified*(this: ExprProduct): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Product.hxx".}
proc copy*(this: ExprProduct): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Product.hxx".}
proc isIdentical*(this: ExprProduct; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Product.hxx".}
proc isLinear*(this: ExprProduct): bool {.noSideEffect, importcpp: "IsLinear",
                                      header: "Expr_Product.hxx".}
proc derivative*(this: ExprProduct; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_Product.hxx".}
proc evaluate*(this: ExprProduct; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Product.hxx".}
proc string*(this: ExprProduct): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Product.hxx".}
type
  ExprProductbaseType* = ExprPolyExpression

proc getTypeName*(): cstring {.importcpp: "Expr_Product::get_type_name(@)",
                            header: "Expr_Product.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Product::get_type_descriptor(@)", header: "Expr_Product.hxx".}
proc dynamicType*(this: ExprProduct): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Product.hxx".}

























