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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_SequenceOfTransient, StepData_Protocol,
  ../Standard/Standard_Integer, ../Standard/Standard_Type,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString

discard "forward decl of StepData_Protocol"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Check"
discard "forward decl of StepData_FileProtocol"
discard "forward decl of StepData_FileProtocol"
type
  Handle_StepData_FileProtocol* = handle[StepData_FileProtocol]

## ! A FileProtocol is defined as the addition of several already
## ! existing Protocols. It corresponds to the definition of a
## ! SchemaName with several Names, each one being attached to a
## ! specific Protocol. Thus, a File defined with a compound Schema
## ! is processed as any other one, once built the equivalent
## ! compound Protocol, a FileProtocol

type
  StepData_FileProtocol* {.importcpp: "StepData_FileProtocol",
                          header: "StepData_FileProtocol.hxx", bycopy.} = object of StepData_Protocol ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## FileProtocol


proc constructStepData_FileProtocol*(): StepData_FileProtocol {.constructor,
    importcpp: "StepData_FileProtocol(@)", header: "StepData_FileProtocol.hxx".}
proc Add*(this: var StepData_FileProtocol; protocol: handle[StepData_Protocol]) {.
    importcpp: "Add", header: "StepData_FileProtocol.hxx".}
proc NbResources*(this: StepData_FileProtocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "StepData_FileProtocol.hxx".}
proc Resource*(this: StepData_FileProtocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "StepData_FileProtocol.hxx".}
proc TypeNumber*(this: StepData_FileProtocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "StepData_FileProtocol.hxx".}
proc GlobalCheck*(this: StepData_FileProtocol; G: Interface_Graph;
                 ach: var handle[Interface_Check]): Standard_Boolean {.noSideEffect,
    importcpp: "GlobalCheck", header: "StepData_FileProtocol.hxx".}
proc SchemaName*(this: StepData_FileProtocol): Standard_CString {.noSideEffect,
    importcpp: "SchemaName", header: "StepData_FileProtocol.hxx".}
type
  StepData_FileProtocolbase_type* = StepData_Protocol

proc get_type_name*(): cstring {.importcpp: "StepData_FileProtocol::get_type_name(@)",
                              header: "StepData_FileProtocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_FileProtocol::get_type_descriptor(@)",
    header: "StepData_FileProtocol.hxx".}
proc DynamicType*(this: StepData_FileProtocol): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_FileProtocol.hxx".}