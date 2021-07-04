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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_LocalTime"
discard "forward decl of StepBasic_DateAndTime"
type
  StepBasic_DateTimeSelect* {.importcpp: "StepBasic_DateTimeSelect",
                             header: "StepBasic_DateTimeSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## DateTimeSelect
                                                                                                       ## SelectType


proc constructStepBasic_DateTimeSelect*(): StepBasic_DateTimeSelect {.constructor,
    importcpp: "StepBasic_DateTimeSelect(@)",
    header: "StepBasic_DateTimeSelect.hxx".}
proc CaseNum*(this: StepBasic_DateTimeSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_DateTimeSelect.hxx".}
proc Date*(this: StepBasic_DateTimeSelect): handle[StepBasic_Date] {.noSideEffect,
    importcpp: "Date", header: "StepBasic_DateTimeSelect.hxx".}
proc LocalTime*(this: StepBasic_DateTimeSelect): handle[StepBasic_LocalTime] {.
    noSideEffect, importcpp: "LocalTime", header: "StepBasic_DateTimeSelect.hxx".}
proc DateAndTime*(this: StepBasic_DateTimeSelect): handle[StepBasic_DateAndTime] {.
    noSideEffect, importcpp: "DateAndTime", header: "StepBasic_DateTimeSelect.hxx".}