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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ActionMethod"
discard "forward decl of StepBasic_ActionMethod"
type
  Handle_StepBasic_ActionMethod* = handle[StepBasic_ActionMethod]

## ! Representation of STEP entity ActionMethod

type
  StepBasic_ActionMethod* {.importcpp: "StepBasic_ActionMethod",
                           header: "StepBasic_ActionMethod.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepBasic_ActionMethod*(): StepBasic_ActionMethod {.constructor,
    importcpp: "StepBasic_ActionMethod(@)", header: "StepBasic_ActionMethod.hxx".}
proc Init*(this: var StepBasic_ActionMethod;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aConsequence: handle[TCollection_HAsciiString];
          aPurpose: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ActionMethod.hxx".}
proc Name*(this: StepBasic_ActionMethod): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ActionMethod.hxx".}
proc SetName*(this: var StepBasic_ActionMethod;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ActionMethod.hxx".}
proc Description*(this: StepBasic_ActionMethod): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ActionMethod.hxx".}
proc SetDescription*(this: var StepBasic_ActionMethod;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ActionMethod.hxx".}
proc HasDescription*(this: StepBasic_ActionMethod): Standard_Boolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_ActionMethod.hxx".}
proc Consequence*(this: StepBasic_ActionMethod): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Consequence", header: "StepBasic_ActionMethod.hxx".}
proc SetConsequence*(this: var StepBasic_ActionMethod;
                    Consequence: handle[TCollection_HAsciiString]) {.
    importcpp: "SetConsequence", header: "StepBasic_ActionMethod.hxx".}
proc Purpose*(this: StepBasic_ActionMethod): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepBasic_ActionMethod.hxx".}
proc SetPurpose*(this: var StepBasic_ActionMethod;
                Purpose: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_ActionMethod.hxx".}
type
  StepBasic_ActionMethodbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ActionMethod::get_type_name(@)",
                              header: "StepBasic_ActionMethod.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ActionMethod::get_type_descriptor(@)",
    header: "StepBasic_ActionMethod.hxx".}
proc DynamicType*(this: StepBasic_ActionMethod): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ActionMethod.hxx".}