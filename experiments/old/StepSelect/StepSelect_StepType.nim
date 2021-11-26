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

discard "forward decl of StepData_Protocol"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of StepSelect_StepType"
discard "forward decl of StepSelect_StepType"
type
  HandleC1C1* = Handle[StepSelectStepType]

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
  StepSelectStepType* {.importcpp: "StepSelect_StepType",
                       header: "StepSelect_StepType.hxx", bycopy.} = object of IFSelectSignature ##
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


proc constructStepSelectStepType*(): StepSelectStepType {.constructor,
    importcpp: "StepSelect_StepType(@)", header: "StepSelect_StepType.hxx".}
proc setProtocol*(this: var StepSelectStepType; proto: Handle[InterfaceProtocol]) {.
    importcpp: "SetProtocol", header: "StepSelect_StepType.hxx".}
proc value*(this: StepSelectStepType; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): StandardCString {.noSideEffect,
    importcpp: "Value", header: "StepSelect_StepType.hxx".}
type
  StepSelectStepTypebaseType* = IFSelectSignature

proc getTypeName*(): cstring {.importcpp: "StepSelect_StepType::get_type_name(@)",
                            header: "StepSelect_StepType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepSelect_StepType::get_type_descriptor(@)",
    header: "StepSelect_StepType.hxx".}
proc dynamicType*(this: StepSelectStepType): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepSelect_StepType.hxx".}