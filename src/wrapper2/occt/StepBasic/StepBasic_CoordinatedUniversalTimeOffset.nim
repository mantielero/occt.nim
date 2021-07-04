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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  StepBasic_AheadOrBehind, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_CoordinatedUniversalTimeOffset"
discard "forward decl of StepBasic_CoordinatedUniversalTimeOffset"
type
  Handle_StepBasic_CoordinatedUniversalTimeOffset* = handle[
      StepBasic_CoordinatedUniversalTimeOffset]
  StepBasic_CoordinatedUniversalTimeOffset* {.
      importcpp: "StepBasic_CoordinatedUniversalTimeOffset",
      header: "StepBasic_CoordinatedUniversalTimeOffset.hxx", bycopy.} = object of Standard_Transient ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## a
                                                                                               ## CoordinatedUniversalTimeOffset


proc constructStepBasic_CoordinatedUniversalTimeOffset*(): StepBasic_CoordinatedUniversalTimeOffset {.
    constructor, importcpp: "StepBasic_CoordinatedUniversalTimeOffset(@)",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc Init*(this: var StepBasic_CoordinatedUniversalTimeOffset;
          aHourOffset: Standard_Integer; hasAminuteOffset: Standard_Boolean;
          aMinuteOffset: Standard_Integer; aSense: StepBasic_AheadOrBehind) {.
    importcpp: "Init", header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc SetHourOffset*(this: var StepBasic_CoordinatedUniversalTimeOffset;
                   aHourOffset: Standard_Integer) {.importcpp: "SetHourOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc HourOffset*(this: StepBasic_CoordinatedUniversalTimeOffset): Standard_Integer {.
    noSideEffect, importcpp: "HourOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc SetMinuteOffset*(this: var StepBasic_CoordinatedUniversalTimeOffset;
                     aMinuteOffset: Standard_Integer) {.
    importcpp: "SetMinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc UnSetMinuteOffset*(this: var StepBasic_CoordinatedUniversalTimeOffset) {.
    importcpp: "UnSetMinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc MinuteOffset*(this: StepBasic_CoordinatedUniversalTimeOffset): Standard_Integer {.
    noSideEffect, importcpp: "MinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc HasMinuteOffset*(this: StepBasic_CoordinatedUniversalTimeOffset): Standard_Boolean {.
    noSideEffect, importcpp: "HasMinuteOffset",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc SetSense*(this: var StepBasic_CoordinatedUniversalTimeOffset;
              aSense: StepBasic_AheadOrBehind) {.importcpp: "SetSense",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc Sense*(this: StepBasic_CoordinatedUniversalTimeOffset): StepBasic_AheadOrBehind {.
    noSideEffect, importcpp: "Sense",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
type
  StepBasic_CoordinatedUniversalTimeOffsetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_CoordinatedUniversalTimeOffset::get_type_name(@)", header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_CoordinatedUniversalTimeOffset::get_type_descriptor(@)",
    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}
proc DynamicType*(this: StepBasic_CoordinatedUniversalTimeOffset): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_CoordinatedUniversalTimeOffset.hxx".}