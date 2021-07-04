##  Created on: 1992-08-18
##  Created by: Arnaud BOUZY
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ExprIntrp_Generator

discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_GenRel"
discard "forward decl of ExprIntrp_GenRel"
type
  Handle_ExprIntrp_GenRel* = handle[ExprIntrp_GenRel]

## ! Implements an interpreter for equations or system
## ! of equations made of expressions of package Expr.

type
  ExprIntrp_GenRel* {.importcpp: "ExprIntrp_GenRel",
                     header: "ExprIntrp_GenRel.hxx", bycopy.} = object of ExprIntrp_Generator ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## an
                                                                                       ## empty
                                                                                       ## generator


proc Create*(): handle[ExprIntrp_GenRel] {.importcpp: "ExprIntrp_GenRel::Create(@)",
                                        header: "ExprIntrp_GenRel.hxx".}
proc Process*(this: var ExprIntrp_GenRel; str: TCollection_AsciiString) {.
    importcpp: "Process", header: "ExprIntrp_GenRel.hxx".}
proc IsDone*(this: ExprIntrp_GenRel): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ExprIntrp_GenRel.hxx".}
proc Relation*(this: ExprIntrp_GenRel): handle[Expr_GeneralRelation] {.noSideEffect,
    importcpp: "Relation", header: "ExprIntrp_GenRel.hxx".}
type
  ExprIntrp_GenRelbase_type* = ExprIntrp_Generator

proc get_type_name*(): cstring {.importcpp: "ExprIntrp_GenRel::get_type_name(@)",
                              header: "ExprIntrp_GenRel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ExprIntrp_GenRel::get_type_descriptor(@)",
    header: "ExprIntrp_GenRel.hxx".}
proc DynamicType*(this: ExprIntrp_GenRel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_GenRel.hxx".}