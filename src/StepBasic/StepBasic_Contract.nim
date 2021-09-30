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
discard "forward decl of StepBasic_Contract"
discard "forward decl of StepBasic_Contract"
type
  HandleC1C1* = Handle[StepBasicContract]

## ! Representation of STEP entity Contract

type
  StepBasicContract* {.importcpp: "StepBasic_Contract",
                      header: "StepBasic_Contract.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructStepBasicContract*(): StepBasicContract {.constructor,
    importcpp: "StepBasic_Contract(@)", header: "StepBasic_Contract.hxx".}
proc init*(this: var StepBasicContract; aName: Handle[TCollectionHAsciiString];
          aPurpose: Handle[TCollectionHAsciiString];
          aKind: Handle[StepBasicContractType]) {.importcpp: "Init",
    header: "StepBasic_Contract.hxx".}
proc name*(this: StepBasicContract): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Contract.hxx".}
proc setName*(this: var StepBasicContract; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Contract.hxx".}
proc purpose*(this: StepBasicContract): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepBasic_Contract.hxx".}
proc setPurpose*(this: var StepBasicContract;
                purpose: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_Contract.hxx".}
proc kind*(this: StepBasicContract): Handle[StepBasicContractType] {.noSideEffect,
    importcpp: "Kind", header: "StepBasic_Contract.hxx".}
proc setKind*(this: var StepBasicContract; kind: Handle[StepBasicContractType]) {.
    importcpp: "SetKind", header: "StepBasic_Contract.hxx".}
type
  StepBasicContractbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Contract::get_type_name(@)",
                            header: "StepBasic_Contract.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Contract::get_type_descriptor(@)",
    header: "StepBasic_Contract.hxx".}
proc dynamicType*(this: StepBasicContract): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Contract.hxx".}

























