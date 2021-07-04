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
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_CoordinatedUniversalTimeOffset"
discard "forward decl of StepBasic_LocalTime"
discard "forward decl of StepBasic_LocalTime"
type
  Handle_StepBasic_LocalTime* = handle[StepBasic_LocalTime]
  StepBasic_LocalTime* {.importcpp: "StepBasic_LocalTime",
                        header: "StepBasic_LocalTime.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## LocalTime


proc constructStepBasic_LocalTime*(): StepBasic_LocalTime {.constructor,
    importcpp: "StepBasic_LocalTime(@)", header: "StepBasic_LocalTime.hxx".}
proc Init*(this: var StepBasic_LocalTime; aHourComponent: Standard_Integer;
          hasAminuteComponent: Standard_Boolean;
          aMinuteComponent: Standard_Integer;
          hasAsecondComponent: Standard_Boolean; aSecondComponent: Standard_Real;
          aZone: handle[StepBasic_CoordinatedUniversalTimeOffset]) {.
    importcpp: "Init", header: "StepBasic_LocalTime.hxx".}
proc SetHourComponent*(this: var StepBasic_LocalTime;
                      aHourComponent: Standard_Integer) {.
    importcpp: "SetHourComponent", header: "StepBasic_LocalTime.hxx".}
proc HourComponent*(this: StepBasic_LocalTime): Standard_Integer {.noSideEffect,
    importcpp: "HourComponent", header: "StepBasic_LocalTime.hxx".}
proc SetMinuteComponent*(this: var StepBasic_LocalTime;
                        aMinuteComponent: Standard_Integer) {.
    importcpp: "SetMinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc UnSetMinuteComponent*(this: var StepBasic_LocalTime) {.
    importcpp: "UnSetMinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc MinuteComponent*(this: StepBasic_LocalTime): Standard_Integer {.noSideEffect,
    importcpp: "MinuteComponent", header: "StepBasic_LocalTime.hxx".}
proc HasMinuteComponent*(this: StepBasic_LocalTime): Standard_Boolean {.
    noSideEffect, importcpp: "HasMinuteComponent",
    header: "StepBasic_LocalTime.hxx".}
proc SetSecondComponent*(this: var StepBasic_LocalTime;
                        aSecondComponent: Standard_Real) {.
    importcpp: "SetSecondComponent", header: "StepBasic_LocalTime.hxx".}
proc UnSetSecondComponent*(this: var StepBasic_LocalTime) {.
    importcpp: "UnSetSecondComponent", header: "StepBasic_LocalTime.hxx".}
proc SecondComponent*(this: StepBasic_LocalTime): Standard_Real {.noSideEffect,
    importcpp: "SecondComponent", header: "StepBasic_LocalTime.hxx".}
proc HasSecondComponent*(this: StepBasic_LocalTime): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondComponent",
    header: "StepBasic_LocalTime.hxx".}
proc SetZone*(this: var StepBasic_LocalTime;
             aZone: handle[StepBasic_CoordinatedUniversalTimeOffset]) {.
    importcpp: "SetZone", header: "StepBasic_LocalTime.hxx".}
proc Zone*(this: StepBasic_LocalTime): handle[
    StepBasic_CoordinatedUniversalTimeOffset] {.noSideEffect, importcpp: "Zone",
    header: "StepBasic_LocalTime.hxx".}
type
  StepBasic_LocalTimebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_LocalTime::get_type_name(@)",
                              header: "StepBasic_LocalTime.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_LocalTime::get_type_descriptor(@)",
    header: "StepBasic_LocalTime.hxx".}
proc DynamicType*(this: StepBasic_LocalTime): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_LocalTime.hxx".}