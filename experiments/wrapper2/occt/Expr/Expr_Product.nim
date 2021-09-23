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

import
  ../Standard/Standard, ../Standard/Standard_Type, Expr_PolyExpression,
  Expr_SequenceOfGeneralExpression, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Product"
discard "forward decl of Expr_Product"
type
  Handle_Expr_Product* = handle[Expr_Product]
  Expr_Product* {.importcpp: "Expr_Product", header: "Expr_Product.hxx", bycopy.} = object of Expr_PolyExpression ##
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


proc constructExpr_Product*(exps: Expr_SequenceOfGeneralExpression): Expr_Product {.
    constructor, importcpp: "Expr_Product(@)", header: "Expr_Product.hxx".}
proc constructExpr_Product*(exp1: handle[Expr_GeneralExpression];
                           exp2: handle[Expr_GeneralExpression]): Expr_Product {.
    constructor, importcpp: "Expr_Product(@)", header: "Expr_Product.hxx".}
proc ShallowSimplified*(this: Expr_Product): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Product.hxx".}
proc Copy*(this: Expr_Product): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Product.hxx".}
proc IsIdentical*(this: Expr_Product; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Product.hxx".}
proc IsLinear*(this: Expr_Product): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Product.hxx".}
proc Derivative*(this: Expr_Product; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_Product.hxx".}
proc Evaluate*(this: Expr_Product; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Product.hxx".}
proc String*(this: Expr_Product): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Product.hxx".}
type
  Expr_Productbase_type* = Expr_PolyExpression

proc get_type_name*(): cstring {.importcpp: "Expr_Product::get_type_name(@)",
                              header: "Expr_Product.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_Product::get_type_descriptor(@)", header: "Expr_Product.hxx".}
proc DynamicType*(this: Expr_Product): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Product.hxx".}