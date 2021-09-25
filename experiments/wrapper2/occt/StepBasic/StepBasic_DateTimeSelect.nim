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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_LocalTime"
discard "forward decl of StepBasic_DateAndTime"
type
  StepBasicDateTimeSelect* {.importcpp: "StepBasic_DateTimeSelect",
                            header: "StepBasic_DateTimeSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## DateTimeSelect
                                                                                                     ## SelectType


proc constructStepBasicDateTimeSelect*(): StepBasicDateTimeSelect {.constructor,
    importcpp: "StepBasic_DateTimeSelect(@)",
    header: "StepBasic_DateTimeSelect.hxx".}
proc caseNum*(this: StepBasicDateTimeSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_DateTimeSelect.hxx".}
proc date*(this: StepBasicDateTimeSelect): Handle[StepBasicDate] {.noSideEffect,
    importcpp: "Date", header: "StepBasic_DateTimeSelect.hxx".}
proc localTime*(this: StepBasicDateTimeSelect): Handle[StepBasicLocalTime] {.
    noSideEffect, importcpp: "LocalTime", header: "StepBasic_DateTimeSelect.hxx".}
proc dateAndTime*(this: StepBasicDateTimeSelect): Handle[StepBasicDateAndTime] {.
    noSideEffect, importcpp: "DateAndTime", header: "StepBasic_DateTimeSelect.hxx".}
