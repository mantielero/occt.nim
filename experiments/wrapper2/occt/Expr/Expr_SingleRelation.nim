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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_GeneralRelation,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of Expr_SingleRelation"
discard "forward decl of Expr_SingleRelation"
type
  Handle_Expr_SingleRelation* = handle[Expr_SingleRelation]
  Expr_SingleRelation* {.importcpp: "Expr_SingleRelation",
                        header: "Expr_SingleRelation.hxx", bycopy.} = object of Expr_GeneralRelation ##
                                                                                              ## !
                                                                                              ## Defines
                                                                                              ## the
                                                                                              ## first
                                                                                              ## member
                                                                                              ## of
                                                                                              ## the
                                                                                              ## relation


proc SetFirstMember*(this: var Expr_SingleRelation;
                    exp: handle[Expr_GeneralExpression]) {.
    importcpp: "SetFirstMember", header: "Expr_SingleRelation.hxx".}
proc SetSecondMember*(this: var Expr_SingleRelation;
                     exp: handle[Expr_GeneralExpression]) {.
    importcpp: "SetSecondMember", header: "Expr_SingleRelation.hxx".}
proc FirstMember*(this: Expr_SingleRelation): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "FirstMember", header: "Expr_SingleRelation.hxx".}
proc SecondMember*(this: Expr_SingleRelation): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "SecondMember", header: "Expr_SingleRelation.hxx".}
proc IsLinear*(this: Expr_SingleRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_SingleRelation.hxx".}
proc NbOfSubRelations*(this: Expr_SingleRelation): Standard_Integer {.noSideEffect,
    importcpp: "NbOfSubRelations", header: "Expr_SingleRelation.hxx".}
proc NbOfSingleRelations*(this: Expr_SingleRelation): Standard_Integer {.
    noSideEffect, importcpp: "NbOfSingleRelations",
    header: "Expr_SingleRelation.hxx".}
proc SubRelation*(this: Expr_SingleRelation; index: Standard_Integer): handle[
    Expr_GeneralRelation] {.noSideEffect, importcpp: "SubRelation",
                           header: "Expr_SingleRelation.hxx".}
proc Contains*(this: Expr_SingleRelation; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_SingleRelation.hxx".}
proc Replace*(this: var Expr_SingleRelation; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_SingleRelation.hxx".}
type
  Expr_SingleRelationbase_type* = Expr_GeneralRelation

proc get_type_name*(): cstring {.importcpp: "Expr_SingleRelation::get_type_name(@)",
                              header: "Expr_SingleRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_SingleRelation::get_type_descriptor(@)",
    header: "Expr_SingleRelation.hxx".}
proc DynamicType*(this: Expr_SingleRelation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_SingleRelation.hxx".}