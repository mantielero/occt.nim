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

discard "forward decl of StepBasic_OrdinalDate"
discard "forward decl of StepBasic_OrdinalDate"
type
  Handle_StepBasic_OrdinalDate* = handle[StepBasic_OrdinalDate]
  StepBasic_OrdinalDate* {.importcpp: "StepBasic_OrdinalDate",
                          header: "StepBasic_OrdinalDate.hxx", bycopy.} = object of StepBasic_Date ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## OrdinalDate


proc constructStepBasic_OrdinalDate*(): StepBasic_OrdinalDate {.constructor,
    importcpp: "StepBasic_OrdinalDate(@)", header: "StepBasic_OrdinalDate.hxx".}
proc Init*(this: var StepBasic_OrdinalDate; aYearComponent: Standard_Integer;
          aDayComponent: Standard_Integer) {.importcpp: "Init",
    header: "StepBasic_OrdinalDate.hxx".}
proc SetDayComponent*(this: var StepBasic_OrdinalDate;
                     aDayComponent: Standard_Integer) {.
    importcpp: "SetDayComponent", header: "StepBasic_OrdinalDate.hxx".}
proc DayComponent*(this: StepBasic_OrdinalDate): Standard_Integer {.noSideEffect,
    importcpp: "DayComponent", header: "StepBasic_OrdinalDate.hxx".}
type
  StepBasic_OrdinalDatebase_type* = StepBasic_Date

proc get_type_name*(): cstring {.importcpp: "StepBasic_OrdinalDate::get_type_name(@)",
                              header: "StepBasic_OrdinalDate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_OrdinalDate::get_type_descriptor(@)",
    header: "StepBasic_OrdinalDate.hxx".}
proc DynamicType*(this: StepBasic_OrdinalDate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_OrdinalDate.hxx".}