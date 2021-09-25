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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_GenFct"
discard "forward decl of ExprIntrp_GenFct"
type
  HandleExprIntrpGenFct* = Handle[ExprIntrpGenFct]

## ! Implements an interpreter for defining functions.
## ! All its functionnalities can be found in class
## ! GenExp.

type
  ExprIntrpGenFct* {.importcpp: "ExprIntrp_GenFct", header: "ExprIntrp_GenFct.hxx",
                    bycopy.} = object of ExprIntrpGenerator


proc create*(): Handle[ExprIntrpGenFct] {.importcpp: "ExprIntrp_GenFct::Create(@)",
                                       header: "ExprIntrp_GenFct.hxx".}
proc process*(this: var ExprIntrpGenFct; str: TCollectionAsciiString) {.
    importcpp: "Process", header: "ExprIntrp_GenFct.hxx".}
proc isDone*(this: ExprIntrpGenFct): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "ExprIntrp_GenFct.hxx".}
type
  ExprIntrpGenFctbaseType* = ExprIntrpGenerator

proc getTypeName*(): cstring {.importcpp: "ExprIntrp_GenFct::get_type_name(@)",
                            header: "ExprIntrp_GenFct.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ExprIntrp_GenFct::get_type_descriptor(@)",
    header: "ExprIntrp_GenFct.hxx".}
proc dynamicType*(this: ExprIntrpGenFct): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_GenFct.hxx".}
