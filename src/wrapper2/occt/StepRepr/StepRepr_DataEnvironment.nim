##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  StepRepr_HArray1OfPropertyDefinitionRepresentation,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_DataEnvironment"
discard "forward decl of StepRepr_DataEnvironment"
type
  Handle_StepRepr_DataEnvironment* = handle[StepRepr_DataEnvironment]

## ! Representation of STEP entity DataEnvironment

type
  StepRepr_DataEnvironment* {.importcpp: "StepRepr_DataEnvironment",
                             header: "StepRepr_DataEnvironment.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepRepr_DataEnvironment*(): StepRepr_DataEnvironment {.constructor,
    importcpp: "StepRepr_DataEnvironment(@)",
    header: "StepRepr_DataEnvironment.hxx".}
proc Init*(this: var StepRepr_DataEnvironment;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aElements: handle[StepRepr_HArray1OfPropertyDefinitionRepresentation]) {.
    importcpp: "Init", header: "StepRepr_DataEnvironment.hxx".}
proc Name*(this: StepRepr_DataEnvironment): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_DataEnvironment.hxx".}
proc SetName*(this: var StepRepr_DataEnvironment;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_DataEnvironment.hxx".}
proc Description*(this: StepRepr_DataEnvironment): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepRepr_DataEnvironment.hxx".}
proc SetDescription*(this: var StepRepr_DataEnvironment;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_DataEnvironment.hxx".}
proc Elements*(this: StepRepr_DataEnvironment): handle[
    StepRepr_HArray1OfPropertyDefinitionRepresentation] {.noSideEffect,
    importcpp: "Elements", header: "StepRepr_DataEnvironment.hxx".}
proc SetElements*(this: var StepRepr_DataEnvironment; Elements: handle[
    StepRepr_HArray1OfPropertyDefinitionRepresentation]) {.
    importcpp: "SetElements", header: "StepRepr_DataEnvironment.hxx".}
type
  StepRepr_DataEnvironmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_DataEnvironment::get_type_name(@)",
                              header: "StepRepr_DataEnvironment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_DataEnvironment::get_type_descriptor(@)",
    header: "StepRepr_DataEnvironment.hxx".}
proc DynamicType*(this: StepRepr_DataEnvironment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_DataEnvironment.hxx".}