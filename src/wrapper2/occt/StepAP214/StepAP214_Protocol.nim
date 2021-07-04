##  Created on: 1995-12-01
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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepData/StepData_Protocol,
  ../Standard/Standard_Integer, ../Standard/Standard_Type,
  ../Standard/Standard_CString

discard "forward decl of Interface_Protocol"
discard "forward decl of StepAP214_Protocol"
discard "forward decl of StepAP214_Protocol"
type
  Handle_StepAP214_Protocol* = handle[StepAP214_Protocol]

## ! Protocol for StepAP214 Entities
## ! It requires StepAP214 as a Resource

type
  StepAP214_Protocol* {.importcpp: "StepAP214_Protocol",
                       header: "StepAP214_Protocol.hxx", bycopy.} = object of StepData_Protocol


proc constructStepAP214_Protocol*(): StepAP214_Protocol {.constructor,
    importcpp: "StepAP214_Protocol(@)", header: "StepAP214_Protocol.hxx".}
proc TypeNumber*(this: StepAP214_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "StepAP214_Protocol.hxx".}
proc SchemaName*(this: StepAP214_Protocol): Standard_CString {.noSideEffect,
    importcpp: "SchemaName", header: "StepAP214_Protocol.hxx".}
proc NbResources*(this: StepAP214_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "StepAP214_Protocol.hxx".}
proc Resource*(this: StepAP214_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "StepAP214_Protocol.hxx".}
type
  StepAP214_Protocolbase_type* = StepData_Protocol

proc get_type_name*(): cstring {.importcpp: "StepAP214_Protocol::get_type_name(@)",
                              header: "StepAP214_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_Protocol::get_type_descriptor(@)",
    header: "StepAP214_Protocol.hxx".}
proc DynamicType*(this: StepAP214_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP214_Protocol.hxx".}