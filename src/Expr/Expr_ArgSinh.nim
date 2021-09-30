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
discard "forward decl of Expr_ArgSinh"
discard "forward decl of Expr_ArgSinh"
type
  HandleC1C1* = Handle[ExprArgSinh]
  ExprArgSinh* {.importcpp: "Expr_ArgSinh", header: "Expr_ArgSinh.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## ArgSinh
                                                                                                       ## of
                                                                                                       ## <exp>.


proc constructExprArgSinh*(exp: Handle[ExprGeneralExpression]): ExprArgSinh {.
    constructor, importcpp: "Expr_ArgSinh(@)", header: "Expr_ArgSinh.hxx".}
proc shallowSimplified*(this: ExprArgSinh): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArgSinh.hxx".}
proc copy*(this: ExprArgSinh): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArgSinh.hxx".}
proc isIdentical*(this: ExprArgSinh; other: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArgSinh.hxx".}
proc isLinear*(this: ExprArgSinh): bool {.noSideEffect, importcpp: "IsLinear",
                                      header: "Expr_ArgSinh.hxx".}
proc derivative*(this: ExprArgSinh; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_ArgSinh.hxx".}
proc evaluate*(this: ExprArgSinh; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): cfloat {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArgSinh.hxx".}
proc string*(this: ExprArgSinh): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArgSinh.hxx".}
type
  ExprArgSinhbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_ArgSinh::get_type_name(@)",
                            header: "Expr_ArgSinh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_ArgSinh::get_type_descriptor(@)", header: "Expr_ArgSinh.hxx".}
proc dynamicType*(this: ExprArgSinh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArgSinh.hxx".}

























