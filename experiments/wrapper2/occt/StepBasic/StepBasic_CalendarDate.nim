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

discard "forward decl of StepBasic_CalendarDate"
discard "forward decl of StepBasic_CalendarDate"
type
  HandleStepBasicCalendarDate* = Handle[StepBasicCalendarDate]
  StepBasicCalendarDate* {.importcpp: "StepBasic_CalendarDate",
                          header: "StepBasic_CalendarDate.hxx", bycopy.} = object of StepBasicDate ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## CalendarDate


proc constructStepBasicCalendarDate*(): StepBasicCalendarDate {.constructor,
    importcpp: "StepBasic_CalendarDate(@)", header: "StepBasic_CalendarDate.hxx".}
proc init*(this: var StepBasicCalendarDate; aYearComponent: int; aDayComponent: int;
          aMonthComponent: int) {.importcpp: "Init",
                                header: "StepBasic_CalendarDate.hxx".}
proc setDayComponent*(this: var StepBasicCalendarDate; aDayComponent: int) {.
    importcpp: "SetDayComponent", header: "StepBasic_CalendarDate.hxx".}
proc dayComponent*(this: StepBasicCalendarDate): int {.noSideEffect,
    importcpp: "DayComponent", header: "StepBasic_CalendarDate.hxx".}
proc setMonthComponent*(this: var StepBasicCalendarDate; aMonthComponent: int) {.
    importcpp: "SetMonthComponent", header: "StepBasic_CalendarDate.hxx".}
proc monthComponent*(this: StepBasicCalendarDate): int {.noSideEffect,
    importcpp: "MonthComponent", header: "StepBasic_CalendarDate.hxx".}
type
  StepBasicCalendarDatebaseType* = StepBasicDate

proc getTypeName*(): cstring {.importcpp: "StepBasic_CalendarDate::get_type_name(@)",
                            header: "StepBasic_CalendarDate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_CalendarDate::get_type_descriptor(@)",
    header: "StepBasic_CalendarDate.hxx".}
proc dynamicType*(this: StepBasicCalendarDate): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_CalendarDate.hxx".}
