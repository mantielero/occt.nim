##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ContractType"
discard "forward decl of StepBasic_ContractType"
type
  HandleC1C1* = Handle[StepBasicContractType]

## ! Representation of STEP entity ContractType

type
  StepBasicContractType* {.importcpp: "StepBasic_ContractType",
                          header: "StepBasic_ContractType.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepBasicContractType*(): StepBasicContractType {.constructor,
    importcpp: "StepBasic_ContractType(@)", header: "StepBasic_ContractType.hxx".}
proc init*(this: var StepBasicContractType;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ContractType.hxx".}
proc description*(this: StepBasicContractType): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ContractType.hxx".}
proc setDescription*(this: var StepBasicContractType;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ContractType.hxx".}
type
  StepBasicContractTypebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ContractType::get_type_name(@)",
                            header: "StepBasic_ContractType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ContractType::get_type_descriptor(@)",
    header: "StepBasic_ContractType.hxx".}
proc dynamicType*(this: StepBasicContractType): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_ContractType.hxx".}

























