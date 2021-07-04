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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_BinaryExpression,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, Expr_Array1OfNamedUnknown,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Difference"
discard "forward decl of Expr_Difference"
type
  Handle_Expr_Difference* = handle[Expr_Difference]
  Expr_Difference* {.importcpp: "Expr_Difference", header: "Expr_Difference.hxx",
                    bycopy.} = object of Expr_BinaryExpression ## ! Creates the difference <exp1> - <exp2>.


proc constructExpr_Difference*(exp1: handle[Expr_GeneralExpression];
                              exp2: handle[Expr_GeneralExpression]): Expr_Difference {.
    constructor, importcpp: "Expr_Difference(@)", header: "Expr_Difference.hxx".}
proc ShallowSimplified*(this: Expr_Difference): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_Difference.hxx".}
proc Copy*(this: Expr_Difference): handle[Expr_GeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Difference.hxx".}
proc IsIdentical*(this: Expr_Difference; Other: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_Difference.hxx".}
proc IsLinear*(this: Expr_Difference): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_Difference.hxx".}
proc Derivative*(this: Expr_Difference; X: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralExpression] {.noSideEffect, importcpp: "Derivative",
                             header: "Expr_Difference.hxx".}
proc NDerivative*(this: Expr_Difference; X: handle[Expr_NamedUnknown];
                 N: Standard_Integer): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "NDerivative", header: "Expr_Difference.hxx".}
proc Evaluate*(this: Expr_Difference; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_Difference.hxx".}
proc String*(this: Expr_Difference): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Difference.hxx".}
type
  Expr_Differencebase_type* = Expr_BinaryExpression

proc get_type_name*(): cstring {.importcpp: "Expr_Difference::get_type_name(@)",
                              header: "Expr_Difference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_Difference::get_type_descriptor(@)",
    header: "Expr_Difference.hxx".}
proc DynamicType*(this: Expr_Difference): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Difference.hxx".}