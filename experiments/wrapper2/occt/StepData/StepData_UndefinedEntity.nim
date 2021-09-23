##  Created on: 1992-02-11
##  Created by: Christian CAILLET
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
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_UndefinedContent"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_UndefinedEntity"
discard "forward decl of StepData_UndefinedEntity"
type
  Handle_StepData_UndefinedEntity* = handle[StepData_UndefinedEntity]

## ! Undefined entity specific to Step Interface, in which StepType
## ! is defined at each instance, or is a SubList of another one
## ! Uses an UndefinedContent, that from Interface is suitable.
## ! Also an Entity defined by STEP can be "Complex Type" (see
## ! ANDOR clause in Express).

type
  StepData_UndefinedEntity* {.importcpp: "StepData_UndefinedEntity",
                             header: "StepData_UndefinedEntity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## creates
                                                                                                      ## an
                                                                                                      ## Unknown
                                                                                                      ## entity


proc constructStepData_UndefinedEntity*(): StepData_UndefinedEntity {.constructor,
    importcpp: "StepData_UndefinedEntity(@)",
    header: "StepData_UndefinedEntity.hxx".}
proc constructStepData_UndefinedEntity*(issub: Standard_Boolean): StepData_UndefinedEntity {.
    constructor, importcpp: "StepData_UndefinedEntity(@)",
    header: "StepData_UndefinedEntity.hxx".}
proc UndefinedContent*(this: StepData_UndefinedEntity): handle[
    Interface_UndefinedContent] {.noSideEffect, importcpp: "UndefinedContent",
                                 header: "StepData_UndefinedEntity.hxx".}
proc IsSub*(this: StepData_UndefinedEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsSub", header: "StepData_UndefinedEntity.hxx".}
proc Super*(this: StepData_UndefinedEntity): handle[StepData_UndefinedEntity] {.
    noSideEffect, importcpp: "Super", header: "StepData_UndefinedEntity.hxx".}
proc IsComplex*(this: StepData_UndefinedEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_UndefinedEntity.hxx".}
proc Next*(this: StepData_UndefinedEntity): handle[StepData_UndefinedEntity] {.
    noSideEffect, importcpp: "Next", header: "StepData_UndefinedEntity.hxx".}
proc StepType*(this: StepData_UndefinedEntity): Standard_CString {.noSideEffect,
    importcpp: "StepType", header: "StepData_UndefinedEntity.hxx".}
proc ReadRecord*(this: var StepData_UndefinedEntity;
                SR: handle[StepData_StepReaderData]; num: Standard_Integer;
                ach: var handle[Interface_Check]) {.importcpp: "ReadRecord",
    header: "StepData_UndefinedEntity.hxx".}
proc WriteParams*(this: StepData_UndefinedEntity; SW: var StepData_StepWriter) {.
    noSideEffect, importcpp: "WriteParams", header: "StepData_UndefinedEntity.hxx".}
proc GetFromAnother*(this: var StepData_UndefinedEntity;
                    other: handle[StepData_UndefinedEntity];
                    TC: var Interface_CopyTool) {.importcpp: "GetFromAnother",
    header: "StepData_UndefinedEntity.hxx".}
proc FillShared*(this: StepData_UndefinedEntity; list: var Interface_EntityIterator) {.
    noSideEffect, importcpp: "FillShared", header: "StepData_UndefinedEntity.hxx".}
type
  StepData_UndefinedEntitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_UndefinedEntity::get_type_name(@)",
                              header: "StepData_UndefinedEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_UndefinedEntity::get_type_descriptor(@)",
    header: "StepData_UndefinedEntity.hxx".}
proc DynamicType*(this: StepData_UndefinedEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_UndefinedEntity.hxx".}