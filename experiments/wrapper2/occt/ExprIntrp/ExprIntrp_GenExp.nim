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

discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_GenExp"
discard "forward decl of ExprIntrp_GenExp"
type
  HandleExprIntrpGenExp* = Handle[ExprIntrpGenExp]

## ! This class permits, from a string, to create any
## ! kind of expression of package Expr by using
## ! built-in functions such as Sin,Cos, etc, and by
## ! creating variables.

type
  ExprIntrpGenExp* {.importcpp: "ExprIntrp_GenExp", header: "ExprIntrp_GenExp.hxx",
                    bycopy.} = object of ExprIntrpGenerator ## ! Creates an empty generator


proc create*(): Handle[ExprIntrpGenExp] {.importcpp: "ExprIntrp_GenExp::Create(@)",
                                       header: "ExprIntrp_GenExp.hxx".}
proc process*(this: var ExprIntrpGenExp; str: TCollectionAsciiString) {.
    importcpp: "Process", header: "ExprIntrp_GenExp.hxx".}
proc isDone*(this: ExprIntrpGenExp): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "ExprIntrp_GenExp.hxx".}
proc expression*(this: ExprIntrpGenExp): Handle[ExprGeneralExpression] {.
    noSideEffect, importcpp: "Expression", header: "ExprIntrp_GenExp.hxx".}
type
  ExprIntrpGenExpbaseType* = ExprIntrpGenerator

proc getTypeName*(): cstring {.importcpp: "ExprIntrp_GenExp::get_type_name(@)",
                            header: "ExprIntrp_GenExp.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ExprIntrp_GenExp::get_type_descriptor(@)",
    header: "ExprIntrp_GenExp.hxx".}
proc dynamicType*(this: ExprIntrpGenExp): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ExprIntrp_GenExp.hxx".}
