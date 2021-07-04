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
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  Expr_Array1OfNamedUnknown, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Sum"
discard "forward decl of Expr_Sum"
type
  Handle_Expr_Sum* = handle[Expr_Sum]
  Expr_Sum* {.importcpp: "Expr_Sum", header: "Expr_Sum.hxx", bycopy.} = object of Expr_PolyExpression ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## the
                                                                                            ## sum
                                                                                            ## of
                                                                                            ## all
                                                                                            ## the
                                                                                            ## members
                                                                                            ## of
                                                                                            ## sequence
                                                                                            ## <exps>.


proc constructExpr_Sum*(exps: Expr_SequenceOfGeneralExpression): Expr_Sum {.
    constructor, importcpp: "Expr_Sum(@)", header: "Expr_Sum.hxx".}
proc constructExpr_Sum*(exp1: handle[Expr_GeneralExpression];
                       exp2: handle[Expr_GeneralExpression]): Expr_Sum {.
    constructor, importcpp: "Expr_Sum(@)", header: "Expr_Sum.hxx".}
proc ShallowSimplified*(this: Expr_Sum): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Sum.hxx".}
proc Copy*(this: Expr_Sum): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Sum.hxx".}
proc IsIdentical*(this: Expr_Sum; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Sum.hxx".}
proc IsLinear*(this: Expr_Sum): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Sum.hxx".}
proc Derivative*(this: Expr_Sum; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_Sum.hxx".}
proc NDerivative*(this: Expr_Sum; X: handle[Expr_NamedUnknown]; N: Standard_Integer): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "NDerivative",
                             header: "Expr_Sum.hxx".}
proc Evaluate*(this: Expr_Sum; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Sum.hxx".}
proc String*(this: Expr_Sum): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Sum.hxx".}
type
  Expr_Sumbase_type* = Expr_PolyExpression

proc get_type_name*(): cstring {.importcpp: "Expr_Sum::get_type_name(@)",
                              header: "Expr_Sum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_Sum::get_type_descriptor(@)", header: "Expr_Sum.hxx".}
proc DynamicType*(this: Expr_Sum): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Sum.hxx".}