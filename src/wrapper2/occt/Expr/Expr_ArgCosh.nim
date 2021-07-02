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
discard "forward decl of Expr_ArgCosh"
discard "forward decl of Expr_ArgCosh"
type
  HandleExprArgCosh* = Handle[ExprArgCosh]
  ExprArgCosh* {.importcpp: "Expr_ArgCosh", header: "Expr_ArgCosh.hxx", bycopy.} = object of ExprUnaryExpression ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## ArgCosh
                                                                                                       ## of
                                                                                                       ## <exp>


proc constructExprArgCosh*(exp: Handle[ExprGeneralExpression]): ExprArgCosh {.
    constructor, importcpp: "Expr_ArgCosh(@)", header: "Expr_ArgCosh.hxx".}
proc shallowSimplified*(this: ExprArgCosh): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "ShallowSimplified", header: "Expr_ArgCosh.hxx".}
proc copy*(this: ExprArgCosh): Handle[ExprGeneralExpression] {.noSideEffect,
    importcpp: "Copy", header: "Expr_ArgCosh.hxx".}
proc isIdentical*(this: ExprArgCosh; other: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_ArgCosh.hxx".}
proc isLinear*(this: ExprArgCosh): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_ArgCosh.hxx".}
proc derivative*(this: ExprArgCosh; x: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralExpression] {.noSideEffect, importcpp: "Derivative",
                            header: "Expr_ArgCosh.hxx".}
proc evaluate*(this: ExprArgCosh; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): StandardReal {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_ArgCosh.hxx".}
proc string*(this: ExprArgCosh): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_ArgCosh.hxx".}
type
  ExprArgCoshbaseType* = ExprUnaryExpression

proc getTypeName*(): cstring {.importcpp: "Expr_ArgCosh::get_type_name(@)",
                            header: "Expr_ArgCosh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_ArgCosh::get_type_descriptor(@)", header: "Expr_ArgCosh.hxx".}
proc dynamicType*(this: ExprArgCosh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_ArgCosh.hxx".}

