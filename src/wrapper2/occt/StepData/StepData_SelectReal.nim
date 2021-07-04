##  Created on: 1996-12-16
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepData_SelectMember, ../Standard/Standard_Integer

discard "forward decl of StepData_SelectReal"
discard "forward decl of StepData_SelectReal"
type
  Handle_StepData_SelectReal* = handle[StepData_SelectReal]

## ! A SelectReal is a SelectMember specialised for a basic real
## ! type in a select which also accepts entities : this one has
## ! NO NAME
## ! For a named select, see SelectNamed

type
  StepData_SelectReal* {.importcpp: "StepData_SelectReal",
                        header: "StepData_SelectReal.hxx", bycopy.} = object of StepData_SelectMember


proc constructStepData_SelectReal*(): StepData_SelectReal {.constructor,
    importcpp: "StepData_SelectReal(@)", header: "StepData_SelectReal.hxx".}
proc Kind*(this: StepData_SelectReal): Standard_Integer {.noSideEffect,
    importcpp: "Kind", header: "StepData_SelectReal.hxx".}
proc Real*(this: StepData_SelectReal): Standard_Real {.noSideEffect,
    importcpp: "Real", header: "StepData_SelectReal.hxx".}
proc SetReal*(this: var StepData_SelectReal; val: Standard_Real) {.
    importcpp: "SetReal", header: "StepData_SelectReal.hxx".}
type
  StepData_SelectRealbase_type* = StepData_SelectMember

proc get_type_name*(): cstring {.importcpp: "StepData_SelectReal::get_type_name(@)",
                              header: "StepData_SelectReal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_SelectReal::get_type_descriptor(@)",
    header: "StepData_SelectReal.hxx".}
proc DynamicType*(this: StepData_SelectReal): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectReal.hxx".}