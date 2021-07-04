##  Created on: 1991-02-06
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
  ../Standard/Standard_Handle, Expr_MapOfNamedUnknown,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of Expr_NamedUnknown"
type
  Expr_RUIterator* {.importcpp: "Expr_RUIterator", header: "Expr_RUIterator.hxx",
                    bycopy.} = object ## ! Creates an iterator on every NamedUnknown contained in
                                   ## ! <rel>.


proc constructExpr_RUIterator*(rel: handle[Expr_GeneralRelation]): Expr_RUIterator {.
    constructor, importcpp: "Expr_RUIterator(@)", header: "Expr_RUIterator.hxx".}
proc More*(this: Expr_RUIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Expr_RUIterator.hxx".}
proc Next*(this: var Expr_RUIterator) {.importcpp: "Next",
                                    header: "Expr_RUIterator.hxx".}
proc Value*(this: Expr_RUIterator): handle[Expr_NamedUnknown] {.noSideEffect,
    importcpp: "Value", header: "Expr_RUIterator.hxx".}