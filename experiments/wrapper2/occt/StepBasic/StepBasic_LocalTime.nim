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
discard "forward decl of StepBasic_LocalTime"
discard "forward decl of StepBasic_LocalTime"
type
  HandleC1C1* = Handle[StepBasicLocalTime]
  StepBasicLocalTime* {.importcpp: "StepBasic_LocalTime",
                       header: "StepBasic_LocalTime.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## LocalTime


proc constructStepBasicLocalTime*(): StepBasicLocalTime {.constructor,
    importcpp: "StepBasic_LocalTime(@)", header: "StepBasic_LocalTime.hxx".}
proc init*(this: var StepBasicLocalTime; aHourComponent: cint;
          hasAminuteComponent: bool; aMinuteComponent: cint;
          hasAsecondComponent: bool; aSecondComponent: cfloat;
          aZone: Handle[StepBasicCoordinatedUniversalTimeOffset]) {.
    importcpp: "Init", header: "StepBasic_LocalTime.hxx".}
proc setHourComponent*(this: var StepBasicLocalTime; aHourComponent: cint) {.
    importcpp: "SetHourComponent", header: "StepBasic_LocalTime.hxx".}
proc hourComponent*(this: StepBasicLocalTime): cint {.noSideEffect,
    importcpp: "HourComponent", header: "StepBasic_LocalTime.hxx".}
proc setMinuteComponent*(this: var StepBasicLocalTime; aMinuteComponent: cint) {.
    importcpp: "SetMinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc unSetMinuteComponent*(this: var StepBasicLocalTime) {.
    importcpp: "UnSetMinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc minuteComponent*(this: StepBasicLocalTime): cint {.noSideEffect,
    importcpp: "MinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc hasMinuteComponent*(this: StepBasicLocalTime): bool {.noSideEffect,
    importcpp: "HasMinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc setSecondComponent*(this: var StepBasicLocalTime; aSecondComponent: cfloat) {.
    importcpp: "SetSecondComponent", header: "StepBasic_LocalTime.hxx".}
proc unSetSecondComponent*(this: var StepBasicLocalTime) {.
    importcpp: "UnSetSecondComponent", header: "StepBasic_LocalTime.hxx".}
proc secondComponent*(this: StepBasicLocalTime): cfloat {.noSideEffect,
    importcpp: "SecondComponent", header: "StepBasic_LocalTime.hxx".}
proc hasSecondComponent*(this: StepBasicLocalTime): bool {.noSideEffect,
    importcpp: "HasSecondComponent", header: "StepBasic_LocalTime.hxx".}
proc setZone*(this: var StepBasicLocalTime;
             aZone: Handle[StepBasicCoordinatedUniversalTimeOffset]) {.
    importcpp: "SetZone", header: "StepBasic_LocalTime.hxx".}
proc zone*(this: StepBasicLocalTime): Handle[
    StepBasicCoordinatedUniversalTimeOffset] {.noSideEffect, importcpp: "Zone",
    header: "StepBasic_LocalTime.hxx".}
type
  StepBasicLocalTimebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_LocalTime::get_type_name(@)",
                            header: "StepBasic_LocalTime.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_LocalTime::get_type_descriptor(@)",
    header: "StepBasic_LocalTime.hxx".}
proc dynamicType*(this: StepBasicLocalTime): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_LocalTime.hxx".}

























