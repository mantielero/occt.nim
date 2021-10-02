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

discard "forward decl of StepBasic_WeekOfYearAndDayDate"
discard "forward decl of StepBasic_WeekOfYearAndDayDate"
type
  HandleC1C1* = Handle[StepBasicWeekOfYearAndDayDate]
  StepBasicWeekOfYearAndDayDate* {.importcpp: "StepBasic_WeekOfYearAndDayDate",
                                  header: "StepBasic_WeekOfYearAndDayDate.hxx",
                                  bycopy.} = object of StepBasicDate ## ! Returns a
                                                                ## WeekOfYearAndDayDate


proc constructStepBasicWeekOfYearAndDayDate*(): StepBasicWeekOfYearAndDayDate {.
    constructor, importcpp: "StepBasic_WeekOfYearAndDayDate(@)",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc init*(this: var StepBasicWeekOfYearAndDayDate; aYearComponent: int;
          aWeekComponent: int; hasAdayComponent: StandardBoolean; aDayComponent: int) {.
    importcpp: "Init", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc setWeekComponent*(this: var StepBasicWeekOfYearAndDayDate; aWeekComponent: int) {.
    importcpp: "SetWeekComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc weekComponent*(this: StepBasicWeekOfYearAndDayDate): int {.noSideEffect,
    importcpp: "WeekComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc setDayComponent*(this: var StepBasicWeekOfYearAndDayDate; aDayComponent: int) {.
    importcpp: "SetDayComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc unSetDayComponent*(this: var StepBasicWeekOfYearAndDayDate) {.
    importcpp: "UnSetDayComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc dayComponent*(this: StepBasicWeekOfYearAndDayDate): int {.noSideEffect,
    importcpp: "DayComponent", header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc hasDayComponent*(this: StepBasicWeekOfYearAndDayDate): StandardBoolean {.
    noSideEffect, importcpp: "HasDayComponent",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
type
  StepBasicWeekOfYearAndDayDatebaseType* = StepBasicDate

proc getTypeName*(): cstring {.importcpp: "StepBasic_WeekOfYearAndDayDate::get_type_name(@)",
                            header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_WeekOfYearAndDayDate::get_type_descriptor(@)",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}
proc dynamicType*(this: StepBasicWeekOfYearAndDayDate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_WeekOfYearAndDayDate.hxx".}