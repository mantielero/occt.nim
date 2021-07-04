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
  ../Standard/Standard, ../Standard/Standard_Type, Expr_SequenceOfGeneralRelation,
  Expr_GeneralRelation, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_SystemRelation"
discard "forward decl of Expr_SystemRelation"
type
  Handle_Expr_SystemRelation* = handle[Expr_SystemRelation]
  Expr_SystemRelation* {.importcpp: "Expr_SystemRelation",
                        header: "Expr_SystemRelation.hxx", bycopy.} = object of Expr_GeneralRelation ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## system
                                                                                              ## with
                                                                                              ## one
                                                                                              ## relation


proc constructExpr_SystemRelation*(relation: handle[Expr_GeneralRelation]): Expr_SystemRelation {.
    constructor, importcpp: "Expr_SystemRelation(@)",
    header: "Expr_SystemRelation.hxx".}
proc Add*(this: var Expr_SystemRelation; relation: handle[Expr_GeneralRelation]) {.
    importcpp: "Add", header: "Expr_SystemRelation.hxx".}
proc Remove*(this: var Expr_SystemRelation; relation: handle[Expr_GeneralRelation]) {.
    importcpp: "Remove", header: "Expr_SystemRelation.hxx".}
proc IsLinear*(this: Expr_SystemRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_SystemRelation.hxx".}
proc NbOfSubRelations*(this: Expr_SystemRelation): Standard_Integer {.noSideEffect,
    importcpp: "NbOfSubRelations", header: "Expr_SystemRelation.hxx".}
proc NbOfSingleRelations*(this: Expr_SystemRelation): Standard_Integer {.
    noSideEffect, importcpp: "NbOfSingleRelations",
    header: "Expr_SystemRelation.hxx".}
proc SubRelation*(this: Expr_SystemRelation; index: Standard_Integer): handle[
    Expr_GeneralRelation] {.noSideEffect, importcpp: "SubRelation",
                           header: "Expr_SystemRelation.hxx".}
proc IsSatisfied*(this: Expr_SystemRelation): Standard_Boolean {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_SystemRelation.hxx".}
proc Simplified*(this: Expr_SystemRelation): handle[Expr_GeneralRelation] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_SystemRelation.hxx".}
proc Simplify*(this: var Expr_SystemRelation) {.importcpp: "Simplify",
    header: "Expr_SystemRelation.hxx".}
proc Copy*(this: Expr_SystemRelation): handle[Expr_GeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_SystemRelation.hxx".}
proc Contains*(this: Expr_SystemRelation; exp: handle[Expr_GeneralExpression]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Expr_SystemRelation.hxx".}
proc Replace*(this: var Expr_SystemRelation; `var`: handle[Expr_NamedUnknown];
             with: handle[Expr_GeneralExpression]) {.importcpp: "Replace",
    header: "Expr_SystemRelation.hxx".}
proc String*(this: Expr_SystemRelation): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_SystemRelation.hxx".}
type
  Expr_SystemRelationbase_type* = Expr_GeneralRelation

proc get_type_name*(): cstring {.importcpp: "Expr_SystemRelation::get_type_name(@)",
                              header: "Expr_SystemRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_SystemRelation::get_type_descriptor(@)",
    header: "Expr_SystemRelation.hxx".}
proc DynamicType*(this: Expr_SystemRelation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_SystemRelation.hxx".}