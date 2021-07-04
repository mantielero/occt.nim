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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_LocalTime"
discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateAndTime"
type
  Handle_StepBasic_DateAndTime* = handle[StepBasic_DateAndTime]
  StepBasic_DateAndTime* {.importcpp: "StepBasic_DateAndTime",
                          header: "StepBasic_DateAndTime.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## DateAndTime


proc constructStepBasic_DateAndTime*(): StepBasic_DateAndTime {.constructor,
    importcpp: "StepBasic_DateAndTime(@)", header: "StepBasic_DateAndTime.hxx".}
proc Init*(this: var StepBasic_DateAndTime; aDateComponent: handle[StepBasic_Date];
          aTimeComponent: handle[StepBasic_LocalTime]) {.importcpp: "Init",
    header: "StepBasic_DateAndTime.hxx".}
proc SetDateComponent*(this: var StepBasic_DateAndTime;
                      aDateComponent: handle[StepBasic_Date]) {.
    importcpp: "SetDateComponent", header: "StepBasic_DateAndTime.hxx".}
proc DateComponent*(this: StepBasic_DateAndTime): handle[StepBasic_Date] {.
    noSideEffect, importcpp: "DateComponent", header: "StepBasic_DateAndTime.hxx".}
proc SetTimeComponent*(this: var StepBasic_DateAndTime;
                      aTimeComponent: handle[StepBasic_LocalTime]) {.
    importcpp: "SetTimeComponent", header: "StepBasic_DateAndTime.hxx".}
proc TimeComponent*(this: StepBasic_DateAndTime): handle[StepBasic_LocalTime] {.
    noSideEffect, importcpp: "TimeComponent", header: "StepBasic_DateAndTime.hxx".}
type
  StepBasic_DateAndTimebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DateAndTime::get_type_name(@)",
                              header: "StepBasic_DateAndTime.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DateAndTime::get_type_descriptor(@)",
    header: "StepBasic_DateAndTime.hxx".}
proc DynamicType*(this: StepBasic_DateAndTime): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DateAndTime.hxx".}