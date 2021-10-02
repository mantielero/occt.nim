##  Created on: 1997-01-03
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StepData_Field"
discard "forward decl of StepData_FreeFormEntity"
discard "forward decl of StepData_FreeFormEntity"
type
  HandleC1C1* = Handle[StepDataFreeFormEntity]

## ! A Free Form Entity allows to record any kind of STEP
## ! parameters, in any way of typing
## ! It is implemented with an array of fields
## ! A Complex entity can be defined, as a chain of FreeFormEntity
## ! (see Next and As)

type
  StepDataFreeFormEntity* {.importcpp: "StepData_FreeFormEntity",
                           header: "StepData_FreeFormEntity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## FreeFormEntity,
                                                                                                  ## with
                                                                                                  ## no
                                                                                                  ## field,
                                                                                                  ## no
                                                                                                  ## type


proc constructStepDataFreeFormEntity*(): StepDataFreeFormEntity {.constructor,
    importcpp: "StepData_FreeFormEntity(@)", header: "StepData_FreeFormEntity.hxx".}
proc setStepType*(this: var StepDataFreeFormEntity; typenam: StandardCString) {.
    importcpp: "SetStepType", header: "StepData_FreeFormEntity.hxx".}
proc stepType*(this: StepDataFreeFormEntity): StandardCString {.noSideEffect,
    importcpp: "StepType", header: "StepData_FreeFormEntity.hxx".}
proc setNext*(this: var StepDataFreeFormEntity;
             next: Handle[StepDataFreeFormEntity]; last: StandardBoolean = true) {.
    importcpp: "SetNext", header: "StepData_FreeFormEntity.hxx".}
proc next*(this: StepDataFreeFormEntity): Handle[StepDataFreeFormEntity] {.
    noSideEffect, importcpp: "Next", header: "StepData_FreeFormEntity.hxx".}
proc isComplex*(this: StepDataFreeFormEntity): StandardBoolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_FreeFormEntity.hxx".}
proc typed*(this: StepDataFreeFormEntity; typenam: StandardCString): Handle[
    StepDataFreeFormEntity] {.noSideEffect, importcpp: "Typed",
                             header: "StepData_FreeFormEntity.hxx".}
proc typeList*(this: StepDataFreeFormEntity): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "TypeList", header: "StepData_FreeFormEntity.hxx".}
proc reorder*(ent: var Handle[StepDataFreeFormEntity]): StandardBoolean {.
    importcpp: "StepData_FreeFormEntity::Reorder(@)",
    header: "StepData_FreeFormEntity.hxx".}
proc setNbFields*(this: var StepDataFreeFormEntity; nb: int) {.
    importcpp: "SetNbFields", header: "StepData_FreeFormEntity.hxx".}
proc nbFields*(this: StepDataFreeFormEntity): int {.noSideEffect,
    importcpp: "NbFields", header: "StepData_FreeFormEntity.hxx".}
proc field*(this: StepDataFreeFormEntity; num: int): StepDataField {.noSideEffect,
    importcpp: "Field", header: "StepData_FreeFormEntity.hxx".}
proc cField*(this: var StepDataFreeFormEntity; num: int): var StepDataField {.
    importcpp: "CField", header: "StepData_FreeFormEntity.hxx".}
type
  StepDataFreeFormEntitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_FreeFormEntity::get_type_name(@)",
                            header: "StepData_FreeFormEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_FreeFormEntity::get_type_descriptor(@)",
    header: "StepData_FreeFormEntity.hxx".}
proc dynamicType*(this: StepDataFreeFormEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_FreeFormEntity.hxx".}