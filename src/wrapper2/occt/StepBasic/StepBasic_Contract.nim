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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ContractType"
discard "forward decl of StepBasic_Contract"
discard "forward decl of StepBasic_Contract"
type
  Handle_StepBasic_Contract* = handle[StepBasic_Contract]

## ! Representation of STEP entity Contract

type
  StepBasic_Contract* {.importcpp: "StepBasic_Contract",
                       header: "StepBasic_Contract.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructStepBasic_Contract*(): StepBasic_Contract {.constructor,
    importcpp: "StepBasic_Contract(@)", header: "StepBasic_Contract.hxx".}
proc Init*(this: var StepBasic_Contract; aName: handle[TCollection_HAsciiString];
          aPurpose: handle[TCollection_HAsciiString];
          aKind: handle[StepBasic_ContractType]) {.importcpp: "Init",
    header: "StepBasic_Contract.hxx".}
proc Name*(this: StepBasic_Contract): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Contract.hxx".}
proc SetName*(this: var StepBasic_Contract; Name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Contract.hxx".}
proc Purpose*(this: StepBasic_Contract): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepBasic_Contract.hxx".}
proc SetPurpose*(this: var StepBasic_Contract;
                Purpose: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_Contract.hxx".}
proc Kind*(this: StepBasic_Contract): handle[StepBasic_ContractType] {.noSideEffect,
    importcpp: "Kind", header: "StepBasic_Contract.hxx".}
proc SetKind*(this: var StepBasic_Contract; Kind: handle[StepBasic_ContractType]) {.
    importcpp: "SetKind", header: "StepBasic_Contract.hxx".}
type
  StepBasic_Contractbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Contract::get_type_name(@)",
                              header: "StepBasic_Contract.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Contract::get_type_descriptor(@)",
    header: "StepBasic_Contract.hxx".}
proc DynamicType*(this: StepBasic_Contract): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Contract.hxx".}