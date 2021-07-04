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
discard "forward decl of StepBasic_ContractType"
type
  Handle_StepBasic_ContractType* = handle[StepBasic_ContractType]

## ! Representation of STEP entity ContractType

type
  StepBasic_ContractType* {.importcpp: "StepBasic_ContractType",
                           header: "StepBasic_ContractType.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepBasic_ContractType*(): StepBasic_ContractType {.constructor,
    importcpp: "StepBasic_ContractType(@)", header: "StepBasic_ContractType.hxx".}
proc Init*(this: var StepBasic_ContractType;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ContractType.hxx".}
proc Description*(this: StepBasic_ContractType): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ContractType.hxx".}
proc SetDescription*(this: var StepBasic_ContractType;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ContractType.hxx".}
type
  StepBasic_ContractTypebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ContractType::get_type_name(@)",
                              header: "StepBasic_ContractType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ContractType::get_type_descriptor(@)",
    header: "StepBasic_ContractType.hxx".}
proc DynamicType*(this: StepBasic_ContractType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ContractType.hxx".}