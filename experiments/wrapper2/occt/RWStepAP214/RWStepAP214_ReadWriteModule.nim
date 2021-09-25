##  Created on: 1995-12-07
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_StepWriter"
discard "forward decl of RWStepAP214_ReadWriteModule"
discard "forward decl of RWStepAP214_ReadWriteModule"
type
  HandleRWStepAP214ReadWriteModule* = Handle[RWStepAP214ReadWriteModule]

## ! General module to read and write StepAP214 entities

type
  RWStepAP214ReadWriteModule* {.importcpp: "RWStepAP214_ReadWriteModule",
                               header: "RWStepAP214_ReadWriteModule.hxx", bycopy.} = object of StepDataReadWriteModule


proc constructRWStepAP214ReadWriteModule*(): RWStepAP214ReadWriteModule {.
    constructor, importcpp: "RWStepAP214_ReadWriteModule(@)",
    header: "RWStepAP214_ReadWriteModule.hxx".}
proc caseStep*(this: RWStepAP214ReadWriteModule; atype: TCollectionAsciiString): int {.
    noSideEffect, importcpp: "CaseStep", header: "RWStepAP214_ReadWriteModule.hxx".}
proc caseStep*(this: RWStepAP214ReadWriteModule;
              types: TColStdSequenceOfAsciiString): int {.noSideEffect,
    importcpp: "CaseStep", header: "RWStepAP214_ReadWriteModule.hxx".}
proc isComplex*(this: RWStepAP214ReadWriteModule; cn: int): bool {.noSideEffect,
    importcpp: "IsComplex", header: "RWStepAP214_ReadWriteModule.hxx".}
proc stepType*(this: RWStepAP214ReadWriteModule; cn: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "StepType", header: "RWStepAP214_ReadWriteModule.hxx".}
proc complexType*(this: RWStepAP214ReadWriteModule; cn: int;
                 types: var TColStdSequenceOfAsciiString): bool {.noSideEffect,
    importcpp: "ComplexType", header: "RWStepAP214_ReadWriteModule.hxx".}
proc readStep*(this: RWStepAP214ReadWriteModule; cn: int;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck]; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepAP214_ReadWriteModule.hxx".}
proc writeStep*(this: RWStepAP214ReadWriteModule; cn: int;
               sw: var StepDataStepWriter; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "WriteStep", header: "RWStepAP214_ReadWriteModule.hxx".}
type
  RWStepAP214ReadWriteModulebaseType* = StepDataReadWriteModule

proc getTypeName*(): cstring {.importcpp: "RWStepAP214_ReadWriteModule::get_type_name(@)",
                            header: "RWStepAP214_ReadWriteModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWStepAP214_ReadWriteModule::get_type_descriptor(@)",
    header: "RWStepAP214_ReadWriteModule.hxx".}
proc dynamicType*(this: RWStepAP214ReadWriteModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWStepAP214_ReadWriteModule.hxx".}
