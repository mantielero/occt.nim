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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepData/StepData_ReadWriteModule, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfAsciiString, ../Standard/Standard_Boolean

discard "forward decl of TCollection_AsciiString"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_StepWriter"
discard "forward decl of RWStepAP214_ReadWriteModule"
discard "forward decl of RWStepAP214_ReadWriteModule"
type
  Handle_RWStepAP214_ReadWriteModule* = handle[RWStepAP214_ReadWriteModule]

## ! General module to read and write StepAP214 entities

type
  RWStepAP214_ReadWriteModule* {.importcpp: "RWStepAP214_ReadWriteModule",
                                header: "RWStepAP214_ReadWriteModule.hxx", bycopy.} = object of StepData_ReadWriteModule


proc constructRWStepAP214_ReadWriteModule*(): RWStepAP214_ReadWriteModule {.
    constructor, importcpp: "RWStepAP214_ReadWriteModule(@)",
    header: "RWStepAP214_ReadWriteModule.hxx".}
proc CaseStep*(this: RWStepAP214_ReadWriteModule; atype: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "CaseStep", header: "RWStepAP214_ReadWriteModule.hxx".}
proc CaseStep*(this: RWStepAP214_ReadWriteModule;
              types: TColStd_SequenceOfAsciiString): Standard_Integer {.
    noSideEffect, importcpp: "CaseStep", header: "RWStepAP214_ReadWriteModule.hxx".}
proc IsComplex*(this: RWStepAP214_ReadWriteModule; CN: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsComplex", header: "RWStepAP214_ReadWriteModule.hxx".}
proc StepType*(this: RWStepAP214_ReadWriteModule; CN: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "StepType", header: "RWStepAP214_ReadWriteModule.hxx".}
proc ComplexType*(this: RWStepAP214_ReadWriteModule; CN: Standard_Integer;
                 types: var TColStd_SequenceOfAsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "ComplexType",
    header: "RWStepAP214_ReadWriteModule.hxx".}
proc ReadStep*(this: RWStepAP214_ReadWriteModule; CN: Standard_Integer;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check]; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepAP214_ReadWriteModule.hxx".}
proc WriteStep*(this: RWStepAP214_ReadWriteModule; CN: Standard_Integer;
               SW: var StepData_StepWriter; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "WriteStep", header: "RWStepAP214_ReadWriteModule.hxx".}
type
  RWStepAP214_ReadWriteModulebase_type* = StepData_ReadWriteModule

proc get_type_name*(): cstring {.importcpp: "RWStepAP214_ReadWriteModule::get_type_name(@)",
                              header: "RWStepAP214_ReadWriteModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWStepAP214_ReadWriteModule::get_type_descriptor(@)",
    header: "RWStepAP214_ReadWriteModule.hxx".}
proc DynamicType*(this: RWStepAP214_ReadWriteModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWStepAP214_ReadWriteModule.hxx".}