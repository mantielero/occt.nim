##  Created on: 1993-07-23
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StepData_Protocol"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Check"
discard "forward decl of StepData_FileProtocol"
discard "forward decl of StepData_FileProtocol"
type
  HandleC1C1* = Handle[StepDataFileProtocol]

## ! A FileProtocol is defined as the addition of several already
## ! existing Protocols. It corresponds to the definition of a
## ! SchemaName with several Names, each one being attached to a
## ! specific Protocol. Thus, a File defined with a compound Schema
## ! is processed as any other one, once built the equivalent
## ! compound Protocol, a FileProtocol

type
  StepDataFileProtocol* {.importcpp: "StepData_FileProtocol",
                         header: "StepData_FileProtocol.hxx", bycopy.} = object of StepDataProtocol ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## an
                                                                                             ## empty
                                                                                             ## FileProtocol


proc constructStepDataFileProtocol*(): StepDataFileProtocol {.constructor,
    importcpp: "StepData_FileProtocol(@)", header: "StepData_FileProtocol.hxx".}
proc add*(this: var StepDataFileProtocol; protocol: Handle[StepDataProtocol]) {.
    importcpp: "Add", header: "StepData_FileProtocol.hxx".}
proc nbResources*(this: StepDataFileProtocol): cint {.noSideEffect,
    importcpp: "NbResources", header: "StepData_FileProtocol.hxx".}
proc resource*(this: StepDataFileProtocol; num: cint): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Resource", header: "StepData_FileProtocol.hxx".}
proc typeNumber*(this: StepDataFileProtocol; atype: Handle[StandardType]): cint {.
    noSideEffect, importcpp: "TypeNumber", header: "StepData_FileProtocol.hxx".}
proc globalCheck*(this: StepDataFileProtocol; g: InterfaceGraph;
                 ach: var Handle[InterfaceCheck]): bool {.noSideEffect,
    importcpp: "GlobalCheck", header: "StepData_FileProtocol.hxx".}
proc schemaName*(this: StepDataFileProtocol): StandardCString {.noSideEffect,
    importcpp: "SchemaName", header: "StepData_FileProtocol.hxx".}
type
  StepDataFileProtocolbaseType* = StepDataProtocol

proc getTypeName*(): cstring {.importcpp: "StepData_FileProtocol::get_type_name(@)",
                            header: "StepData_FileProtocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_FileProtocol::get_type_descriptor(@)",
    header: "StepData_FileProtocol.hxx".}
proc dynamicType*(this: StepDataFileProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_FileProtocol.hxx".}

























