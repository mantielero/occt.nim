##  Created on: 1991-07-18
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ExprIntrp_Generator

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_GenExp"
discard "forward decl of ExprIntrp_GenExp"
type
  Handle_ExprIntrp_GenExp* = handle[ExprIntrp_GenExp]

## ! This class permits, from a string, to create any
## ! kind of expression of package Expr by using
## ! built-in functions such as Sin,Cos, etc, and by
## ! creating variables.

type
  ExprIntrp_GenExp* {.importcpp: "ExprIntrp_GenExp",
                     header: "ExprIntrp_GenExp.hxx", bycopy.} = object of ExprIntrp_Generator ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## an
                                                                                       ## empty
                                                                                       ## generator


proc Create*(): handle[ExprIntrp_GenExp] {.importcpp: "ExprIntrp_GenExp::Create(@)",
                                        header: "ExprIntrp_GenExp.hxx".}
proc Process*(this: var ExprIntrp_GenExp; str: TCollection_AsciiString) {.
    importcpp: "Process", header: "ExprIntrp_GenExp.hxx".}
proc IsDone*(this: ExprIntrp_GenExp): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ExprIntrp_GenExp.hxx".}
proc Expression*(this: ExprIntrp_GenExp): handle[Expr_GeneralExpression] {.
    noSideEffect, importcpp: "Expression", header: "ExprIntrp_GenExp.hxx".}
type
  ExprIntrp_GenExpbase_type* = ExprIntrp_Generator

proc get_type_name*(): cstring {.importcpp: "ExprIntrp_GenExp::get_type_name(@)",
                              header: "ExprIntrp_GenExp.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ExprIntrp_GenExp::get_type_descriptor(@)",
    header: "ExprIntrp_GenExp.hxx".}
proc DynamicType*(this: ExprIntrp_GenExp): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_GenExp.hxx".}