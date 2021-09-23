##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ConnectedFaceSet

discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_ClosedShell"
type
  Handle_StepShape_ClosedShell* = handle[StepShape_ClosedShell]
  StepShape_ClosedShell* {.importcpp: "StepShape_ClosedShell",
                          header: "StepShape_ClosedShell.hxx", bycopy.} = object of StepShape_ConnectedFaceSet ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## ClosedShell


proc constructStepShape_ClosedShell*(): StepShape_ClosedShell {.constructor,
    importcpp: "StepShape_ClosedShell(@)", header: "StepShape_ClosedShell.hxx".}
type
  StepShape_ClosedShellbase_type* = StepShape_ConnectedFaceSet

proc get_type_name*(): cstring {.importcpp: "StepShape_ClosedShell::get_type_name(@)",
                              header: "StepShape_ClosedShell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ClosedShell::get_type_descriptor(@)",
    header: "StepShape_ClosedShell.hxx".}
proc DynamicType*(this: StepShape_ClosedShell): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_ClosedShell.hxx".}