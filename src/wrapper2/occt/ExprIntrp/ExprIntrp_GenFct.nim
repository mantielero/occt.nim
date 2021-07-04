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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_GenFct"
discard "forward decl of ExprIntrp_GenFct"
type
  Handle_ExprIntrp_GenFct* = handle[ExprIntrp_GenFct]

## ! Implements an interpreter for defining functions.
## ! All its functionnalities can be found in class
## ! GenExp.

type
  ExprIntrp_GenFct* {.importcpp: "ExprIntrp_GenFct",
                     header: "ExprIntrp_GenFct.hxx", bycopy.} = object of ExprIntrp_Generator


proc Create*(): handle[ExprIntrp_GenFct] {.importcpp: "ExprIntrp_GenFct::Create(@)",
                                        header: "ExprIntrp_GenFct.hxx".}
proc Process*(this: var ExprIntrp_GenFct; str: TCollection_AsciiString) {.
    importcpp: "Process", header: "ExprIntrp_GenFct.hxx".}
proc IsDone*(this: ExprIntrp_GenFct): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ExprIntrp_GenFct.hxx".}
type
  ExprIntrp_GenFctbase_type* = ExprIntrp_Generator

proc get_type_name*(): cstring {.importcpp: "ExprIntrp_GenFct::get_type_name(@)",
                              header: "ExprIntrp_GenFct.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ExprIntrp_GenFct::get_type_descriptor(@)",
    header: "ExprIntrp_GenFct.hxx".}
proc DynamicType*(this: ExprIntrp_GenFct): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_GenFct.hxx".}