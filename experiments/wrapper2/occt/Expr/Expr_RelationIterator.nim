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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Expr_Array1OfSingleRelation,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_SingleRelation"
type
  Expr_RelationIterator* {.importcpp: "Expr_RelationIterator",
                          header: "Expr_RelationIterator.hxx", bycopy.} = object


proc constructExpr_RelationIterator*(rel: handle[Expr_GeneralRelation]): Expr_RelationIterator {.
    constructor, importcpp: "Expr_RelationIterator(@)",
    header: "Expr_RelationIterator.hxx".}
proc More*(this: Expr_RelationIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Expr_RelationIterator.hxx".}
proc Next*(this: var Expr_RelationIterator) {.importcpp: "Next",
    header: "Expr_RelationIterator.hxx".}
proc Value*(this: Expr_RelationIterator): handle[Expr_SingleRelation] {.
    noSideEffect, importcpp: "Value", header: "Expr_RelationIterator.hxx".}