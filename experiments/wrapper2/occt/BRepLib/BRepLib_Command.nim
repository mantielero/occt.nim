##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
type
  BRepLib_Command* {.importcpp: "BRepLib_Command", header: "BRepLib_Command.hxx",
                    bycopy.} = object ## ! Set done to False.


proc destroyBRepLib_Command*(this: var BRepLib_Command) {.
    importcpp: "#.~BRepLib_Command()", header: "BRepLib_Command.hxx".}
proc IsDone*(this: BRepLib_Command): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepLib_Command.hxx".}
proc Check*(this: BRepLib_Command) {.noSideEffect, importcpp: "Check",
                                  header: "BRepLib_Command.hxx".}