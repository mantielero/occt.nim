##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepBasic_GeneralProperty"
type
  Handle_StepBasic_GeneralProperty* = handle[StepBasic_GeneralProperty]

## ! Representation of STEP entity GeneralProperty

type
  StepBasic_GeneralProperty* {.importcpp: "StepBasic_GeneralProperty",
                              header: "StepBasic_GeneralProperty.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepBasic_GeneralProperty*(): StepBasic_GeneralProperty {.
    constructor, importcpp: "StepBasic_GeneralProperty(@)",
    header: "StepBasic_GeneralProperty.hxx".}
proc Init*(this: var StepBasic_GeneralProperty;
          aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_GeneralProperty.hxx".}
proc Id*(this: StepBasic_GeneralProperty): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_GeneralProperty.hxx".}
proc SetId*(this: var StepBasic_GeneralProperty;
           Id: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_GeneralProperty.hxx".}
proc Name*(this: StepBasic_GeneralProperty): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_GeneralProperty.hxx".}
proc SetName*(this: var StepBasic_GeneralProperty;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_GeneralProperty.hxx".}
proc Description*(this: StepBasic_GeneralProperty): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_GeneralProperty.hxx".}
proc SetDescription*(this: var StepBasic_GeneralProperty;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_GeneralProperty.hxx".}
proc HasDescription*(this: StepBasic_GeneralProperty): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_GeneralProperty.hxx".}
type
  StepBasic_GeneralPropertybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_GeneralProperty::get_type_name(@)",
                              header: "StepBasic_GeneralProperty.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_GeneralProperty::get_type_descriptor(@)",
    header: "StepBasic_GeneralProperty.hxx".}
proc DynamicType*(this: StepBasic_GeneralProperty): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_GeneralProperty.hxx".}