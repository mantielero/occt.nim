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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_CurveElementSectionDefinition"
discard "forward decl of StepElement_CurveElementSectionDefinition"
type
  HandleC1C1* = Handle[StepElementCurveElementSectionDefinition]

## ! Representation of STEP entity CurveElementSectionDefinition

type
  StepElementCurveElementSectionDefinition* {.
      importcpp: "StepElement_CurveElementSectionDefinition",
      header: "StepElement_CurveElementSectionDefinition.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepElementCurveElementSectionDefinition*(): StepElementCurveElementSectionDefinition {.
    constructor, importcpp: "StepElement_CurveElementSectionDefinition(@)",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc init*(this: var StepElementCurveElementSectionDefinition;
          aDescription: Handle[TCollectionHAsciiString];
          aSectionAngle: StandardReal) {.importcpp: "Init", header: "StepElement_CurveElementSectionDefinition.hxx".}
proc description*(this: StepElementCurveElementSectionDefinition): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepElement_CurveElementSectionDefinition.hxx".}
proc setDescription*(this: var StepElementCurveElementSectionDefinition;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc sectionAngle*(this: StepElementCurveElementSectionDefinition): StandardReal {.
    noSideEffect, importcpp: "SectionAngle",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc setSectionAngle*(this: var StepElementCurveElementSectionDefinition;
                     sectionAngle: StandardReal) {.importcpp: "SetSectionAngle",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
type
  StepElementCurveElementSectionDefinitionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_CurveElementSectionDefinition::get_type_name(@)", header: "StepElement_CurveElementSectionDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_CurveElementSectionDefinition::get_type_descriptor(@)",
    header: "StepElement_CurveElementSectionDefinition.hxx".}
proc dynamicType*(this: StepElementCurveElementSectionDefinition): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_CurveElementSectionDefinition.hxx".}