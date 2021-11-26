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

discard "forward decl of Interface_Protocol"
discard "forward decl of StepAP214_Protocol"
discard "forward decl of StepAP214_Protocol"
type
  HandleC1C1* = Handle[StepAP214Protocol]

## ! Protocol for StepAP214 Entities
## ! It requires StepAP214 as a Resource

type
  StepAP214Protocol* {.importcpp: "StepAP214_Protocol",
                      header: "StepAP214_Protocol.hxx", bycopy.} = object of StepDataProtocol


proc constructStepAP214Protocol*(): StepAP214Protocol {.constructor,
    importcpp: "StepAP214_Protocol(@)", header: "StepAP214_Protocol.hxx".}
proc typeNumber*(this: StepAP214Protocol; atype: Handle[StandardType]): int {.
    noSideEffect, importcpp: "TypeNumber", header: "StepAP214_Protocol.hxx".}
proc schemaName*(this: StepAP214Protocol): StandardCString {.noSideEffect,
    importcpp: "SchemaName", header: "StepAP214_Protocol.hxx".}
proc nbResources*(this: StepAP214Protocol): int {.noSideEffect,
    importcpp: "NbResources", header: "StepAP214_Protocol.hxx".}
proc resource*(this: StepAP214Protocol; num: int): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Resource", header: "StepAP214_Protocol.hxx".}
type
  StepAP214ProtocolbaseType* = StepDataProtocol

proc getTypeName*(): cstring {.importcpp: "StepAP214_Protocol::get_type_name(@)",
                            header: "StepAP214_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_Protocol::get_type_descriptor(@)",
    header: "StepAP214_Protocol.hxx".}
proc dynamicType*(this: StepAP214Protocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP214_Protocol.hxx".}