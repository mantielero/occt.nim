##  Created on: 1994-12-22
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepData/StepData_WriterLib,
  ../IFSelect/IFSelect_Signature, ../Standard/Standard_CString

discard "forward decl of StepData_Protocol"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of StepSelect_StepType"
discard "forward decl of StepSelect_StepType"
type
  Handle_StepSelect_StepType* = handle[StepSelect_StepType]

## ! StepType is a Signature specific to Step definitions : it
## ! considers the type as defined in STEP Schemas, the same which
## ! is used in files.
## ! For a Complex Type, if its definition is known, StepType
## ! produces the list of basic types, separated by commas, the
## ! whole between brackets : "(TYPE1,TYPE2..)".
## ! If its precise definition is not known (simply it is known as
## ! Complex, it can be recognised, but the list is produced at
## ! Write time only), StepType produces : "(..COMPLEX TYPE..)"

type
  StepSelect_StepType* {.importcpp: "StepSelect_StepType",
                        header: "StepSelect_StepType.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## Signature
                                                                                            ## for
                                                                                            ## Step
                                                                                            ## Type.
                                                                                            ## Protocol
                                                                                            ## is
                                                                                            ## undefined
                                                                                            ## here,
                                                                                            ##
                                                                                            ## !
                                                                                            ## hence
                                                                                            ## no
                                                                                            ## Signature
                                                                                            ## may
                                                                                            ## yet
                                                                                            ## be
                                                                                            ## produced.
                                                                                            ## The
                                                                                            ## StepType
                                                                                            ## signature
                                                                                            ##
                                                                                            ## !
                                                                                            ## requires
                                                                                            ## a
                                                                                            ## Protocol
                                                                                            ## before
                                                                                            ## working


proc constructStepSelect_StepType*(): StepSelect_StepType {.constructor,
    importcpp: "StepSelect_StepType(@)", header: "StepSelect_StepType.hxx".}
proc SetProtocol*(this: var StepSelect_StepType; proto: handle[Interface_Protocol]) {.
    importcpp: "SetProtocol", header: "StepSelect_StepType.hxx".}
proc Value*(this: StepSelect_StepType; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "StepSelect_StepType.hxx".}
type
  StepSelect_StepTypebase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "StepSelect_StepType::get_type_name(@)",
                              header: "StepSelect_StepType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepSelect_StepType::get_type_descriptor(@)",
    header: "StepSelect_StepType.hxx".}
proc DynamicType*(this: StepSelect_StepType): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepSelect_StepType.hxx".}