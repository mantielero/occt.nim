##  Created on: 2001-04-24
##  Created by: Atelier IED
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_LimitsAndFits"
discard "forward decl of StepShape_LimitsAndFits"
type
  HandleStepShapeLimitsAndFits* = Handle[StepShapeLimitsAndFits]

## ! Added for Dimensional Tolerances

type
  StepShapeLimitsAndFits* {.importcpp: "StepShape_LimitsAndFits",
                           header: "StepShape_LimitsAndFits.hxx", bycopy.} = object of StandardTransient


proc constructStepShapeLimitsAndFits*(): StepShapeLimitsAndFits {.constructor,
    importcpp: "StepShape_LimitsAndFits(@)", header: "StepShape_LimitsAndFits.hxx".}
proc init*(this: var StepShapeLimitsAndFits;
          formVariance: Handle[TCollectionHAsciiString];
          zoneVariance: Handle[TCollectionHAsciiString];
          grade: Handle[TCollectionHAsciiString];
          source: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepShape_LimitsAndFits.hxx".}
proc formVariance*(this: StepShapeLimitsAndFits): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FormVariance", header: "StepShape_LimitsAndFits.hxx".}
proc setFormVariance*(this: var StepShapeLimitsAndFits;
                     formVariance: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetFormVariance", header: "StepShape_LimitsAndFits.hxx".}
proc zoneVariance*(this: StepShapeLimitsAndFits): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ZoneVariance", header: "StepShape_LimitsAndFits.hxx".}
proc setZoneVariance*(this: var StepShapeLimitsAndFits;
                     zoneVariance: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetZoneVariance", header: "StepShape_LimitsAndFits.hxx".}
proc grade*(this: StepShapeLimitsAndFits): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Grade", header: "StepShape_LimitsAndFits.hxx".}
proc setGrade*(this: var StepShapeLimitsAndFits;
              grade: Handle[TCollectionHAsciiString]) {.importcpp: "SetGrade",
    header: "StepShape_LimitsAndFits.hxx".}
proc source*(this: StepShapeLimitsAndFits): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Source", header: "StepShape_LimitsAndFits.hxx".}
proc setSource*(this: var StepShapeLimitsAndFits;
               source: Handle[TCollectionHAsciiString]) {.importcpp: "SetSource",
    header: "StepShape_LimitsAndFits.hxx".}
type
  StepShapeLimitsAndFitsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_LimitsAndFits::get_type_name(@)",
                            header: "StepShape_LimitsAndFits.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_LimitsAndFits::get_type_descriptor(@)",
    header: "StepShape_LimitsAndFits.hxx".}
proc dynamicType*(this: StepShapeLimitsAndFits): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_LimitsAndFits.hxx".}
