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

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_LocalTime"
discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateAndTime"
type
  HandleStepBasicDateAndTime* = Handle[StepBasicDateAndTime]
  StepBasicDateAndTime* {.importcpp: "StepBasic_DateAndTime",
                         header: "StepBasic_DateAndTime.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## DateAndTime


proc constructStepBasicDateAndTime*(): StepBasicDateAndTime {.constructor,
    importcpp: "StepBasic_DateAndTime(@)", header: "StepBasic_DateAndTime.hxx".}
proc init*(this: var StepBasicDateAndTime; aDateComponent: Handle[StepBasicDate];
          aTimeComponent: Handle[StepBasicLocalTime]) {.importcpp: "Init",
    header: "StepBasic_DateAndTime.hxx".}
proc setDateComponent*(this: var StepBasicDateAndTime;
                      aDateComponent: Handle[StepBasicDate]) {.
    importcpp: "SetDateComponent", header: "StepBasic_DateAndTime.hxx".}
proc dateComponent*(this: StepBasicDateAndTime): Handle[StepBasicDate] {.
    noSideEffect, importcpp: "DateComponent", header: "StepBasic_DateAndTime.hxx".}
proc setTimeComponent*(this: var StepBasicDateAndTime;
                      aTimeComponent: Handle[StepBasicLocalTime]) {.
    importcpp: "SetTimeComponent", header: "StepBasic_DateAndTime.hxx".}
proc timeComponent*(this: StepBasicDateAndTime): Handle[StepBasicLocalTime] {.
    noSideEffect, importcpp: "TimeComponent", header: "StepBasic_DateAndTime.hxx".}
type
  StepBasicDateAndTimebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DateAndTime::get_type_name(@)",
                            header: "StepBasic_DateAndTime.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DateAndTime::get_type_descriptor(@)",
    header: "StepBasic_DateAndTime.hxx".}
proc dynamicType*(this: StepBasicDateAndTime): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_DateAndTime.hxx".}
