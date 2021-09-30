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

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NumericValue"
discard "forward decl of Expr_NamedExpression"
discard "forward decl of Expr_NamedConstant"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_UnaryExpression"
discard "forward decl of Expr_Absolute"
discard "forward decl of Expr_ArcCosine"
discard "forward decl of Expr_ArcSine"
discard "forward decl of Expr_ArcTangent"
discard "forward decl of Expr_ArgCosh"
discard "forward decl of Expr_ArgSinh"
discard "forward decl of Expr_ArgTanh"
discard "forward decl of Expr_Cosh"
discard "forward decl of Expr_Cosine"
discard "forward decl of Expr_Exponential"
discard "forward decl of Expr_LogOf10"
discard "forward decl of Expr_LogOfe"
discard "forward decl of Expr_Sign"
discard "forward decl of Expr_Sine"
discard "forward decl of Expr_Sinh"
discard "forward decl of Expr_Square"
discard "forward decl of Expr_SquareRoot"
discard "forward decl of Expr_Tangent"
discard "forward decl of Expr_Tanh"
discard "forward decl of Expr_UnaryFunction"
discard "forward decl of Expr_UnaryMinus"
discard "forward decl of Expr_BinaryExpression"
discard "forward decl of Expr_BinaryFunction"
discard "forward decl of Expr_Difference"
discard "forward decl of Expr_Division"
discard "forward decl of Expr_Exponentiate"
discard "forward decl of Expr_PolyExpression"
discard "forward decl of Expr_PolyFunction"
discard "forward decl of Expr_Product"
discard "forward decl of Expr_Sum"
discard "forward decl of Expr_UnknownIterator"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_SingleRelation"
discard "forward decl of Expr_Different"
discard "forward decl of Expr_Equal"
discard "forward decl of Expr_GreaterThan"
discard "forward decl of Expr_GreaterThanOrEqual"
discard "forward decl of Expr_LessThan"
discard "forward decl of Expr_LessThanOrEqual"
discard "forward decl of Expr_SystemRelation"
discard "forward decl of Expr_RelationIterator"
discard "forward decl of Expr_RUIterator"
discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_NamedFunction"
discard "forward decl of Expr_FunctionDerivative"
type
  Expr* {.importcpp: "Expr", header: "Expr.hxx", bycopy.} = object


proc copyShare*(exp: Handle[ExprGeneralExpression]): Handle[ExprGeneralExpression] {.
    importcpp: "Expr::CopyShare(@)", header: "Expr.hxx".}
proc nbOfFreeVariables*(exp: Handle[ExprGeneralExpression]): cint {.
    importcpp: "Expr::NbOfFreeVariables(@)", header: "Expr.hxx".}
proc nbOfFreeVariables*(exp: Handle[ExprGeneralRelation]): cint {.
    importcpp: "Expr::NbOfFreeVariables(@)", header: "Expr.hxx".}
proc sign*(val: cfloat): cfloat {.importcpp: "Expr::Sign(@)", header: "Expr.hxx".}

























