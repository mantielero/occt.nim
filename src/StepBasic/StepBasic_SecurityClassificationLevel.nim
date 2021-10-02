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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_SecurityClassificationLevel"
discard "forward decl of StepBasic_SecurityClassificationLevel"
type
  HandleC1C1* = Handle[StepBasicSecurityClassificationLevel]
  StepBasicSecurityClassificationLevel* {.
      importcpp: "StepBasic_SecurityClassificationLevel",
      header: "StepBasic_SecurityClassificationLevel.hxx", bycopy.} = object of StandardTransient ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## SecurityClassificationLevel


proc constructStepBasicSecurityClassificationLevel*(): StepBasicSecurityClassificationLevel {.
    constructor, importcpp: "StepBasic_SecurityClassificationLevel(@)",
    header: "StepBasic_SecurityClassificationLevel.hxx".}
proc init*(this: var StepBasicSecurityClassificationLevel;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_SecurityClassificationLevel.hxx".}
proc setName*(this: var StepBasicSecurityClassificationLevel;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_SecurityClassificationLevel.hxx".}
proc name*(this: StepBasicSecurityClassificationLevel): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_SecurityClassificationLevel.hxx".}
type
  StepBasicSecurityClassificationLevelbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_SecurityClassificationLevel::get_type_name(@)",
                            header: "StepBasic_SecurityClassificationLevel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SecurityClassificationLevel::get_type_descriptor(@)",
    header: "StepBasic_SecurityClassificationLevel.hxx".}
proc dynamicType*(this: StepBasicSecurityClassificationLevel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SecurityClassificationLevel.hxx".}