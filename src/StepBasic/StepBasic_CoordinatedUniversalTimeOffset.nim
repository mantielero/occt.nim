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

discard "forward decl of StepBasic_CoordinatedUniversalTimeOffset"
discard "forward decl of StepBasic_CoordinatedUniversalTimeOffset"
type
  HandleC1C1* = Handle[StepBasicCoordinatedUniversalTimeOffset]
  StepBasicCoordinatedUniversalTimeOffset* {.
      importcpp: "StepBasic_CoordinatedUniversalTimeOffset",
      header: "StepBasic_CoordinatedUniversalTimeOffset.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## CoordinatedUniversalTimeOffset


proc constructStepBasicCoordinatedUniversalTimeOffset*(): StepBasicCoordinatedUniversalTimeOffset {.
    constructor, importcpp: "StepBasic_CoordinatedUniversalTimeOffset(@)",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc init*(this: var StepBasicCoordinatedUniversalTimeOffset; aHourOffset: cint;
          hasAminuteOffset: bool; aMinuteOffset: cint;
          aSense: StepBasicAheadOrBehind) {.importcpp: "Init",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc setHourOffset*(this: var StepBasicCoordinatedUniversalTimeOffset;
                   aHourOffset: cint) {.importcpp: "SetHourOffset", header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc hourOffset*(this: StepBasicCoordinatedUniversalTimeOffset): cint {.
    noSideEffect, importcpp: "HourOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc setMinuteOffset*(this: var StepBasicCoordinatedUniversalTimeOffset;
                     aMinuteOffset: cint) {.importcpp: "SetMinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc unSetMinuteOffset*(this: var StepBasicCoordinatedUniversalTimeOffset) {.
    importcpp: "UnSetMinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc minuteOffset*(this: StepBasicCoordinatedUniversalTimeOffset): cint {.
    noSideEffect, importcpp: "MinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc hasMinuteOffset*(this: StepBasicCoordinatedUniversalTimeOffset): bool {.
    noSideEffect, importcpp: "HasMinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc setSense*(this: var StepBasicCoordinatedUniversalTimeOffset;
              aSense: StepBasicAheadOrBehind) {.importcpp: "SetSense",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc sense*(this: StepBasicCoordinatedUniversalTimeOffset): StepBasicAheadOrBehind {.
    noSideEffect, importcpp: "Sense",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
type
  StepBasicCoordinatedUniversalTimeOffsetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_CoordinatedUniversalTimeOffset::get_type_name(@)", header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_CoordinatedUniversalTimeOffset::get_type_descriptor(@)",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc dynamicType*(this: StepBasicCoordinatedUniversalTimeOffset): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}

























