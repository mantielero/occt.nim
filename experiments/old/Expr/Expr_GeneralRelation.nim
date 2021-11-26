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
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_GeneralRelation"
type
  HandleC1C1* = Handle[ExprGeneralRelation]

## ! Defines the general purposes of any relation between
## ! expressions.

type
  ExprGeneralRelation* {.importcpp: "Expr_GeneralRelation",
                        header: "Expr_GeneralRelation.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## current
                                                                                            ## status
                                                                                            ## of
                                                                                            ## the
                                                                                            ## relation


proc isSatisfied*(this: ExprGeneralRelation): bool {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_GeneralRelation.hxx".}
proc isLinear*(this: ExprGeneralRelation): bool {.noSideEffect,
    importcpp: "IsLinear", header: "Expr_GeneralRelation.hxx".}
proc simplified*(this: ExprGeneralRelation): Handle[ExprGeneralRelation] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_GeneralRelation.hxx".}
proc simplify*(this: var ExprGeneralRelation) {.importcpp: "Simplify",
    header: "Expr_GeneralRelation.hxx".}
proc copy*(this: ExprGeneralRelation): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_GeneralRelation.hxx".}
proc nbOfSubRelations*(this: ExprGeneralRelation): cint {.noSideEffect,
    importcpp: "NbOfSubRelations", header: "Expr_GeneralRelation.hxx".}
proc nbOfSingleRelations*(this: ExprGeneralRelation): cint {.noSideEffect,
    importcpp: "NbOfSingleRelations", header: "Expr_GeneralRelation.hxx".}
proc subRelation*(this: ExprGeneralRelation; index: cint): Handle[ExprGeneralRelation] {.
    noSideEffect, importcpp: "SubRelation", header: "Expr_GeneralRelation.hxx".}
proc contains*(this: ExprGeneralRelation; exp: Handle[ExprGeneralExpression]): bool {.
    noSideEffect, importcpp: "Contains", header: "Expr_GeneralRelation.hxx".}
proc replace*(this: var ExprGeneralRelation; `var`: Handle[ExprNamedUnknown];
             with: Handle[ExprGeneralExpression]) {.importcpp: "Replace",
    header: "Expr_GeneralRelation.hxx".}
proc string*(this: ExprGeneralRelation): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_GeneralRelation.hxx".}
type
  ExprGeneralRelationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Expr_GeneralRelation::get_type_name(@)",
                            header: "Expr_GeneralRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_GeneralRelation::get_type_descriptor(@)",
    header: "Expr_GeneralRelation.hxx".}
proc dynamicType*(this: ExprGeneralRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_GeneralRelation.hxx".}

























