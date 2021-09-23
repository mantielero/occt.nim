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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepData/StepData_ReadWriteModule, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfAsciiString, ../Standard/Standard_Boolean

discard "forward decl of TCollection_AsciiString"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_StepWriter"
discard "forward decl of RWHeaderSection_ReadWriteModule"
discard "forward decl of RWHeaderSection_ReadWriteModule"
type
  Handle_RWHeaderSection_ReadWriteModule* = handle[RWHeaderSection_ReadWriteModule]

## ! General module to read and write HeaderSection entities

type
  RWHeaderSection_ReadWriteModule* {.importcpp: "RWHeaderSection_ReadWriteModule", header: "RWHeaderSection_ReadWriteModule.hxx",
                                    bycopy.} = object of StepData_ReadWriteModule


proc constructRWHeaderSection_ReadWriteModule*(): RWHeaderSection_ReadWriteModule {.
    constructor, importcpp: "RWHeaderSection_ReadWriteModule(@)",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc CaseStep*(this: RWHeaderSection_ReadWriteModule;
              atype: TCollection_AsciiString): Standard_Integer {.noSideEffect,
    importcpp: "CaseStep", header: "RWHeaderSection_ReadWriteModule.hxx".}
proc CaseStep*(this: RWHeaderSection_ReadWriteModule;
              types: TColStd_SequenceOfAsciiString): Standard_Integer {.
    noSideEffect, importcpp: "CaseStep",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc IsComplex*(this: RWHeaderSection_ReadWriteModule; CN: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsComplex",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc StepType*(this: RWHeaderSection_ReadWriteModule; CN: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "StepType",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc ReadStep*(this: RWHeaderSection_ReadWriteModule; CN: Standard_Integer;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check]; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc WriteStep*(this: RWHeaderSection_ReadWriteModule; CN: Standard_Integer;
               SW: var StepData_StepWriter; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
type
  RWHeaderSection_ReadWriteModulebase_type* = StepData_ReadWriteModule

proc get_type_name*(): cstring {.importcpp: "RWHeaderSection_ReadWriteModule::get_type_name(@)",
                              header: "RWHeaderSection_ReadWriteModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWHeaderSection_ReadWriteModule::get_type_descriptor(@)",
    header: "RWHeaderSection_ReadWriteModule.hxx".}
proc DynamicType*(this: RWHeaderSection_ReadWriteModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWHeaderSection_ReadWriteModule.hxx".}