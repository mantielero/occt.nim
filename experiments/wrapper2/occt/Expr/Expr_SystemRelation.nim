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
  HandleC1C1* = Handle[ExprSystemRelation]
  ExprSystemRelation* {.importcpp: "Expr_SystemRelation",
                       header: "Expr_SystemRelation.hxx", bycopy.} = object of ExprGeneralRelation ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## system
                                                                                            ## with
                                                                                            ## one
                                                                                            ## relation


proc constructExprSystemRelation*(relation: Handle[ExprGeneralRelation]): ExprSystemRelation {.
    constructor, importcpp: "Expr_SystemRelation(@)",
    header: "Expr_SystemRelation.hxx".}
proc add*(this: var ExprSystemRelation; relation: Handle[ExprGeneralRelation]) {.
    importcpp: "Add", header: "Expr_SystemRelation.hxx".}
proc remove*(this: var ExprSystemRelation; relation: Handle[ExprGeneralRelation]) {.
    importcpp: "Remove", header: "Expr_SystemRelation.hxx".}
proc isLinear*(this: ExprSystemRelation): bool {.noSideEffect, importcpp: "IsLinear",
    header: "Expr_SystemRelation.hxx".}
proc nbOfSubRelations*(this: ExprSystemRelation): cint {.noSideEffect,
    importcpp: "NbOfSubRelations", header: "Expr_SystemRelation.hxx".}
proc nbOfSingleRelations*(this: ExprSystemRelation): cint {.noSideEffect,
    importcpp: "NbOfSingleRelations", header: "Expr_SystemRelation.hxx".}
proc subRelation*(this: ExprSystemRelation; index: cint): Handle[ExprGeneralRelation] {.
    noSideEffect, importcpp: "SubRelation", header: "Expr_SystemRelation.hxx".}
proc isSatisfied*(this: ExprSystemRelation): bool {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_SystemRelation.hxx".}
proc simplified*(this: ExprSystemRelation): Handle[ExprGeneralRelation] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_SystemRelation.hxx".}
proc simplify*(this: var ExprSystemRelation) {.importcpp: "Simplify",
    header: "Expr_SystemRelation.hxx".}
proc copy*(this: ExprSystemRelation): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_SystemRelation.hxx".}
proc contains*(this: ExprSystemRelation; exp: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "Contains", header: "Expr_SystemRelation.hxx".}
proc replace*(this: var ExprSystemRelation; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_SystemRelation.hxx".}
proc string*(this: ExprSystemRelation): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_SystemRelation.hxx".}
type
  ExprSystemRelationbaseType* = ExprGeneralRelation

proc getTypeName*(): cstring {.importcpp: "Expr_SystemRelation::get_type_name(@)",
                            header: "Expr_SystemRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_SystemRelation::get_type_descriptor(@)",
    header: "Expr_SystemRelation.hxx".}
proc dynamicType*(this: ExprSystemRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_SystemRelation.hxx".}

























