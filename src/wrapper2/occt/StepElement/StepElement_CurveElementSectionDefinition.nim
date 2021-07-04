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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_CurveElementSectionDefinition"
discard "forward decl of StepElement_CurveElementSectionDefinition"
type
  Handle_StepElement_CurveElementSectionDefinition* = handle[
      StepElement_CurveElementSectionDefinition]

## ! Representation of STEP entity CurveElementSectionDefinition

type
  StepElement_CurveElementSectionDefinition* {.
      importcpp: "StepElement_CurveElementSectionDefinition",
      header: "StepElement_CurveElementSectionDefinition.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepElement_CurveElementSectionDefinition*(): StepElement_CurveElementSectionDefinition {.
    constructor, importcpp: "StepElement_CurveElementSectionDefinition(@)",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc Init*(this: var StepElement_CurveElementSectionDefinition;
          aDescription: handle[TCollection_HAsciiString];
          aSectionAngle: Standard_Real) {.importcpp: "Init", header: "StepElement_CurveElementSectionDefinition.hxx".}
proc Description*(this: StepElement_CurveElementSectionDefinition): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepElement_CurveElementSectionDefinition.hxx".}
proc SetDescription*(this: var StepElement_CurveElementSectionDefinition;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc SectionAngle*(this: StepElement_CurveElementSectionDefinition): Standard_Real {.
    noSideEffect, importcpp: "SectionAngle",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc SetSectionAngle*(this: var StepElement_CurveElementSectionDefinition;
                     SectionAngle: Standard_Real) {.importcpp: "SetSectionAngle",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
type
  StepElement_CurveElementSectionDefinitionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_CurveElementSectionDefinition::get_type_name(@)", header: "StepElement_CurveElementSectionDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_CurveElementSectionDefinition::get_type_descriptor(@)",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc DynamicType*(this: StepElement_CurveElementSectionDefinition): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_CurveElementSectionDefinition.hxx".}