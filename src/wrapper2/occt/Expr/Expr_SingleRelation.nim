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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_SingleRelation"
discard "forward decl of Expr_SingleRelation"
type
  HandleExprSingleRelation* = Handle[ExprSingleRelation]
  ExprSingleRelation* {.importcpp: "Expr_SingleRelation",
                       header: "Expr_SingleRelation.hxx", bycopy.} = object of ExprGeneralRelation ##
                                                                                            ## !
                                                                                            ## Defines
                                                                                            ## the
                                                                                            ## first
                                                                                            ## member
                                                                                            ## of
                                                                                            ## the
                                                                                            ## relation


proc setFirstMember*(this: var ExprSingleRelation;
                    exp: Handle[ExprGeneralExpression]) {.
    importcpp: "SetFirstMember", header: "Expr_SingleRelation.hxx".}
proc setSecondMember*(this: var ExprSingleRelation;
                     exp: Handle[ExprGeneralExpression]) {.
    importcpp: "SetSecondMember", header: "Expr_SingleRelation.hxx".}
proc firstMember*(this: ExprSingleRelation): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "FirstMember", header: "Expr_SingleRelation.hxx".}
proc secondMember*(this: ExprSingleRelation): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "SecondMember", header: "Expr_SingleRelation.hxx".}
proc isLinear*(this: ExprSingleRelation): StandardBoolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_SingleRelation.hxx".}
proc nbOfSubRelations*(this: ExprSingleRelation): StandardInteger {.noSideEffect,
    importcpp: "NbOfSubRelations", header: "Expr_SingleRelation.hxx".}
proc nbOfSingleRelations*(this: ExprSingleRelation): StandardInteger {.noSideEffect,
    importcpp: "NbOfSingleRelations", header: "Expr_SingleRelation.hxx".}
proc subRelation*(this: ExprSingleRelation; index: StandardInteger): Handle[
    ExprGeneralRelation] {.noSideEffect, importcpp: "SubRelation",
                          header: "Expr_SingleRelation.hxx".}
proc contains*(this: ExprSingleRelation; exp: Handle[ExprGeneralExpression]): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_SingleRelation.hxx".}
proc replace*(this: var ExprSingleRelation; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_SingleRelation.hxx".}
type
  ExprSingleRelationbaseType* = ExprGeneralRelation

proc getTypeName*(): cstring {.importcpp: "Expr_SingleRelation::get_type_name(@)",
                            header: "Expr_SingleRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_SingleRelation::get_type_descriptor(@)",
    header: "Expr_SingleRelation.hxx".}
proc dynamicType*(this: ExprSingleRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_SingleRelation.hxx".}

