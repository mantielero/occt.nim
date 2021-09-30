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
  HandleC1C1* = Handle[StepDataUndefinedEntity]

## ! Undefined entity specific to Step Interface, in which StepType
## ! is defined at each instance, or is a SubList of another one
## ! Uses an UndefinedContent, that from Interface is suitable.
## ! Also an Entity defined by STEP can be "Complex Type" (see
## ! ANDOR clause in Express).

type
  StepDataUndefinedEntity* {.importcpp: "StepData_UndefinedEntity",
                            header: "StepData_UndefinedEntity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## creates
                                                                                                    ## an
                                                                                                    ## Unknown
                                                                                                    ## entity


proc constructStepDataUndefinedEntity*(): StepDataUndefinedEntity {.constructor,
    importcpp: "StepData_UndefinedEntity(@)",
    header: "StepData_UndefinedEntity.hxx".}
proc constructStepDataUndefinedEntity*(issub: bool): StepDataUndefinedEntity {.
    constructor, importcpp: "StepData_UndefinedEntity(@)",
    header: "StepData_UndefinedEntity.hxx".}
proc undefinedContent*(this: StepDataUndefinedEntity): Handle[
    InterfaceUndefinedContent] {.noSideEffect, importcpp: "UndefinedContent",
                                header: "StepData_UndefinedEntity.hxx".}
proc isSub*(this: StepDataUndefinedEntity): bool {.noSideEffect, importcpp: "IsSub",
    header: "StepData_UndefinedEntity.hxx".}
proc super*(this: StepDataUndefinedEntity): Handle[StepDataUndefinedEntity] {.
    noSideEffect, importcpp: "Super", header: "StepData_UndefinedEntity.hxx".}
proc isComplex*(this: StepDataUndefinedEntity): bool {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_UndefinedEntity.hxx".}
proc next*(this: StepDataUndefinedEntity): Handle[StepDataUndefinedEntity] {.
    noSideEffect, importcpp: "Next", header: "StepData_UndefinedEntity.hxx".}
proc stepType*(this: StepDataUndefinedEntity): StandardCString {.noSideEffect,
    importcpp: "StepType", header: "StepData_UndefinedEntity.hxx".}
proc readRecord*(this: var StepDataUndefinedEntity;
                sr: Handle[StepDataStepReaderData]; num: cint;
                ach: var Handle[InterfaceCheck]) {.importcpp: "ReadRecord",
    header: "StepData_UndefinedEntity.hxx".}
proc writeParams*(this: StepDataUndefinedEntity; sw: var StepDataStepWriter) {.
    noSideEffect, importcpp: "WriteParams", header: "StepData_UndefinedEntity.hxx".}
proc getFromAnother*(this: var StepDataUndefinedEntity;
                    other: Handle[StepDataUndefinedEntity];
                    tc: var InterfaceCopyTool) {.importcpp: "GetFromAnother",
    header: "StepData_UndefinedEntity.hxx".}
proc fillShared*(this: StepDataUndefinedEntity; list: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillShared", header: "StepData_UndefinedEntity.hxx".}
type
  StepDataUndefinedEntitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_UndefinedEntity::get_type_name(@)",
                            header: "StepData_UndefinedEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_UndefinedEntity::get_type_descriptor(@)",
    header: "StepData_UndefinedEntity.hxx".}
proc dynamicType*(this: StepDataUndefinedEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_UndefinedEntity.hxx".}

























