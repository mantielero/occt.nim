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

discard "forward decl of StepBasic_OrdinalDate"
discard "forward decl of StepBasic_OrdinalDate"
type
  HandleC1C1* = Handle[StepBasicOrdinalDate]
  StepBasicOrdinalDate* {.importcpp: "StepBasic_OrdinalDate",
                         header: "StepBasic_OrdinalDate.hxx", bycopy.} = object of StepBasicDate ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## OrdinalDate


proc constructStepBasicOrdinalDate*(): StepBasicOrdinalDate {.constructor,
    importcpp: "StepBasic_OrdinalDate(@)", header: "StepBasic_OrdinalDate.hxx".}
proc init*(this: var StepBasicOrdinalDate; aYearComponent: cint; aDayComponent: cint) {.
    importcpp: "Init", header: "StepBasic_OrdinalDate.hxx".}
proc setDayComponent*(this: var StepBasicOrdinalDate; aDayComponent: cint) {.
    importcpp: "SetDayComponent", header: "StepBasic_OrdinalDate.hxx".}
proc dayComponent*(this: StepBasicOrdinalDate): cint {.noSideEffect,
    importcpp: "DayComponent", header: "StepBasic_OrdinalDate.hxx".}
type
  StepBasicOrdinalDatebaseType* = StepBasicDate

proc getTypeName*(): cstring {.importcpp: "StepBasic_OrdinalDate::get_type_name(@)",
                            header: "StepBasic_OrdinalDate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_OrdinalDate::get_type_descriptor(@)",
    header: "StepBasic_OrdinalDate.hxx".}
proc dynamicType*(this: StepBasicOrdinalDate): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_OrdinalDate.hxx".}

























