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
  ../Standard/Standard_Boolean, StepBasic_Date

discard "forward decl of StepBasic_WeekOfYearAndDayDate"
discard "forward decl of StepBasic_WeekOfYearAndDayDate"
type
  Handle_StepBasic_WeekOfYearAndDayDate* = handle[StepBasic_WeekOfYearAndDayDate]
  StepBasic_WeekOfYearAndDayDate* {.importcpp: "StepBasic_WeekOfYearAndDayDate", header: "StepBasic_WeekOfYearAndDayDate.hxx",
                                   bycopy.} = object of StepBasic_Date ## ! Returns a
                                                                  ## WeekOfYearAndDayDate


proc constructStepBasic_WeekOfYearAndDayDate*(): StepBasic_WeekOfYearAndDayDate {.
    constructor, importcpp: "StepBasic_WeekOfYearAndDayDate(@)",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc Init*(this: var StepBasic_WeekOfYearAndDayDate;
          aYearComponent: Standard_Integer; aWeekComponent: Standard_Integer;
          hasAdayComponent: Standard_Boolean; aDayComponent: Standard_Integer) {.
    importcpp: "Init", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc SetWeekComponent*(this: var StepBasic_WeekOfYearAndDayDate;
                      aWeekComponent: Standard_Integer) {.
    importcpp: "SetWeekComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc WeekComponent*(this: StepBasic_WeekOfYearAndDayDate): Standard_Integer {.
    noSideEffect, importcpp: "WeekComponent",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc SetDayComponent*(this: var StepBasic_WeekOfYearAndDayDate;
                     aDayComponent: Standard_Integer) {.
    importcpp: "SetDayComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc UnSetDayComponent*(this: var StepBasic_WeekOfYearAndDayDate) {.
    importcpp: "UnSetDayComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc DayComponent*(this: StepBasic_WeekOfYearAndDayDate): Standard_Integer {.
    noSideEffect, importcpp: "DayComponent",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc HasDayComponent*(this: StepBasic_WeekOfYearAndDayDate): Standard_Boolean {.
    noSideEffect, importcpp: "HasDayComponent",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
type
  StepBasic_WeekOfYearAndDayDatebase_type* = StepBasic_Date

proc get_type_name*(): cstring {.importcpp: "StepBasic_WeekOfYearAndDayDate::get_type_name(@)",
                              header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_WeekOfYearAndDayDate::get_type_descriptor(@)",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc DynamicType*(this: StepBasic_WeekOfYearAndDayDate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}