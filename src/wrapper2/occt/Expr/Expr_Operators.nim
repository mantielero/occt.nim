##  Created on: 1991-09-17
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
  Expr_GeneralExpression, Expr_NumericValue, Expr_Sum, Expr_UnaryMinus,
  Expr_Difference, Expr_Product, Expr_Division

proc `+`*(x: handle[Expr_GeneralExpression]; y: handle[Expr_GeneralExpression]): handle[
    Expr_Sum] {.importcpp: "(# + #)", header: "Expr_Operators.hxx".}
proc `+`*(x: Standard_Real; y: handle[Expr_GeneralExpression]): handle[Expr_Sum] {.
    importcpp: "(# + #)", header: "Expr_Operators.hxx".}
proc `+`*(x: handle[Expr_GeneralExpression]; y: Standard_Real): handle[Expr_Sum] {.
    importcpp: "(# + #)", header: "Expr_Operators.hxx".}
proc `-`*(x: handle[Expr_GeneralExpression]; y: handle[Expr_GeneralExpression]): handle[
    Expr_Difference] {.importcpp: "(# - #)", header: "Expr_Operators.hxx".}
proc `-`*(x: Standard_Real; y: handle[Expr_GeneralExpression]): handle[
    Expr_Difference] {.importcpp: "(# - #)", header: "Expr_Operators.hxx".}
proc `-`*(x: handle[Expr_GeneralExpression]; y: Standard_Real): handle[
    Expr_Difference] {.importcpp: "(# - #)", header: "Expr_Operators.hxx".}
proc `-`*(x: handle[Expr_GeneralExpression]): handle[Expr_UnaryMinus] {.
    importcpp: "(- #)", header: "Expr_Operators.hxx".}
proc `*`*(x: handle[Expr_GeneralExpression]; y: handle[Expr_GeneralExpression]): handle[
    Expr_Product] {.importcpp: "(# * #)", header: "Expr_Operators.hxx".}
proc `*`*(x: Standard_Real; y: handle[Expr_GeneralExpression]): handle[Expr_Product] {.
    importcpp: "(# * #)", header: "Expr_Operators.hxx".}
proc `*`*(x: handle[Expr_GeneralExpression]; y: Standard_Real): handle[Expr_Product] {.
    importcpp: "(# * #)", header: "Expr_Operators.hxx".}
proc `/`*(x: handle[Expr_GeneralExpression]; y: handle[Expr_GeneralExpression]): handle[
    Expr_Division] {.importcpp: "(# / #)", header: "Expr_Operators.hxx".}
proc `/`*(x: Standard_Real; y: handle[Expr_GeneralExpression]): handle[Expr_Division] {.
    importcpp: "(# / #)", header: "Expr_Operators.hxx".}
proc `/`*(x: handle[Expr_GeneralExpression]; y: Standard_Real): handle[Expr_Division] {.
    importcpp: "(# / #)", header: "Expr_Operators.hxx".}