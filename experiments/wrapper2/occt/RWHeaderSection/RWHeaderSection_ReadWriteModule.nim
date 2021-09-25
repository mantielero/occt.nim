##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of RWHeaderSection_ReadWriteModule"
discard "forward decl of RWHeaderSection_ReadWriteModule"
type
  HandleRWHeaderSectionReadWriteModule* = Handle[RWHeaderSectionReadWriteModule]

## ! General module to read and write HeaderSection entities

type
  RWHeaderSectionReadWriteModule* {.importcpp: "RWHeaderSection_ReadWriteModule", header: "RWHeaderSection_ReadWriteModule.hxx",
                                   bycopy.} = object of StepDataReadWriteModule


proc constructRWHeaderSectionReadWriteModule*(): RWHeaderSectionReadWriteModule {.
    constructor, importcpp: "RWHeaderSection_ReadWriteModule(@)",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc caseStep*(this: RWHeaderSectionReadWriteModule; atype: TCollectionAsciiString): int {.
    noSideEffect, importcpp: "CaseStep",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc caseStep*(this: RWHeaderSectionReadWriteModule;
              types: TColStdSequenceOfAsciiString): int {.noSideEffect,
    importcpp: "CaseStep", header: "RWHeaderSection_ReadWriteModule.hxx".}
proc isComplex*(this: RWHeaderSectionReadWriteModule; cn: int): bool {.noSideEffect,
    importcpp: "IsComplex", header: "RWHeaderSection_ReadWriteModule.hxx".}
proc stepType*(this: RWHeaderSectionReadWriteModule; cn: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "StepType",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc readStep*(this: RWHeaderSectionReadWriteModule; cn: int;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck]; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc writeStep*(this: RWHeaderSectionReadWriteModule; cn: int;
               sw: var StepDataStepWriter; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
type
  RWHeaderSectionReadWriteModulebaseType* = StepDataReadWriteModule

proc getTypeName*(): cstring {.importcpp: "RWHeaderSection_ReadWriteModule::get_type_name(@)",
                            header: "RWHeaderSection_ReadWriteModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWHeaderSection_ReadWriteModule::get_type_descriptor(@)",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc dynamicType*(this: RWHeaderSectionReadWriteModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
