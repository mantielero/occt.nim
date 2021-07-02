##  Created on: 1991-01-30
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
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_LessThan"
discard "forward decl of Expr_LessThan"
type
  HandleExprLessThan* = Handle[ExprLessThan]
  ExprLessThan* {.importcpp: "Expr_LessThan", header: "Expr_LessThan.hxx", bycopy.} = object of ExprSingleRelation ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## the
                                                                                                         ## relation
                                                                                                         ## <exp1>
                                                                                                         ## <
                                                                                                         ## <exp2>.


proc constructExprLessThan*(exp1: Handle[ExprGeneralExpression];
                           exp2: Handle[ExprGeneralExpression]): ExprLessThan {.
    constructor, importcpp: "Expr_LessThan(@)", header: "Expr_LessThan.hxx".}
proc isSatisfied*(this: ExprLessThan): StandardBoolean {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_LessThan.hxx".}
proc simplified*(this: ExprLessThan): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Simplified", header: "Expr_LessThan.hxx".}
proc simplify*(this: var ExprLessThan) {.importcpp: "Simplify",
                                     header: "Expr_LessThan.hxx".}
proc copy*(this: ExprLessThan): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_LessThan.hxx".}
proc string*(this: ExprLessThan): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_LessThan.hxx".}
type
  ExprLessThanbaseType* = ExprSingleRelation

proc getTypeName*(): cstring {.importcpp: "Expr_LessThan::get_type_name(@)",
                            header: "Expr_LessThan.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_LessThan::get_type_descriptor(@)",
    header: "Expr_LessThan.hxx".}
proc dynamicType*(this: ExprLessThan): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_LessThan.hxx".}

