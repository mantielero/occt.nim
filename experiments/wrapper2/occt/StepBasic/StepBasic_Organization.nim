##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_Organization"
type
  Handle_StepBasic_Organization* = handle[StepBasic_Organization]
  StepBasic_Organization* {.importcpp: "StepBasic_Organization",
                           header: "StepBasic_Organization.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## Organization


proc constructStepBasic_Organization*(): StepBasic_Organization {.constructor,
    importcpp: "StepBasic_Organization(@)", header: "StepBasic_Organization.hxx".}
proc Init*(this: var StepBasic_Organization; hasAid: Standard_Boolean;
          aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_Organization.hxx".}
proc SetId*(this: var StepBasic_Organization; aId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Organization.hxx".}
proc UnSetId*(this: var StepBasic_Organization) {.importcpp: "UnSetId",
    header: "StepBasic_Organization.hxx".}
proc Id*(this: StepBasic_Organization): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_Organization.hxx".}
proc HasId*(this: StepBasic_Organization): Standard_Boolean {.noSideEffect,
    importcpp: "HasId", header: "StepBasic_Organization.hxx".}
proc SetName*(this: var StepBasic_Organization;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_Organization.hxx".}
proc Name*(this: StepBasic_Organization): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Organization.hxx".}
proc SetDescription*(this: var StepBasic_Organization;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Organization.hxx".}
proc Description*(this: StepBasic_Organization): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Organization.hxx".}
type
  StepBasic_Organizationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Organization::get_type_name(@)",
                              header: "StepBasic_Organization.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Organization::get_type_descriptor(@)",
    header: "StepBasic_Organization.hxx".}
proc DynamicType*(this: StepBasic_Organization): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_Organization.hxx".}