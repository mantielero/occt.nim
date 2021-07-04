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
  StepBasic_Date

discard "forward decl of StepBasic_CalendarDate"
discard "forward decl of StepBasic_CalendarDate"
type
  Handle_StepBasic_CalendarDate* = handle[StepBasic_CalendarDate]
  StepBasic_CalendarDate* {.importcpp: "StepBasic_CalendarDate",
                           header: "StepBasic_CalendarDate.hxx", bycopy.} = object of StepBasic_Date ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## CalendarDate


proc constructStepBasic_CalendarDate*(): StepBasic_CalendarDate {.constructor,
    importcpp: "StepBasic_CalendarDate(@)", header: "StepBasic_CalendarDate.hxx".}
proc Init*(this: var StepBasic_CalendarDate; aYearComponent: Standard_Integer;
          aDayComponent: Standard_Integer; aMonthComponent: Standard_Integer) {.
    importcpp: "Init", header: "StepBasic_CalendarDate.hxx".}
proc SetDayComponent*(this: var StepBasic_CalendarDate;
                     aDayComponent: Standard_Integer) {.
    importcpp: "SetDayComponent", header: "StepBasic_CalendarDate.hxx".}
proc DayComponent*(this: StepBasic_CalendarDate): Standard_Integer {.noSideEffect,
    importcpp: "DayComponent", header: "StepBasic_CalendarDate.hxx".}
proc SetMonthComponent*(this: var StepBasic_CalendarDate;
                       aMonthComponent: Standard_Integer) {.
    importcpp: "SetMonthComponent", header: "StepBasic_CalendarDate.hxx".}
proc MonthComponent*(this: StepBasic_CalendarDate): Standard_Integer {.noSideEffect,
    importcpp: "MonthComponent", header: "StepBasic_CalendarDate.hxx".}
type
  StepBasic_CalendarDatebase_type* = StepBasic_Date

proc get_type_name*(): cstring {.importcpp: "StepBasic_CalendarDate::get_type_name(@)",
                              header: "StepBasic_CalendarDate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_CalendarDate::get_type_descriptor(@)",
    header: "StepBasic_CalendarDate.hxx".}
proc DynamicType*(this: StepBasic_CalendarDate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_CalendarDate.hxx".}