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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_SingleRelation"
type
  ExprRelationIterator* {.importcpp: "Expr_RelationIterator",
                         header: "Expr_RelationIterator.hxx", bycopy.} = object


proc constructExprRelationIterator*(rel: Handle[ExprGeneralRelation]): ExprRelationIterator {.
    constructor, importcpp: "Expr_RelationIterator(@)",
    header: "Expr_RelationIterator.hxx".}
proc more*(this: ExprRelationIterator): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "Expr_RelationIterator.hxx".}
proc next*(this: var ExprRelationIterator) {.importcpp: "Next",
    header: "Expr_RelationIterator.hxx".}
proc value*(this: ExprRelationIterator): Handle[ExprSingleRelation] {.noSideEffect,
    importcpp: "Value", header: "Expr_RelationIterator.hxx".}

