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
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_Equal"
discard "forward decl of Expr_Equal"
type
  HandleExprEqual* = Handle[ExprEqual]
  ExprEqual* {.importcpp: "Expr_Equal", header: "Expr_Equal.hxx", bycopy.} = object of ExprSingleRelation ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## the
                                                                                                ## relation
                                                                                                ## <exp1>
                                                                                                ## =
                                                                                                ## <exp2>.


proc constructExprEqual*(exp1: Handle[ExprGeneralExpression];
                        exp2: Handle[ExprGeneralExpression]): ExprEqual {.
    constructor, importcpp: "Expr_Equal(@)", header: "Expr_Equal.hxx".}
proc isSatisfied*(this: ExprEqual): StandardBoolean {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_Equal.hxx".}
proc simplified*(this: ExprEqual): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Simplified", header: "Expr_Equal.hxx".}
proc simplify*(this: var ExprEqual) {.importcpp: "Simplify", header: "Expr_Equal.hxx".}
proc copy*(this: ExprEqual): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_Equal.hxx".}
proc string*(this: ExprEqual): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_Equal.hxx".}
type
  ExprEqualbaseType* = ExprSingleRelation

proc getTypeName*(): cstring {.importcpp: "Expr_Equal::get_type_name(@)",
                            header: "Expr_Equal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_Equal::get_type_descriptor(@)", header: "Expr_Equal.hxx".}
proc dynamicType*(this: ExprEqual): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_Equal.hxx".}

