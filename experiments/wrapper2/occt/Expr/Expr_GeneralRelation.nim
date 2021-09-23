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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_GeneralRelation"
type
  Handle_Expr_GeneralRelation* = handle[Expr_GeneralRelation]

## ! Defines the general purposes of any relation between
## ! expressions.

type
  Expr_GeneralRelation* {.importcpp: "Expr_GeneralRelation",
                         header: "Expr_GeneralRelation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## current
                                                                                              ## status
                                                                                              ## of
                                                                                              ## the
                                                                                              ## relation


proc IsSatisfied*(this: Expr_GeneralRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_GeneralRelation.hxx".}
proc IsLinear*(this: Expr_GeneralRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_GeneralRelation.hxx".}
proc Simplified*(this: Expr_GeneralRelation): handle[Expr_GeneralRelation] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_GeneralRelation.hxx".}
proc Simplify*(this: var Expr_GeneralRelation) {.importcpp: "Simplify",
    header: "Expr_GeneralRelation.hxx".}
proc Copy*(this: Expr_GeneralRelation): handle[Expr_GeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_GeneralRelation.hxx".}
proc NbOfSubRelations*(this: Expr_GeneralRelation): Standard_Integer {.noSideEffect,
    importcpp: "NbOfSubRelations", header: "Expr_GeneralRelation.hxx".}
proc NbOfSingleRelations*(this: Expr_GeneralRelation): Standard_Integer {.
    noSideEffect, importcpp: "NbOfSingleRelations",
    header: "Expr_GeneralRelation.hxx".}
proc SubRelation*(this: Expr_GeneralRelation; index: Standard_Integer): handle[
    Expr_GeneralRelation] {.noSideEffect, importcpp: "SubRelation",
                           header: "Expr_GeneralRelation.hxx".}
proc Contains*(this: Expr_GeneralRelation; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_GeneralRelation.hxx".}
proc Replace*(this: var Expr_GeneralRelation; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_GeneralRelation.hxx".}
proc String*(this: Expr_GeneralRelation): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_GeneralRelation.hxx".}
type
  Expr_GeneralRelationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Expr_GeneralRelation::get_type_name(@)",
                              header: "Expr_GeneralRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_GeneralRelation::get_type_descriptor(@)",
    header: "Expr_GeneralRelation.hxx".}
proc DynamicType*(this: Expr_GeneralRelation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_GeneralRelation.hxx".}