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

discard "forward decl of StepData_SelectInt"
discard "forward decl of StepData_SelectInt"
type
  HandleC1C1* = Handle[StepDataSelectInt]

## ! A SelectInt is a SelectMember specialised for a basic integer
## ! type in a select which also accepts entities : this one has
## ! NO NAME.
## ! For a named select, see SelectNamed

type
  StepDataSelectInt* {.importcpp: "StepData_SelectInt",
                      header: "StepData_SelectInt.hxx", bycopy.} = object of StepDataSelectMember


proc constructStepDataSelectInt*(): StepDataSelectInt {.constructor,
    importcpp: "StepData_SelectInt(@)", header: "StepData_SelectInt.hxx".}
proc kind*(this: StepDataSelectInt): int {.noSideEffect, importcpp: "Kind",
                                       header: "StepData_SelectInt.hxx".}
proc setKind*(this: var StepDataSelectInt; kind: int) {.importcpp: "SetKind",
    header: "StepData_SelectInt.hxx".}
proc int*(this: StepDataSelectInt): int {.noSideEffect, importcpp: "Int",
                                      header: "StepData_SelectInt.hxx".}
proc setInt*(this: var StepDataSelectInt; val: int) {.importcpp: "SetInt",
    header: "StepData_SelectInt.hxx".}
type
  StepDataSelectIntbaseType* = StepDataSelectMember

proc getTypeName*(): cstring {.importcpp: "StepData_SelectInt::get_type_name(@)",
                            header: "StepData_SelectInt.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_SelectInt::get_type_descriptor(@)",
    header: "StepData_SelectInt.hxx".}
proc dynamicType*(this: StepDataSelectInt): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectInt.hxx".}