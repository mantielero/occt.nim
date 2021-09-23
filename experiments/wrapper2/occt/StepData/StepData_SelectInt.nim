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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  StepData_SelectMember

discard "forward decl of StepData_SelectInt"
discard "forward decl of StepData_SelectInt"
type
  Handle_StepData_SelectInt* = handle[StepData_SelectInt]

## ! A SelectInt is a SelectMember specialised for a basic integer
## ! type in a select which also accepts entities : this one has
## ! NO NAME.
## ! For a named select, see SelectNamed

type
  StepData_SelectInt* {.importcpp: "StepData_SelectInt",
                       header: "StepData_SelectInt.hxx", bycopy.} = object of StepData_SelectMember


proc constructStepData_SelectInt*(): StepData_SelectInt {.constructor,
    importcpp: "StepData_SelectInt(@)", header: "StepData_SelectInt.hxx".}
proc Kind*(this: StepData_SelectInt): Standard_Integer {.noSideEffect,
    importcpp: "Kind", header: "StepData_SelectInt.hxx".}
proc SetKind*(this: var StepData_SelectInt; kind: Standard_Integer) {.
    importcpp: "SetKind", header: "StepData_SelectInt.hxx".}
proc Int*(this: StepData_SelectInt): Standard_Integer {.noSideEffect,
    importcpp: "Int", header: "StepData_SelectInt.hxx".}
proc SetInt*(this: var StepData_SelectInt; val: Standard_Integer) {.
    importcpp: "SetInt", header: "StepData_SelectInt.hxx".}
type
  StepData_SelectIntbase_type* = StepData_SelectMember

proc get_type_name*(): cstring {.importcpp: "StepData_SelectInt::get_type_name(@)",
                              header: "StepData_SelectInt.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_SelectInt::get_type_descriptor(@)",
    header: "StepData_SelectInt.hxx".}
proc DynamicType*(this: StepData_SelectInt): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectInt.hxx".}